<p align="center">
  <a href="https://hnd.na-no.pro" rel="noopener">
 <img src="https://i.imgur.com/sYL5Pia.png" alt="Project header"></a>
</p>
<h1 align="center">Hendek Tracker</h1>
<div align="center">
<h3 align="center">PWA pour tracker les hnouches</h3>
<p align="center">Application type PWA pour le signalement de contrôleurs des titres de transports en commun (RATP uniquement pour le PoC)</p>
</div>

---
## 💻 Demo

[hnd.na-no.pro](https://hnd.na-no.pro "hnd.na-no.pro")

## ⚙️ Installation locale
Remplir clé API Gmaps dans src/components/GoogleMapsWrapper.tsx
<br>
`docker compose up -d --build`
<br>
Vérifier que la BDD est bien préremplie, sinon :
<br>
Ouvrir un shell dans le container :
<br>
`docker exec -it DOCKER_CONTAINER_ID bin/bash`
<br>
Connexion MySQL :
<br>
`mysql`
<br>
`USE hendektracker;`
<br>
`source /path/to/hendektracker.sql;`
<br>
`exit`
<br>

<br>
Ports : 
<br>
  40420 = Front
<br>
  40422 = API (PHP)
<br>
  40423 = DB (MySQL)
<br>

## ✨ Features / To Do
- ✅ <b>Listage des contrôleurs sur une carte Google Maps</b>
- ✅ <b>Liste interactive et statique des stations des lignes de métro 4, 6, 8 et 12 de la région IDF.</b> 
- ✅ <b>Recherche sur écran d'accueil et onglet Trajet</b>
- ✅ <b>Visualiser son trajet et les contrôleurs à proximité</b> 
- ✅ <b>Ma localisation sur la carte</b> 
- ✅ <b>Liste des signalements récents</b>
- ✅ <b>Partie de l'app disponible hors ligne (trajet)</b>
- ✅ <b>Installation sur mobile</b>
- ⚠️ <b>Cache/fonctions offline limitées</b>
- ⚠️ <b>Quelques bugs d'affichage et d'actualisation (recherche accueil, ma position)</b>
- ❌ <b>Signalement de contrôleurs à proximité</b>
- ❌ <b>Comptes utilisateurs</b>
<br>
