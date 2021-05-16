« I hate money » budget web app for YunoHost
================================================

[![Integration level](https://dash.yunohost.org/integration/ihatemoney.svg)](https://dash.yunohost.org/appci/app/ihatemoney) ![](https://ci-apps.yunohost.org/ci/badges/ihatemoney.status.svg)  ![](https://ci-apps.yunohost.org/ci/badges/ihatemoney.maintain.svg)  
[![Install ihatemoney with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ihatemoney)

> *This package allows you to install ihatemoney quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

«I hate money» is a web application made to ease shared budget management. It keeps track of who bought what, when, and for whom; and helps to settle the bills.
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

**Shipped version:** 4.1.5~ynh2

**Demo:** https://demo.ihatemoney.com

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


## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
or
sudo yunohost app upgrade ihatemoney -u https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
```

**More info regarding app packaging:** https://yunohost.org/packaging_apps