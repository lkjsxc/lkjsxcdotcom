# Production Baseline

Observed at 2026-07-24T13:36:22Z; facts are non-secret aggregates.

## Live topology

`lkjsxc.com` is edge-Nginx TLS proxy traffic to the `kjxlkj` application on the
`lkjsxc` Incus container. The durable Nginx source is edge-mounted and the live
Compose owner is Portainer-derived. The old app, PostgreSQL, and SeaweedFS are
healthy and must remain recoverable. The running app image identifies source
revision `31d1e449`; this differs from predecessor repository main.

## Content

Live PostgreSQL has 67 notes: 53 public/live, 4 private/live, 9 public/deleted,
and 1 private/deleted. It has 2,468 note snapshots (2,121 public, 347 private),
with no orphan, duplicate `(resource,snapshot_number)`, or ID collision found.
All 91 resources and 2,495 snapshots use valid 26-character lowercase IDs.

There are 15 live media resources totaling 237,016,792 declared bytes. The
predecessor data directory uses about 213 MiB allocated; PostgreSQL about 26
MiB and SeaweedFS about 187 MiB allocated. Note bodies total 86,551 bytes;
the largest is 19,881 bytes. Snapshot bodies total 5,301,392 bytes.

## HTTP and capacity

Internal root/article probes were 200; nonexistent article was 404; login and
health were 200. Edge-loopback TLS probes were 200 with HSTS and `nosniff`.
Development HTTPS hairpin and edge external-domain hairpin timed out, so an
Internet-path measurement is explicitly not available. The TLS certificate
identified `lkjsxc.com` and expires 2026-09-18.

Before builds, development storage had 98 GiB free; production ZFS had 278 GiB
available to the relevant dataset. No destructive reclaim was performed.
