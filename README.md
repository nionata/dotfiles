# dotfiles

## Setup

### Unix

* Install the required packages
  * [git](https://git-scm.com/)
  * [fzf](https://github.com/junegunn/fzf)
  * [starship](https://starship.rs/)
* (Optional) Install a container management platform for running dev containers
  * [OrbStack](https://orbstack.dev/) (recommended on macOS)
  * [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* Generate an SSH key and add it to your SSH agent
  * `ssh-keygen -t ed25519 -C "your@email.com"`
  * `ssh-add ~/.ssh/id_ed25519`
* Run the installer (idempotent, safe to re-run)

```bash
$ ./install.sh
```

### Nix

> TODO: this section is incomplete

* Install [nix](https://github.com/DeterminateSystems/nix-installer)

* Install [home manager](https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone)
