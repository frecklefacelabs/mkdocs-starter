# Quick Start Guide

Get up and running with your MkDocs documentation in minutes!

## Start the Development Server

Once you have completed the installation, start the development server:

```bash
mkdocs serve
```

This will start a local server at `http://127.0.0.1:8000`. The server includes live reload, so any changes you make to your documentation will automatically refresh the page.

## Project Structure

Your MkDocs project follows this structure:

```
mkdocs-starter/
├── mkdocs.yml          # Configuration file
├── docs/               # Documentation source files
│   ├── index.md        # Homepage
│   ├── api/            # API documentation
│   │   ├── overview.md
│   │   └── reference.md
│   └── getting-started/  # Getting started guides
│       ├── installation.md
│       └── quickstart.md
├── assets/             # Static assets
│   └── css/
│       └── custom.css  # Custom styles
├── flake.nix          # Nix development environment
└── .envrc             # direnv configuration
```

## Writing Documentation

### Creating New Pages

1. Create a new `.md` file in the `docs/` directory
2. Add content using Markdown syntax
3. Update `mkdocs.yml` to include the new page in navigation

### Markdown Syntax

MkDocs supports standard Markdown with some extensions:

- **Bold text**: `**bold**` → **bold**
- *Italic text*: `*italic*` → *italic*
- `Code`: `` `code` `` → `code`
- Links: `[Link text](https://example.com)` → [Link text](https://example.com)

### Code Blocks

Use triple backticks for code blocks:

````markdown
```python
def hello_world():
    print("Hello, World!")
```
````

## Building for Production

Build the static site:

```bash
mkdocs build
```

This creates a `site/` directory with all the HTML files ready for deployment.

## Customization

- Edit `mkdocs.yml` to configure your site
- Modify `assets/css/custom.css` to customize styling
- Add new pages and organize them in the navigation

## Deployment

The built site in the `site/` directory can be deployed to:
- GitHub Pages
- Netlify
- Vercel
- Any static hosting service

## Need Help?

- Check the [MkDocs documentation](https://www.mkdocs.org/)
- Explore the [Material theme docs](https://squidfunk.github.io/mkdocs-material/)