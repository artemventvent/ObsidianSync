# Obsidian Sync

![Bash](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![Obsidian](https://img.shields.io/badge/Obsidian-%23483699.svg?style=for-the-badge&logo=obsidian&logoColor=white)

A simple bash script to sync your Obsidian vault with a GitHub repository.

## Features

- Two-way synchronization between Obsidian vault and GitHub
- Rsync-based file transfers
- Custom exclude patterns
- Private repo support
- Easy Makefile installation

## Installation

1. Clone repo:
	```bash
	git clone https://github.com/yourusername/obsync.git
	cd obsync
	```

2. Install:
	```bash
	sudo make install
	```
## Configuration

Edit ~/.config/obsync/config:
## Usage

Basic:
```bash
obsync -u  # Upload
obsync -d  # Download
```

Options:
```bash
-u, --upload        Push to GitHub
-d, --download   Pull from GitHub
-c, --config         Custom config
-v, --verbose      Detailed output
-h, --help            Show help
--version             Display version
```	
## Uninstall

```bash
sudo make uninstall
```

## Requirements

- Bash 4.0+
- Git
- rsync
- GNU Make
