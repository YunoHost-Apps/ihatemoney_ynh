* LDAP authentication and Single Sign-on is not supported. The login mechanism in IHateMoney is per-project (not per-user) and therefore can't be integrated in YunoHost.

- **non-public app**:
  - yunohost login required
  - per-project identifiers required
  - any yunohost user with access to the app can create a new project.
- **public app** :
  - no yunohost login required
  - per-project identifiers required
  - any visitor can create a new project.

* During upgrade from version 4.1.5~ynh3, a new admin password is generated and sent to the root
