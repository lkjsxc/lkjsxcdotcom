# Decision Records

## Current

No architecture-selection decision has been accepted.

### Lkjweb extraction — Accepted Target

`lkjweb` will be a separate public Apache-2.0 repository extracted from the
Candidate A application. It owns bounded reverse-proxy-oriented HTTP behavior,
not application policy. Before 1.0 it makes no compatibility promise; consumers
pin an exact commit. It has explicit limits and errors, no TLS or HTTP/2, and
no hidden policy. The application keeps auth, storage, routes, rendering, and
migration behavior.

## Accepted process

Architecture is selected only after the eligibility gates and measurement
protocol in `docs/experiments/architecture-program.md`. Runtime capability
changes additionally require an ADR in `lkjscript` before code.

## Rejected by release scope

A Rust web application with token `.lkjscript`, production in-memory storage,
and generic predecessor compatibility layers are rejected. They are not
candidates.
