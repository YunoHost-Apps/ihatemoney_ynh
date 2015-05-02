Yunohost app for Ihatemoney budget web app
==========================================

Backs on MySQL database, the identifiers are per-project, not per-user, so no
way to do advanced SSO integration with yunohost accounts.

The behaviour is either :

- **non-public app**:
  - yunohost login required
  - per-project identifiers required
  - any yunohost user with authorized access to the app can create a new
    project).
- **public app** :
  - no yunohost login required
  - per-project identifiers required
  - any visitor can create a new project.

I currently use
[my fork](https://github.com/JocelynDelalande/ihatemoney/tree/ynh-patched)
(copied as-is on branch *ynh_patched_upstream*) as

upstream, waiting for some pull request to enter
[official code base](https://github.com/spiral-project/ihatemoney).


Maintainer
----------

I choose to embed the code in my repo, upstream policy is similar to
[Debian's](https://wiki.debian.org/PackagingWithGit#Using_the_upstream_repo).

- the *upstream* branch points to a vanilla (tested) upstream commit
- the *master* branch includes yunohost specific files and the right files
  layout (eg: source is in a *sources* subdir).

Upgrading source code to a further version is a matter of:

1. pulling the right commit from upstream git in the upstream branch
2. merging upstream into master
3. adapting the upgrade script if required
