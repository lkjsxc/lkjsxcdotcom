# Runtime Boundary

## Current evidence

`lkjscript` main `13a718e24a24` has typed `.lkjscript`, a bytecode VM, narrow
synchronous file/TCP/time/buffer operations, and a one-shot HTTP example. It
has no SQLite, lossless bulk bytes, atomic durable filesystem operations, or
multi-connection HTTP server capability.

## Accepted Target

Routes, validation, policy, auth, sessions, CSRF, tenancy, SQL orchestration,
migrations, Markdown, templates, rendering, projection, import, and operator
commands are `.lkjscript`. Rust may only supply documented generic capability.

A runtime addition requires an ADR first, exact types/limits/errors/cancellation,
unsafe confined to `lkjscript-sys`, focused conformance tests, a real application
consumer, full runtime verification, independent runtime commit/push, and an
exact app pin. No application SQL, schema, route, HTML, or policy may enter Rust.
