# Security Contract

## Accepted Target

The initial mechanism is candidate A: operator-issued 256-bit access keys,
stored only as a cryptographic verifier, exchanged for bounded opaque browser
sessions. The raw access key is shown once; setup/invitation capabilities are
single-use and expire. Human-password and WebAuthn alternatives remain
experiments, not fallback behavior.

Sessions store only a token hash, actor, server-side CSRF verifier, timestamps,
revocation, and bounded safe metadata. Cookies are host-only `__Host-` where
possible, Secure, HttpOnly, SameSite=Lax or stricter, and Path `/`; no Domain.
Login and sensitive changes rotate sessions. Logout revokes server state and
clears the cookie. Absolute and idle expiry are mandatory.

All cookie-authenticated writes validate a session-bound CSRF token. Login has
bounded bodies, per-client and per-credential throttling, generic failures,
constant-time verifier comparison, no enumeration, and secret-free audit
summaries. Forwarded identity is trusted only from the verified edge proxy.
