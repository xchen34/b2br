# B2BR QUESTIONS

## Virtual Machine? 
Une machine virtuelle (VM) est un logiciel qui simule un système informatique et peut exécuter des programmes comme un vrai ordinateur.
La virtualisation permet de partager un système avec plusieurs environnements virtuels. L'hyperviseur gère le système matériel et sépare les ressources physiques des environnements virtuels. Les ressources sont gérées en fonction des besoins, de l' hôte aux invités (guests). Lorsqu'un utilisateur d'une machine virtuelle (VM) effectue une tâche nécessitant des ressources supplémentaires de l'environnement physique, l'hyperviseur gère la demande pour que le système d'exploitation invité puisse accéder aux ressources de l'environnement physique. \  
Avantages:  \
- Économies (la virtualisation réduit les besoins en matériel)
- Isolation et Sécurité (isolation entre les VM améliore la sécurité. Un problème sur une VM n'affecte pas les autres VM)
- Développement et Test (idéales pour le développement et le test sans risquer le système principal)

## Choice of operating system? Differences between Rocky and Debian?
Debian, comme c’est recommandé pour les débutants à l’adm du système d’info. Il est plus facile à installer et à trouver des documentations.
Différences:  
- Histoire:\
Debian existe depuis 1993 et a une communauté très active et expérimentée. Il est entièrement développé par la communauté, sans dépendance directe aux intérêts commerciaux d'une entreprise.  
Rocky est récent, est une alternative à CentOS apparue en 2021, édité par une entreprise Red Hat.   
- Stabilité et Mises à Jour\
Debian : Très stable avec des mises à jour moins fréquentes, idéal pour des serveurs et des environnements nécessitant une grande stabilité.  
Rocky Linux : Vise une stabilité comparable à celle de RHEL, convient bien aux environnements d'entreprise.  
- Support de l'Architecture\
Debian : Compatible avec de nombreuses architectures, y compris le 32 bits.  
Rocky Linux : Principalement axé sur les architectures 64 bits.
- Environnement de Bureau\
Debian : Propose plusieurs choix d'environnements de bureau dès l'installation, tels que GNOME, KDE Plasma, LXDE, LXQt, MATE et Xfce.  
Rocky Linux : GNOME est installé par défaut, mais d'autres environnements de bureau peuvent être ajoutés manuellement.  
- Système de Sécurité\
Debian : Utilise AppArmor pour la sécurité, un système plus simple à configurer.  
Rocky Linux : Emploie SELinux, hérité de RHEL, offrant une sécurité renforcée.  
- Gestion des Paquets\
Debian : Utilise le gestionnaire de paquets apt, reconnu pour sa facilité d'utilisation.  
Rocky Linux : Utilise yum et dnf, similaires à ceux de RHEL/CentOS, et appréciés pour leur flexibilité.

## Differences between aptitude and apt? 
Tous les deux sont des outils gestionnaire de parquet: Advanced Packaging Tool (apt) et aptitude. Le gestionnaire de paquets par défaut est dpkg.  Cependant, dans la plupart des cas, les parquets qu’on veut installer viennent avec une liste de dépendances qui doivent être installées pour que le programme principal fonctionne correctement. Une option est d'installer manuellement ces dépendances. Cependant, avec pat qui utilise dpkg peut installer toutes les dépendances nécessaires lors de l'installation d'un programme. Nous pouvons donc maintenant installer un programme utile avec une seule commande.\
Apt offre une interface en ligne de commande, tandis qu'aptitude offre une interface graphique.  \
Face à un conflit de paquets, apt ne résoudra pas le problème tandis qu'aptitude suggérera une résolution qui peut faire l'affaire.  
​Apt nécessite que l'utilisateur ait une solide connaissance des systèmes Linux et de la gestion des paquets car tout se fait en ligne de commande. Cela peut être difficile pour un novice.\

## What’s APPArmor?
AppArmor (Application Armor) est un logiciel de sécurité pour Linux. Elle permet à l'administrateur système d'associer à chaque programme un profil de sécurité qui restreint ses accès au système d'exploitation, une sécurité de type Contrôle d'Accès Obligatoire (MAC).  Les profils peuvent fonctionner en mode plainte (complain-mode) et en mode application (enforce-mode). En mode application, AppArmor interdit aux applications d'effectuer des tâches restreintes. En mode plainte, AppArmor autorise les applications à réaliser ces tâches, mais crée une entrée dans le registre pour afficher la plainte.   

## LVM
LVM est un outil de gestion de volumes logiques pour les systèmes Linux. Il permet de gérer l'espace disque de manière plus flexible qu'avec la gestion traditionnelle des partitions. Avec LVM, vous pouvez :\  
LVM permet de créer un ou plusieurs "groupes de volumes" qui regroupent l'espace de plusieurs disques physiques.
Au sein d'un groupe de volumes, vous pouvez créer des "volumes logiques". Ces volumes logiques fonctionnent comme des partitions, mais ils sont beaucoup plus flexibles.  \
Avec LVM, vous pouvez redimensionner les volumes logiques à la volée, c'est-à-dire augmenter ou diminuer leur taille sans redémarrer le système et souvent sans démonter le volume. Cette opération peut être réalisée en ligne de commande avec des outils LVM.  \
sda : représente généralement le premier disque dur dans un système Linux.   \
sda1, sda2, sda5, etc. : sont des partitions sur le disque sda.   \
sda1, sda2 : sont généralement des partitions primaires.   \
sda5 : est souvent une partition logique (dans le système de partitionnement traditionnel, les partitions logiques commencent à partir du numéro 5).  

/boot : Contient les fichiers nécessaires au démarrage du système, y compris le noyau Linux et le chargeur de démarrage (GRUB, par exemple).\
/root : Le répertoire personnel de l'utilisateur root (superutilisateur).  \
/swap : Espace de swap, utilisé comme mémoire virtuelle supplémentaire lorsque la RAM est pleine. \ 
/var/log : Répertoire contenant les fichiers journaux. Important pour le diagnostic et le suivi des activités du système.  \
/home : Répertoires personnels des utilisateurs. Contient les fichiers personnels, les configurations, etc.  \
/var : Contient des données variables, comme les journaux, les mails, les bases de données, etc.  \
/srv : Répertoire pour les données de service. Certains systèmes stockent ici les fichiers de sites web ou d'autres services. \ 
/tmp : Répertoire pour les fichiers temporaires. Généralement effacé au redémarrage du système.  

##SSH
SSH (Secure Shell) est un protocole de réseau utilisé pour établir une communication sécurisée entre un client et un serveur.\
Accès à Distance : Il est couramment utilisé pour se connecter à distance à des serveurs et à d'autres systèmes. Par exemple, vous pouvez utiliser SSH pour gérer un serveur Linux à distance.  \
Authentification : SSH prend en charge plusieurs méthodes d'authentification, y compris les mots de passe et les clés SSH, cette dernière étant la méthode la plus sécurisée. \  
Port Standard : Le port TCP standard pour SSH est 22. 

## UFW
UFW (Uncomplicated Firewall) est un outil de configuration de pare-feu pour les systèmes basés sur Unix, notamment Linux. Il vise à simplifier la gestion des iptables, qui est le pare-feu intégré dans le noyau Linux. Avec UFW, vous pouvez facilement définir des règles qui contrôlent le trafic entrant et sortant. Ces règles peuvent être basées sur des ports, des protocoles et des adresses IP.  

TCP est un protocole de communication fondamental utilisé dans les réseaux informatiques, notamment sur Internet. TCP est conçu pour fournir une communication fiable entre deux hôtes.   \
IPv4 et IPv6  \
IPv4 et IPv6 sont deux versions du protocole Internet (IP) utilisées pour l'adressage dans les réseaux. 
IPv4 (Internet Protocol version 4) :  \
Il utilise des adresses de 32 bits, généralement représentées sous forme décimale (par exemple, 192.168.1.1).\
En raison de la limitation du nombre d'adresses, IPv4 est progressivement remplacé par IPv6.\
IPv6 (Internet Protocol version 6) :  \
Il utilise des adresses de 128 bits, offrant un espace d'adressage considérablement plus vaste.\
Les adresses IPv6 sont généralement représentées en hexadécimal (par exemple, 2001:0db8:85a3:0000:0000:8a2e:0370:7334).

## Cron?
Cron permet de programmer des tâches pour qu'elles s'exécutent automatiquement à des moments précis, par exemple tous les jours à minuit, chaque semaine le lundi, ou même toutes les heures.  \
Crontab (Cron Table) : La configuration de cron est stockée dans un fichier appelé "crontab". Chaque utilisateur sur un système peut avoir son propre crontab, en plus d'un crontab système pour des tâches administratives.\
Syntaxe de Crontab : La syntaxe de crontab définit quand et comment les tâches doivent être exécutées. Elle inclut des champs pour les minutes, les heures, le jour du mois, le mois et le jour de la semaine, suivis par la commande à exécuter.  

## Password policy advantagesssssssssssss
### Avantages de la Politique de Mot de Passe :
- Amélioration de la Sécurité : Une politique de mot de passe stricte augmente la sécurité des comptes en exigeant des mots de passe plus complexes (longueur, types de caractères, etc.).
- Prévention des Accès Non Autorisés : Les mots de passe complexes sont plus difficiles à deviner ou à pirater, réduisant ainsi le risque d'accès non autorisé.
- Conformité aux Meilleures Pratiques de Sécurité : Le changement régulier de mot de passe et les exigences de complexité sont conformes aux meilleures pratiques de sécurité en ligne.
- Réduction du Risque de Réutilisation des Mots de Passe : En exigeant que les nouveaux mots de passe diffèrent significativement des anciens, on diminue la tendance des utilisateurs à réutiliser les anciens mots de passe ou des mots de passe similaires.
### Avantages de l'Implémentation :
- Automatisation et Uniformité : L'application de la politique de mot de passe via PAM (Pluggable Authentication Modules) assure que tous les utilisateurs suivent les mêmes règles.
- Flexibilité : Les administrateurs peuvent ajuster la politique de mot de passe selon les besoins, comme modifier la longueur minimale du mot de passe, les exigences de complexité, etc.
- Feedback Immédiat : Les utilisateurs reçoivent immédiatement des retours d'information si le mot de passe créé ou modifié ne respecte pas les exigences de la politique.

### Inconvénients de l'Implémentation :
- Inconvénient pour les Utilisateurs : Des exigences plus strictes peuvent rendre les mots de passe difficiles à retenir, conduisant les utilisateurs à les noter ou à utiliser des gestionnaires de mots de passe.
- Coût de Gestion : La maintenance et la mise à jour des politiques de mot de passe peuvent nécessiter un travail administratif et de surveillance supplémentaire.
- Résistance Potentielle des Utilisateurs : Les utilisateurs peuvent être mécontents ou dérangés par la nécessité de changer fréquemment de mots de passe complexes.

## Interets et fonctionnement de SUDO with exemples:
sudo(superuser do") est une commande essentielle dans les systèmes Linux et Unix, permettant aux utilisateurs ordinaires d'exécuter des commandes en tant qu'un autre utilisateur, généralement l'utilisateur superuser (root). Cela est crucial pour la gestion du système et le contrôle des permissions. 
### avantages:
  - Sécurité: les administrateurs système peuvent attribuer des permissions d'administrateur spécifiques aux utilisateurs ordinaires sans partager le mot de passe du compte root. Cela réduit l'accès direct au compte root et augmente la sécurité du système.\
    - Suivi : Enregistre toutes les commandes exécutées avec sudo, facilitant l'audit des activités des utilisateurs.
### Fonctionnement de sudo
- L'utilisateur exécute une commande précédée de sudo.
- Le système vérifie les droits de l'utilisateur dans le fichier /etc/sudoers.
- Si autorisé, l'utilisateur entre son mot de passe.
- La commande est exécutée avec les privilèges de root ou de l'utilisateur spécifié.
exemple:  sudo vim /etc/sudoers      si pas de 'sudo' on peut pas voir le contenu du fichier


# Commands 
AppArmor: `$ service apparmor status`\
## simple setup
interface graphique?  \
`$ dpkg -l | grep gnome`  or `$ dpkg -l | grep kde`  \
ssh lancé? :  \
` $ sudo service ssh status `  \
ufw lancé?:  \
`$ sudo ufw status numbered`  \
debian installé?:  \
`$ uname -a' or 'cat /etc/debian_version `  

## user
leochen dans user42 et sudo?:  \
`$ getent group user42'  '$ getent group sudo`  \
creer new user and add to groups:\
`$ sudo adduser <xxx>`
`$ sudo addgroup evaluating`
`$ sudo adduser <xxx> evaluation`
`$ sudo passwd <xxx>`  #change pswd  `$ sudo chage -l <xxx>` #check password policy for xxx
`$ getent group evaluating`

#Install Password Quality Checking Library $sudo apt install libpam-pwquality and then modify the config in differents files
`$ vim /etc/security/pwquality.conf` or `$ vim /etc/pam.d/common-password`
```
difok = 7   
minlen = 10  
dcredit = -1  
ucredit = -1  
lcredit = -1   
maxrepeat = 3   
usercheck = 1 (common-password里面是reject_username)
retry = 3   
enforce_for_root
```

`$ vim /etc/login.defs`\
```
PASS_MAX_DAYS	30      
PASS_MIN_DAYS	2    
PASS_WARN_AGE 7
```

## hostname and partitions
Check current hostname:  `$ hostnamectl`\
Change the hostname: `$ hostnamectl set-hostname <new_hostname>`\
Change /etc/hosts file: `$ sudo vim /etc/hosts`\
Change old_hostname with new_hostname:\
127.0.0.1       localhost\
127.0.0.1       new_hostname\
Reboot and check the change: `$ sudo reboot`\

check partition `$ lsblk` 

## sudo
sudo installed?: ` $dpkg -l | grep sudo` or `$ sudo -V` or `$which sudo`
add new user to sudo group: `$sudo adduser <xxx> sudo  ` check `sudo groups xxx ` or `sudo getent group sudo`
la mise en place des regles strictes de SUDO:
`$ mkdir /var/log/sudo`
`$ touch /var/log/sudo/sudo.log` 
`$ sudo vim /etc/sudoers`  or `sudo visudo`
```
Defaults    passwd_tries=3 #3 tentative pour utilise le sudo
Defaults    badpass_message="<you message when some enter a wrong password>"
Defaults    logfile="/var/log/sudo/sudo.log"
Defaults    log_input,log_output On souhaite récupérer les log d'inpute et d output
Defaults    requiretty  #Requiretty exige une console pour utiliser sudo
Defaults    secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin“
```
check sudo.log exsistence and its content
`$ cd /var/log/sudo`
`$ ls`  #check if at least sudo.log file
`$ cat sudo.log` #see its content
run a command and re-check sudo.log `$sudo apt update`
`$ cat sudo.log` #see last line
exemple avec sudo: ` $sudo vim /etc/sudoers` #si pas de 'sudo' on peut pas voir le contenu du fichier

## UFW

## SSH

## Script

## Bonus




