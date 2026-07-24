# Static Projection

## Experiment candidate C

The durable store is authoritative; public HTML, feeds, sitemap, robots, and
public imported assets are rebuildable derived state. Staging paths derive only
from validated IDs/slugs and reject traversal, separators, symlinks, case-fold
collisions, and reserved routes.

Publish commits durable public state, builds and fsyncs private output, atomically
exposes it, then atomically refreshes indexes. Unpublish/archive hides public
output before committing non-public state; a failed commit repairs output from
still-public durable state. Privacy outranks availability.

A full rebuild writes a complete staged release, validates public-only counts and
hashes, atomically selects it, retains one prior known-good release, and deletes
older derived releases only after success. Nginx may read only the public tree;
it never reads the database, sessions, credentials, manifests, or backups.
