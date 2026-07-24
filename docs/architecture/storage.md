# Durable Storage

## Experiment gate

A selected store must provide schema/format migration, bounded handles,
transactional article lifecycle, session/credential revocation, durable
acknowledged writes, restart recovery, backup/restore, and tenant-scoped queries.

SQLite candidate requirements: one owner-only database path, foreign keys,
documented journal/synchronous/busy timeout, prepared statements, explicit
transactions, integrity checking, correct online backup, and WAL-aware recovery.

Append-only candidate requirements: framed checksummed records, bounded lengths,
monotonic sequence, torn-tail recovery, rebuildable indexes, atomic snapshots,
explicit compaction, no acknowledged write loss, and a clear single-writer or
concurrency rule.

No data is silently destructively migrated at startup. Destructive maintenance
is explicit and requires a verified backup.
