# OffshoreCorp Services: static site

Multi-page static website with downloadable PDFs.

## Deploy on Railway

1. Create a new Railway project and choose "Deploy from repo" (or "Empty project" then upload this zip as a repo).
2. Railway detects the `Dockerfile` and builds the site automatically.
3. Railway sets the `PORT` variable. The site listens on it, so no other configuration is needed.
4. Open the generated Railway domain, or add your own domain under Settings > Networking.

## Local test

    docker build -t offshore-site .
    docker run -p 8080:8080 offshore-site

Then open http://localhost:8080

## Structure

- index.html: landing page
- jurisdictions.html, licensing.html, compare.html, identity.html, contact.html: main pages
- terms.html, privacy.html, aml.html, refund.html, disclaimer.html, cookies.html: legal pages (linked from the footer)
- style.css, logo.svg: styling and logo
- downloads/: company formation and licensing PDFs

## Before going live

The legal pages are draft wording with bracketed placeholders (governing law, liability, retention periods, complaint timescale and similar). Have counsel review and complete them before publishing.
