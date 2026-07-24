# Backup and Rollback

## Accepted Target

Before any production state mutation, create a timestamped permission-restricted
backup containing old Compose/Nginx source, image IDs/digests, volume manifest,
restorable PostgreSQL dump/globals as required, object-store data/metadata,
public URL manifest, and SHA-256 manifest. Restore-test one paired backup in
isolation. WAL files require a correct online SQLite backup procedure if SQLite
is selected.

Retain old `kjxlkj` containers, data, source, and backup through soak. Never
perform broad Docker/ZFS pruning. Reclaim only mission-created artifacts after
recording evidence.

Rollback restores the saved durable Nginx source, validates it, reloads it,
restores old writes when safe, verifies old public/write paths, and preserves
failed green state for diagnosis. Exact commands and observed duration are
recorded only after rehearsal.
