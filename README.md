<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# I Hate Money for YunoHost

[![Integration level](https://dash.yunohost.org/integration/ihatemoney.svg)](https://dash.yunohost.org/appci/app/ihatemoney) ![](https://ci-apps.yunohost.org/ci/badges/ihatemoney.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/ihatemoney.maintain.svg)  
[![Install I Hate Money with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ihatemoney)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install I Hate Money quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

I hate money is a web application made to ease shared budget management. It keeps track of who bought what, when, and for whom; and helps to settle the bills.


**Shipped version:** 5.2.0~ynh1

**Demo:** https://ihatemoney.org/demo/

## Screenshots

![](./doc/screenshots/screenshot_1_global.webp)
![](./doc/screenshots/screenshot_2_new_operation.webp)

## Disclaimers / important information

* LDAP authentication and Single Sign-on is not supported. The login mechanism in IHateMoney is per-project (not per-user) and therefore can't be integrated in YunoHost.

- **non-public app**:
  - yunohost login required
  - per-project identifiers required
  - any yunohost user with access to the app can create a new project.
- **public app** :
  - no yunohost login required
  - per-project identifiers required
  - any visitor can create a new project.

## Documentation and resources

* Official app website: https://github.com/spiral-project/ihatemoney
* Official admin documentation: https://ihatemoney.readthedocs.org/
* Upstream app code repository: https://github.com/spiral-project/ihatemoney
* YunoHost documentation for this app: https://yunohost.org/app_ihatemoney
* Report a bug: https://github.com/YunoHost-Apps/ihatemoney_ynh/issues

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
or
sudo yunohost app upgrade ihatemoney -u https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
```

**More info regarding app packaging:** https://yunohost.org/packaging_apps