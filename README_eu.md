<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# I Hate Money YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/ihatemoney.svg)](https://dash.yunohost.org/appci/app/ihatemoney) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/ihatemoney.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/ihatemoney.maintain.svg)

[![Instalatu I Hate Money YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=ihatemoney)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek I Hate Money YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

I hate money is a web application made to ease shared budget management. It keeps track of who bought what, when, and for whom; and helps to settle the bills.


**Paketatutako bertsioa:** 6.1.0~ynh3

**Demoa:** <https://ihatemoney.org/demo/>

## Pantaila-argazkiak

![I Hate Money(r)en pantaila-argazkia](./doc/screenshots/screenshot_1_global.webp)
![I Hate Money(r)en pantaila-argazkia](./doc/screenshots/screenshot_2_new_operation.webp)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <http://ihatemoney.org/>
- Administratzaileen dokumentazio ofiziala: <https://ihatemoney.readthedocs.org/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/spiral-project/ihatemoney>
- YunoHost Denda: <https://apps.yunohost.org/app/ihatemoney>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/ihatemoney_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
edo
sudo yunohost app upgrade ihatemoney -u https://github.com/YunoHost-Apps/ihatemoney_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
