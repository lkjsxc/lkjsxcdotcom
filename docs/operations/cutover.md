# Cutover Contract

## Accepted Target

Deploy green on a distinct private port; verify from app container, edge, and a
local Host/resolve path while the old upstream remains healthy. Immediately
before freeze, create and checksum final backup artifacts, record old upstream,
create a pre-cutover tag, and write rollback commands.

Freeze only old state-changing requests with a reversible rule while retaining
old public reads. Final export, dry-run import, import, idempotency pass,
count/hash/media/route checks, and full projection rebuild must complete before
traffic changes.

Edit the durable edge Nginx source only. Preserve unrelated virtual hosts,
certificates, renewal, and domain HSTS policy. Set narrow proxy/static route
precedence, trusted forwarded identity, limits, timeouts, no-cache auth policy,
compression, and security headers. Run `nginx -t` inside the actual container
before reload.

Immediately roll back for health/readiness failure, mismatch, missing page,
privacy leak, failed write/isolation, corruption, unstable Nginx, sustained
errors, severe unexplained resource growth, or failed restoration.
