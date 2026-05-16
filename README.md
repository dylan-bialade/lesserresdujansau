# Les Serres du Jansau — Site Web Statique Hugo

Site web statique développé avec [Hugo](https://gohugo.io/).

## Structure du projet

```
lesserresdujansau/
├── hugo.toml              ← Configuration du site
├── content/               ← Contenu des pages (Markdown)
│   ├── _index.md          ← Page d'accueil
│   ├── a-propos.md        ← Qui sommes-nous
│   ├── notre-approche.md  ← Comment nous cultivons
│   ├── contact.md         ← Page contact
│   ├── mentions-legales.md
│   └── catalogue/         ← Pages catalogue
│       ├── _index.md
│       ├── fleurs.md
│       ├── arbres-arbustes.md
│       ├── potager.md
│       ├── plantes-interieur.md
│       ├── produits-jardin.md
│       └── fruitiers.md
├── layouts/               ← Templates HTML
│   ├── index.html         ← Template accueil
│   ├── _default/          ← Templates génériques
│   ├── contact/           ← Template contact
│   └── partials/          ← Header, footer, head
├── static/                ← Fichiers statiques
│   ├── css/main.css       ← Feuille de style principale
│   ├── js/main.js         ← JavaScript (menu mobile)
│   └── images/            ← Mettre vos photos ici
└── public/                ← Site généré (ne pas modifier)
```

## Installation de Hugo (Windows)

1. Télécharger Hugo Extended : https://github.com/gohugoio/hugo/releases/latest
   - Choisir `hugo_extended_X.X.X_windows-amd64.zip`
2. Extraire `hugo.exe` dans `C:\Hugo\bin\`
3. Ajouter `C:\Hugo\bin\` au PATH Windows
4. Vérifier : ouvrir un terminal et taper `hugo version`

## Commandes

```bash
# Prévisualiser le site en local (live reload)
hugo server

# Construire le site pour la mise en ligne
hugo --minify

# Le site généré est dans le dossier public/
```

## Ajouter vos photos

1. Mettre vos images dans `static/images/`
2. Les appeler dans le contenu Markdown : `![Description](/images/ma-photo.jpg)`
3. Ou dans les templates HTML : `<img src="/images/ma-photo.jpg" alt="...">`

## Modifier le contenu

Ouvrir les fichiers `.md` dans `content/` avec n'importe quel éditeur de texte (Notepad++, VS Code…).

Chaque fichier commence par un en-tête YAML :
```yaml
---
title: "Titre de la page"
description: "Description pour Google"
---

Contenu de la page en Markdown...
```

## Formulaire de contact

Le formulaire utilise [Formspree](https://formspree.io/) (gratuit jusqu'à 50 messages/mois) :

1. Créer un compte sur https://formspree.io
2. Créer un nouveau formulaire → copier l'ID (ex: `xpzgkjbd`)
3. Dans `layouts/contact/single.html`, remplacer :
   ```
   https://formspree.io/f/VOTRE_ID_FORMSPREE
   ```
   par :
   ```
   https://formspree.io/f/xpzgkjbd
   ```

## Mise en ligne

**Option 1 — Netlify (recommandé, gratuit) :**
1. Créer un compte sur https://netlify.com
2. "New site from Git" → connecter votre dépôt
3. Build command : `hugo --minify` / Publish directory : `public`

**Option 2 — GitHub Pages (gratuit) :**
1. Pousser le projet sur GitHub
2. Activer GitHub Pages avec GitHub Actions

**Option 3 — Hébergeur FTP :**
1. Lancer `hugo --minify`
2. Uploader le contenu du dossier `public/` via FTP

## Contact & informations

- **Adresse :** 4377 chemin Toulze, 81600 GAILLAC
- **Téléphone :** 05 63 57 04 81
- **Email :** contact@serresdujansau.fr
