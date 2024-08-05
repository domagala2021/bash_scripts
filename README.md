"# bash_scripts" 


# ------------------------------
# INSTALCJA WSL I UBUNTU NA WSL:
# ------------------------------
#
# 1. Otworzyć cmd albo PowerShell na windows 10
# wsl --install
#
# 2. 
# Start / Microsoft Store
# Search Ubuntu / Install
#
# --------------------------------------------------------
# POBRANIE KODU Z REPOZYTORIUM W GITHUBIE DO UBUNTU W WSL:
# --------------------------------------------------------
#
# 1. Wygenerować parę kluczy w WSL (Windows(10) Subsystem for Linux):
# cd
# cd .ssh
# ssh-keygen -t ed25519 -C "domagala2021"
# more id_ed25519.pub
#
# 2. Przesłać klucz publiczny do serwisu GitHub:
# GitHub / Settings / SSH and GPG keys / New SSH key (wkleić klucz z pliku id_ed25519.pub)
#
# 3. Pobrać repozytorium z serwisu GitHub:
# git clone git@github.com:domagala2021/bash_scripts.git
#
# ----------------------------------------------------------------------------
# INTEGRACJA VS CODE Z SYSTEMEM LINUX URUCHAMIANYM WEWNĄTRZ WSL NA WINDOWS 10
# ----------------------------------------------------------------------------
#
# 1. Zainstalować rozszerzenie WSL w VS Code
#
# 2. Otworzyć kod w środowisku VS Code
# Open a Remote Window (lewy dolny narożnik aplikacji) / Connect to WSL using Distro... / Ubuntu 22.04
# File / Open Folder
# /home/domagala2021/bash_scripts
#
# 3. Uruchomienie skryptu w środowisku VS Code
#
# View / Terminal
# ./01-passing_arguments.sh
#
# ---------------------------
# PIERWSZA ZMIANA PROJEKTOWA
# ---------------------------
#
# 1. Utworzenie brancha projektowego:
#
# git branch B0001-passing_arguments
# git checkout B0001-passing_arguments
#
# 2. Zmiana projektowa:
#
# chmod +x 01-passing_arguments.sh 
#
# 3. Dodanie zmiany do staging area
# 
# git add .
#
# 4. Ustawienie nazwy użytkownika wprowadzającego zmiany w kodzie
# git config user.name "domagala2021"
#
# 5. Zatwierdzenie zmian i wysłanie do zdalnego repozutorium na githubie
#
# git commit -m "Zmiana uprawnień do pliku - executable script"
# git push --set-upstream origin B0001-passing_arguments