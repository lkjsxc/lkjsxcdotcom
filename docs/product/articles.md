# Articles and Revisions

## Accepted Target

An article has a global 26-character lowercase sortable ID, `space_id`, author,
last editor, optional space-unique slug, explicit title, optional summary,
Markdown body, state, revision number, UTC timestamps, import provenance, and
render/projection hashes where needed. New IDs use OS CSPRNG entropy; valid
legacy IDs are preserved.

Edit forms carry the observed revision. An update succeeds only when it equals
the stored revision. A conflict preserves server content and submitted input;
it never silently overwrites.

Explicit save, publish, unpublish, archive, and imported snapshots make
immutable revisions. Debounced autosave updates a draft with concurrency
control but does not create unbounded revision churn.

Redirects are a finite import manifest mapping verified old public paths to new
canonical paths. They cannot resolve private, draft, deleted, administrative,
or cross-space resources.
