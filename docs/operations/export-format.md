# Migration Export Format

## Accepted Target

Production export data is permission-restricted and outside Git. The format is
UTF-8 NDJSON plus `manifest.json` with format identifier, source image/revision,
schema fingerprint, UTC export time, source base URL, aggregate row counts,
SHA-256 checksums, and no secrets.

- `users.ndjson`: stable source identity and non-secret display metadata.
- `spaces.ndjson`: source owner-to-target-space mapping; the legacy singleton
  owner becomes the initial personal space.
- `articles.ndjson`: source ID, alias, title/summary/body, visibility, deletion,
  timestamps, source checksum, and import metadata.
- `revisions.ndjson`: deterministic snapshot order and full article revision
  mapping when safe.
- `redirects.ndjson`: only verified old public path/new public canonical path.
- `assets.ndjson`: source reference, target immutable path, content type, bytes,
  SHA-256, source visibility, and import timestamp.

Records have deterministic key order and normalized-newline record checksum.
Import dry-run validates all relationships, source media, IDs, slugs, timestamps,
visibility, and collisions without target writes. Repeating unchanged input
reports zero material changes; timestamps alone never define identity.
