# Installation

This guide will walk you through setting up the MkDocs starter project on your local machine.

## Prerequisites

Before you begin, ensure you have the following installed:

### Option 1: Using Nix (Recommended)

1. **Install Nix** (if not already installed):
   ```bash
   curl -L https://nixos.org/nix/install | sh
   ```

2. **Install direnv** (optional but recommended):
   ```bash
   # On macOS with Homebrew
   brew install direnv
   
   # On Ubuntu/Debian
   sudo apt install direnv
   
   # Add to your shell configuration (~/.bashrc, ~/.zshrc, etc.)
   eval "$(direnv hook bash)"  # for bash
   eval "$(direnv hook zsh)"   # for zsh
   ```

### Option 2: Traditional Python Setup

1. **Python 3.8 or higher**
2. **pip** (Python package installer)

## Setup Instructions

### Using Nix Flake (Recommended)

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd mkdocs-starter
   ```

2. **Allow direnv** (if using direnv):
   ```bash
   direnv allow
   ```
   The development environment will be automatically loaded.

3. **Or enter the development shell manually:**
   ```bash
   nix develop
   ```

### Traditional Installation

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd mkdocs-starter
   ```

2. **Create a virtual environment:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies:**
   ```bash
   pip install mkdocs mkdocs-material
   ```

## Verify Installation

Test that everything is working correctly:

```bash
mkdocs --version
```

You should see output similar to:
```
mkdocs, version 1.5.3 from /nix/store/... (Python 3.11)
```

## Next Steps

- [Quick Start Guide](quickstart.md) - Start building your documentation