# Current State

Last evidence update: 2026-07-25T00:00:00Z.

## Current

- Repository `main` began at `ed9547a69307`; it contained Apache-2.0 only.
- The successor product has **no implementation yet**. There is no schema,
  Docker image, runtime pin, test suite, export, import, green deployment, or
  production cutover.
- Live `lkjsxc.com` still reaches `kjxlkj` through edge Nginx.
- `lkjscript` main is `3a28e2e3fc2b`. Typed SSA and its callable,
  allocation-free scalar baseline JIT are Current on their documented subset.
  Strings, references, allocation, collections, and host I/O remain outside
  that native subset; this cycle uses the VM and does not extend the JIT.
- The generic runtime now has lossless bulk bytes, OS random fill, SHA-256,
  bounded buffer slices, and SQLite on `e7dc259bb9f7f38e9b2424d2dfb50ef78b0b9f76`.
- `deps/lkjscript` and `deps/lkjweb` are exact Git submodules. The app's source
  assembly uses dependency symlinks, not copied framework source; the framework
  import smoke passes at `lkjweb` `72b3af622cb34a485ba234478036f3c1b5bdb94d`.
- Candidate A product implementation has not begun; the smoke is dependency
  evidence only, not a workflow or architecture result.

## Accepted Target

The product and operational contracts in this documentation tree are accepted
as implementation targets. Candidate A is the active implementation experiment,
not the selected architecture. Candidates B and C remain unimplemented;
production cutover is blocked on later comparative evidence under the
[experiment gates](experiments/architecture-program.md).

## Evidence boundaries

The source production image reports `kjxlkj` revision `31d1e449`, not current
repository main. Live PostgreSQL schema was inspected directly; production
content was not copied into this public repository. The external public path
could not be measured from the development network because HTTPS hairpin calls
timed out; local and edge-loopback probes are recorded in
[operations/baseline.md](operations/baseline.md).

## Next verified work

1. Commit this continuation correction.
2. Attempt the Candidate A HTTP slice on the VM and document actual generic
   byte, socket, SQLite, and framework capability gaps.
3. Build and measure Candidate A before implementing the remaining candidates.
