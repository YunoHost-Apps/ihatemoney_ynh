Yunohost app for « I hate money » budget web app
================================================

[![Install « I hate money » with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=ihatemoney)

- Supported Yunohost versions : 2.6.x, 2.7.x 3.x
- Tested Yunohost version : 3.3.1

*NB: That means I'll try not to drop support for YunoHost 2.x too soon, and
accept patches to keep retro-compatibility, but I'll not test it myself against
YunoHost 2.x*

Backs on MySQL database, the identifiers are per-project, not per-user, so no
way to do advanced SSO integration with yunohost accounts.

The behaviour is either:

- **non-public app**:
  - yunohost login required
  - per-project identifiers required
  - any yunohost user with authorized access to the app can create a new
    project).
- **public app** :
  - no yunohost login required
  - per-project identifiers required
  - any visitor can create a new project.

Update
------

To update the app, use:

`sudo yunohost app upgrade ihatemoney -u https://github.com/YunoHost-Apps/ihatemoney_ynh`
  

Maintainer
----------

I rely on
[ihatemoney official releases](https://github.com/spiral-project/ihatemoney/releases)
(tarballs). Don't hesitate to pull-request this repo if I missed one :-).


Ihatemoney license
------------------

> The code is distributed under a BSD beerware derivative: if you meet the
> people in person and you want to pay them a craft beer, you are highly
> encouraged to do so.

[Full license text](https://github.com/spiral-project/ihatemoney/blob/master/LICENSE)

