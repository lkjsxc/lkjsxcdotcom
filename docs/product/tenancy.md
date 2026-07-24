# Tenancy and Authorization

## Accepted Target

Entities are user, space, membership, article, credential, and session. A
space has a stable ID, unique route slug, display name, owner, status, and
UTC timestamps. Membership has a unique `(space_id, user_id)` relation.

Roles are deliberately small:

- `owner`: article lifecycle, membership changes, and space-sensitive settings.
- `editor`: article create/edit/publish/unpublish/archive.

Every storage query and mutation carries `space_id`; never load by article ID
then apply a remembered policy check. Disabled users and removed memberships
lose write capability immediately. New sessions cannot turn an invalid
principal into a guest writer.

Required tests cover cross-space draft read, update, publish, slug reuse across
spaces, invalid/revoked session, disabled user, membership removal, projection
privacy, and redirect boundary isolation.
