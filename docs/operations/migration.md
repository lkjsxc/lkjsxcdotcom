# Migration Contract

## Accepted Target

The live predecessor is source truth. Before mutation, create a restricted
paired PostgreSQL/object-store/Compose/Nginx/image manifest backup and restore
it into an isolated disposable environment.

The committed exporter/importer uses deterministic versioned NDJSON plus a
manifest: users, spaces, articles, revisions, redirects, and assets. Production
exports stay outside Git. Every record carries source identity and normalized
checksum. Import classifies create, unchanged, newer update, conflict, invalid,
or explicit skip; a repeated unchanged import makes zero material changes.

Initial full export/import runs while old reads/writes remain available. A short,
reversible old-write freeze precedes final export, dry run, import, second
idempotency pass, count/hash/route/media verification, and complete projection
rebuild. Preserve body, valid ID, alias mapping, visibility, timestamps,
deleted state, snapshots, provenance, and required immutable media. Never
publish private/draft/deleted material or leave new pages dependent on old
storage.
