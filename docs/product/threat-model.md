# Threat Model

## Assets

Credentials, access keys, session/CSRF verifiers, private drafts, membership
relations, audit records, backups, and imported non-public media require
confidentiality. Articles, revisions, redirects, projection, and schema require
integrity and recoverability.

## Adversaries and boundaries

Untrusted browsers, malformed internal-proxy traffic, a malicious authenticated
member, stolen browser state, brute-force clients, hostile Markdown, and crash/
disk-pressure faults are in scope. Edge Nginx terminates public TLS; the app
trusts forwarded identity only from that edge address. Shared storage is not a
trust boundary: edge may read public projection only.

## Controls

High-entropy verifier-only access keys, server-revocable hashed sessions,
rotation, expiry, CSRF, strict parser limits, request throttling, tenant-scoped
queries, `404` non-disclosure, safe rendering, CSP, output path validation,
audit events, and paired backup/restore control the principal risks.

## Residual risks

A home-server administrator can access mounted data; operational filesystem
permissions reduce but cannot eliminate that authority. Static projection crash
recovery favors temporary absence over exposure. There is no external telemetry;
local logs are bounded and omit secret/payload values.
