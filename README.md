# 29

Birthday website. Deploy with `bundle exec mrsk deploy`

## Archived Website

This website was archived and made statically available through GitHub Pages.

```sh
# Download site
wget -k -K  -E -r -l 10 -p -N -F --restrict-file-names=windows -nH http://29.janschill.de/
```

Enable GitHub Pages and deploy using default static HTML GHA.

```yaml
name: Deploy static content to Pages
on:
  push:
    branches: ["main"]
  workflow_dispatch:
permissions:
  contents: read
  pages: write
  id-token: write
concurrency:
  group: "pages"
  cancel-in-progress: false
jobs:
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Setup Pages
        uses: actions/configure-pages@v3
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v1
        with:
          path: 'archived/'
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v2
```

Either configure domain's DNS to point to GitHub or hook up a redirect on the old domain to the new GitHub Pages default domain.

```lua
server {
    listen 80;
    server_name 29.janschill.de www.29.janschill.de;
    return 301 https://janschill.github.io/29/;
}
```
