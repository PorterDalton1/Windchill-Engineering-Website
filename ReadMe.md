WindChill Engineering Website (Lucee/CFML)

# Overview

This repository contains the tracked ColdFusion/Lucee website source for WindChill Engineering. The versioned content is centered on the application site under `www/`, including page templates, partials, JavaScript, and SCSS source files.

Live site: https://www.windchillengineering.com/

> Important: the repository `.gitignore` excludes infrastructure and generated output such as `docker-compose.yml`, `/config`, `/nginx`, `/mysql`, `/www/assets/css/`, and minified CSS source maps. That means a clean clone may not include deployment config or compiled CSS assets.

# What is in this repo

- `www/` - website source and static assets
- `www/assets/scss/` - Sass source files for styling
- `www/partials/` - reusable CFML partial templates
- `www/Application.cfc` and `www/index.cfm` - main application entrypoints
- `www/assets/js/` - client-side JavaScript

# What is intentionally ignored

This repository is mainly the source folder for the website.

# Sass / CSS build

The canonical build step for this repo is compiling the SCSS source into CSS. The tracked Sass files live in `www/assets/scss/`, and the compiled files are expected to be output under `www/assets/css/`.

## Recommended local build

Install Dart Sass if you do not already have it:

```bash
npm install -g sass
```

Then compile individual files or all SCSS files at once.

### Compile a single page stylesheet

```bash
sass www/assets/scss/index.scss www/assets/css/index-min.css --style=compressed
```

### Compile all top-level SCSS files

```bash
mkdir -p www/assets/css
for src in www/assets/scss/*.scss; do
  name=$(basename "$src" .scss)
  sass "$src" "www/assets/css/${name}-min.css" --style=compressed
done
```

### Compile with expanded output for debugging

```bash
sass www/assets/scss/index.scss www/assets/css/index-expanded.css --style=expanded
```

## Notes

- Generate a css folder inside assets in a fresh checkout.
- If the project uses page-specific CSS naming conventions, preserve the `-min.css` suffix for compressed site assets.
- If you prefer npm scripts, create a simple `package.json` and add `sass` commands for repeatable builds.

# Deploying the site

## If deployment config is available locally

Deployment works with both Adobe and Lucee. The website itself is deployed on Adobe. 

## If only the tracked repo is available

The site itself can be deployed as a Lucee web application:

1. Copy the `www/` contents to the Lucee webroot or web server document root.
2. Ensure `www/Application.cfc` is present and the server is configured to serve `.cfm` files.
3. Configure the database connection in Lucee if the app requires MySQL.
4. Rebuild the Sass output into `www/assets/css/` before serving.

## Common deployment requirements

- Lucee or Adobe CFML engine
- Web server configured for CFML (Nginx, Apache, or IIS)
- `www/` as the public site root
- Database credentials and secure config handled outside this repo

# Notes for maintainers

- Keep source-level SCSS files in `www/assets/scss/`
- Do not commit `/www/assets/css/` or generated minified files if the repo is intended to store source only
- Keep secrets and runtime configs outside the tracked repo in the ignored paths listed above

# Troubleshooting

- If CSS looks wrong, rebuild the SCSS sources into `www/assets/css/`.
- If the site fails, verify that `www/Application.cfc` is loading and the server is serving the CFML files correctly.
- Use `git status --ignored` to inspect ignored files and confirm whether deployment config exists locally.
