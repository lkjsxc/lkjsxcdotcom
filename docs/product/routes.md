# Route Contract

## Accepted Target

| Method | Route | Behavior |
| --- | --- | --- |
| GET | `/` | bounded/cursor global public feed, deterministic order |
| GET | `/{space}` | public space feed; hidden/non-public is `404` |
| GET | `/{space}/{ref}` | public slug or stable ID within that space only |
| GET | `/healthz` | cheap liveness, exact minimal documented body |
| GET | `/readyz` | minimal readiness result without dependency details |
| GET | `/assets/{immutable}` | first-party versioned immutable asset |
| GET | `/robots.txt`, `/sitemap.xml` | public content only |
| GET/POST | `/setup`, `/login`, `/logout` | setup/login/logout flow |
| GET/POST | `/app/...` | authenticated dashboard, editor, lifecycle actions |

Every state change uses POST plus a session-bound CSRF token. Missing/invalid
principal at an authentication-required entry point is `401`; inaccessible
cross-space content is `404`; known resources with an insufficient known role
may be `403`. Authenticated responses are never public-cacheable.

`space` uses one canonical ASCII lowercase slug validator. Reserved slugs are
`app`, `login`, `logout`, `setup`, `assets`, `healthz`, `readyz`, `api`,
`robots.txt`, and `sitemap.xml`.
