# Agent Instructions

## Source of truth

`docs/` is the sole active canon. Read `docs/current-state.md`, then the owner
for a contract, before changing routes, storage, auth, deployment, or tests.
Use the status terms exactly: **Current**, **Accepted Target**, **Experiment**,
**Deferred**, **Rejected**, and **Superseded**.

## Change discipline

1. Establish current evidence.
2. Update the owning contract before a public or durable behavior change.
3. Implement only the documented behavior.
4. Run the smallest applicable verification tier.
5. Update current state and experiment evidence after verification.

No production mock, placeholder, raw token, hard-coded account, or compatibility
shim is permitted. Never claim an unrun command passed.

## Layout limits

- Authored Markdown and `.lkjscript` files stay at 200 lines or less.
- Each source directory has at most the current `lkjscript` immediate-entry
  limit; split by ownership before a limit is approached.
- Each docs directory has one `README.md` index and focused owner documents.
- Keep product policy in `.lkjscript`; Rust may add only documented generic
  runtime capability in `lkjscript`.

## Security and operations

Never commit secrets, exports, databases, backups, cookies, access keys, or
private article bodies. Create and restore-test a backup before production
mutation. Use a reversible green deployment and validate Nginx before reload.
Treat unavailable authorization as deny-by-default and return `404` for
cross-space resources whose existence must not be disclosed.

## Verification evidence

Use commit trailers:

```
Tested: <exact command and result>
Not-tested: <meaningful boundary>
```

The contract owner for verification tiers is
[docs/operations/verification.md](docs/operations/verification.md).
