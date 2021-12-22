# I Hate Money pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/ihatemoney.svg)](https://dash.yunohost.org/appci/app/ihatemoney) ![](https://ci-apps.yunohost.org/ci/badges/ihatemoney.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/ihatemoney.maintain.svg)
[![Installer I Hate Money avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ihatemoney)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer I Hate Money rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Gérez simplement vos dépenses collectives

**Version incluse :** 5.1.1~ynh1

**Démo :** https://ihatemoney.org/demo/

## Captures d'écran

![](./doc/screenshots/screenshot_1_global.webp)
![](./doc/screenshots/screenshot_2_new_operation.webp)

## Avertissements / informations importantes

* L'authentification LDAP et login unifié (SSO) n'est pas supportée. Le mécanisme de connexion sur IHateMoney se fait par projet et ne peut donc pas être intégrée dans YunoHost

- **app non publique**:
  - authentification Yunohost requise
  - identifiants de projets requis
  - Tout utilisateur Yunohost avec accès à l'app peut créer un nouveau projet.
- **app publique** :
  - authentification Yunohost non requise
  - identifiants de projets requis
  - Tout visiteur peut créer un nouveau projet.

## Documentations et ressources

* Site officiel de l'app : https://github.com/spiral-project/ihatemoney
* Documentation officielle de l'admin : https://ihatemoney.readthedocs.org/
* Dépôt de code officiel de l'app : https://github.com/spiral-project/ihatemoney
* Documentation YunoHost pour cette app : https://yunohost.org/app_ihatemoney
* Signaler un bug : https://github.com/YunoHost-Apps/ihatemoney_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
ou
sudo yunohost app upgrade ihatemoney -u https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps
