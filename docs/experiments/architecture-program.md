# Architecture Experiment Program

## Candidates

- **A:** long-lived dynamic `.lkjscript` server with SQLite.
- **B:** long-lived dynamic server with owned append-only checksummed store.
- **C:** the stronger durable store plus dynamic control plane and static public
  projection served by edge Nginx.
- **D (only if justified):** multiple workers/process-per-request alternative.

Each decision-grade slice uses real persistence and performs startup, fixture
owner/space/authentication, create/update with conflict, publish/list/render,
restart/read, cross-tenant rejection, malformed-input rejection, and Docker run.

## Eligibility gates

Any candidate failing tenant isolation, auth security, acknowledged durability,
restart recovery, migration fidelity, bounded resources, backup/restore, or
operability is rejected without score weighting.

## Measurements

Release builds on one host use deterministic 100/1,000/10,000 article corpora,
1/8/64 KiB bodies, 5–8 warmups, 31 retained samples, and repeated bounded load
windows. Record SHA, versions, hardware, command, median, MAD, p95/p99, RSS,
CPU, image size, persistent bytes/article, backup/restore, projection rebuild,
and peak temporary disk.

Measure dynamic SQLite, dynamic append-only, static projection with strongest
store, close versus keep-alive/evented, full versus cached rendering, source
versus bundle when implemented, two image strategies, edge versus app
compression, and one/multiple workers where correct.

## Current result

No candidate has been implemented or measured. No architecture is selected.
