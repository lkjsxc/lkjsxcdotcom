# Current State

Last evidence update: 2026-07-24T13:36:22Z.

## Current

- Repository `main` began at `ed9547a69307`; it contained Apache-2.0 only.
- The successor product has **no implementation yet**. There is no schema,
  Docker image, runtime pin, test suite, export, import, green deployment, or
  production cutover.
- Live `lkjsxc.com` still reaches `kjxlkj` through edge Nginx.
- `lkjscript` main was `13a718e24a24` when inspected. It has a typed bytecode
  VM and narrow synchronous file/TCP primitives, but lacks SQLite, lossless
  bulk bytes, atomic durable file operations, and a general HTTP server.

## Accepted Target

The product and operational contracts in this documentation tree are accepted
as implementation targets. Architecture remains unselected until the three
real vertical slices and their measurements meet
[experiment gates](experiments/architecture-program.md).

## Evidence boundaries

The source production image reports `kjxlkj` revision `31d1e449`, not current
repository main. Live PostgreSQL schema was inspected directly; production
content was not copied into this public repository. The external public path
could not be measured from the development network because HTTPS hairpin calls
timed out; local and edge-loopback probes are recorded in
[operations/baseline.md](operations/baseline.md).

## Next verified work

1. Commit this docs bootstrap.
2. Add a small vertical slice against the current runtime and document actual
   generic capability gaps.
3. Implement and measure all eligible architecture candidates before adoption.
