# Runtime Boundary

## Current evidence

`lkjscript` main `3a28e2e3fc2b` has typed `.lkjscript`, a bytecode VM, and
narrow synchronous file/TCP/time/buffer operations. Typed SSA and a callable,
allocation-free scalar baseline JIT are Current on their exact supported subset.
Strings, references, allocation, collections, and host I/O are outside that
subset, so Candidate A uses the VM and this cycle does not extend the JIT.

The relevant generic blockers remain lossless bulk bytes, efficient host I/O,
SQLite, and reusable HTTP/application libraries. The JIT is not evidence of web
acceleration.

## Accepted Target

Routes, validation, policy, auth, sessions, CSRF, tenancy, SQL orchestration,
migrations, Markdown, templates, rendering, projection, import, and operator
commands are `.lkjscript`. Rust may only supply documented generic capability.

A runtime addition requires an ADR first, exact types/limits/errors/cancellation,
unsafe confined to `lkjscript-sys`, focused conformance tests, a real application
consumer, full runtime verification, independent runtime commit/push, and an
exact app pin. No application SQL, schema, route, HTML, or policy may enter Rust.
