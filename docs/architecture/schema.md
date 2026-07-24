# Data Schema Contract

## Accepted Target

Schema migrations form a monotonic ledger. Startup may apply tested,
non-destructive forward migrations; destructive maintenance is explicit and
backup-gated.

- `users`: stable ID, canonical handle, display name, status, created/updated,
  optional last login.
- `spaces`: stable ID, unique route slug, display name, owner, status, created/
  updated.
- `memberships`: space/user IDs, role, timestamps, unique pair.
- `credentials`: stable ID, user, kind, verifier/hash only, label, lifecycle.
- `sessions`: stable ID, user, opaque-token hash, CSRF verifier, timestamps,
  expiry/revocation, bounded safe metadata.
- `articles`: fields in [product/articles.md](../product/articles.md), including
  source provenance and revision counter.
- `article_revisions`: immutable article/revision values, actor, timestamp, and
  import provenance.
- `redirects`, `imported_assets`, and `audit_events`: finite route continuity,
  immutable media provenance, and security/destructive actions.

Foreign keys and tenant scope are enforced in storage, not inferred by callers.
No table holds a raw reusable credential, session token, CSRF value, or article
body in logs/audit payloads.
