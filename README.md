# Obsidian Sync

![Bash](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![Obsidian](https://img.shields.io/badge/Obsidian-%23483699.svg?style=for-the-badge&logo=obsidian&logoColor=white)

**A simple bash script to sync your Obsidian vault with a GitHub repository.**

## 🔑 SSH Setup

1. Generate key:  
    `ssh-keygen -t ed25519 -C "github_email@example.com"`
    
2. Add to GitHub:
    
- Copy key: `cat ~/.ssh/id_ed25519.pub`
	
- Paste here: [https://github.com/settings/ssh/new](https://github.com/settings/ssh/new)
    
3. In config use:  
    `REMOTE_REPO="git@github.com:user/repo.git"`
    

## 🚀 Installation
```bash
git clone https://github.com/artemventvent/ObsidianSync.git
cd ObsidianSync
sudo make install
```
## ⚙️ Config (~/.config/obsync/config)
**Edit ~/.config/obsync/config**
```
OBSIDIAN_DIR="$HOME/ObsidianVault"
REPO_DIR="$HOME/GitHub/ObsidianSync"
REMOTE_REPO="git@github.com:yourname/repo.git"
BRANCH="main"

EXCLUDE_PATTERNS=(
    ".obsidian/"
    ".trash/"
    ".git/"
    "*.tmp"
)
```
## 🔄Usage

**Basic**:
```bash
obsync -u  # Upload
obsync -d  # Download
```

**Options**:
```bash
-u, --upload        Push to GitHub
-d, --download   Pull from GitHub
-c, --config         Custom config
-v, --verbose      Detailed output
-h, --help            Show help
--version             Display version
```	

## 📄Requirements

- Bash 4.0+
- Git
- rsync
- GNU Make
## 🗑️ Uninstall

```bash
sudo make uninstall
```
