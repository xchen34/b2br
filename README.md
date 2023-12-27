# B2BR QUESTIONS

## Virtual Machine? 
Une machine virtuelle (VM) est un logiciel qui simule un système informatique et peut exécuter des programmes comme un vrai ordinateur.
La virtualisation permet de partager un système avec plusieurs environnements virtuels. L'hyperviseur gère le système matériel et sépare les ressources physiques des environnements virtuels. Les ressources sont gérées en fonction des besoins, de l' hôte aux invités (guests). Lorsqu'un utilisateur d'une machine virtuelle (VM) effectue une tâche nécessitant des ressources supplémentaires de l'environnement physique, l'hyperviseur gère la demande pour que le système d'exploitation invité puisse accéder aux ressources de l'environnement physique. 
Avantages:
- Économies (la virtualisation réduit les besoins en matériel)
- Isolation et Sécurité (isolation entre les VM améliore la sécurité. Un problème sur une VM n'affecte pas les autres VM)
- Développement et Test (idéales pour le développement et le test sans risquer le système principal)

## Choice of operating system? Differences between Rocky and Debian?
Debian, comme c’est recommandé pour les débutants à l’adm du système d’info. Il est plus facile à installer et à trouver des documentations.
Différences:
- Histoire
Debian existe depuis 1993 et a une communauté très active et expérimentée. Il est entièrement développé par la communauté, sans dépendance directe aux intérêts commerciaux d'une entreprise.
Rocky est récent, est une alternative à CentOS apparue en 2021, édité par une entreprise Red Hat. 
- Stabilité et Mises à Jour
Debian : Très stable avec des mises à jour moins fréquentes, idéal pour des serveurs et des environnements nécessitant une grande stabilité.
Rocky Linux : Vise une stabilité comparable à celle de RHEL, convient bien aux environnements d'entreprise.
- Support de l'Architecture
Debian : Compatible avec de nombreuses architectures, y compris le 32 bits.
Rocky Linux : Principalement axé sur les architectures 64 bits.
- Environnement de Bureau
Debian : Propose plusieurs choix d'environnements de bureau dès l'installation, tels que GNOME, KDE Plasma, LXDE, LXQt, MATE et Xfce.
Rocky Linux : GNOME est installé par défaut, mais d'autres environnements de bureau peuvent être ajoutés manuellement.
- Système de Sécurité
Debian : Utilise AppArmor pour la sécurité, un système plus simple à configurer.
Rocky Linux : Emploie SELinux, hérité de RHEL, offrant une sécurité renforcée.
- Gestion des Paquets
Debian : Utilise le gestionnaire de paquets apt, reconnu pour sa facilité d'utilisation.
Rocky Linux : Utilise yum et dnf, similaires à ceux de RHEL/CentOS, et appréciés pour leur flexibilité.

## Differences between aptitude and apt? 
Tous les deux sont des outils gestionnaire de parquet: Advanced Packaging Tool (apt) et aptitude. Le gestionnaire de paquets par défaut est dpkg.  Cependant, dans la plupart des cas, les parquets qu’on veut installer viennent avec une liste de dépendances qui doivent être installées pour que le programme principal fonctionne correctement. Une option est d'installer manuellement ces dépendances. Cependant, avec pat qui utilise dpkg peut installer toutes les dépendances nécessaires lors de l'installation d'un programme. Nous pouvons donc maintenant installer un programme utile avec une seule commande.
Apt offre une interface en ligne de commande, tandis qu'aptitude offre une interface graphique.
Face à un conflit de paquets, apt ne résoudra pas le problème tandis qu'aptitude suggérera une résolution qui peut faire l'affaire.
​Apt nécessite que l'utilisateur ait une solide connaissance des systèmes Linux et de la gestion des paquets car tout se fait en ligne de commande. Cela peut être difficile pour un novice.

## What’s APPArmor?
AppArmor (Application Armor) est un logiciel de sécurité pour Linux. Elle permet à l'administrateur système d'associer à chaque programme un profil de sécurité qui restreint ses accès au système d'exploitation, une sécurité de type Contrôle d'Accès Obligatoire (MAC).  Les profils peuvent fonctionner en mode plainte (complain-mode) et en mode application (enforce-mode). En mode application, AppArmor interdit aux applications d'effectuer des tâches restreintes. En mode plainte, AppArmor autorise les applications à réaliser ces tâches, mais crée une entrée dans le registre pour afficher la plainte. 

## LVM
LVM est un outil de gestion de volumes logiques pour les systèmes Linux. Il permet de gérer l'espace disque de manière plus flexible qu'avec la gestion traditionnelle des partitions. Avec LVM, vous pouvez :
LVM permet de créer un ou plusieurs "groupes de volumes" qui regroupent l'espace de plusieurs disques physiques.
Au sein d'un groupe de volumes, vous pouvez créer des "volumes logiques". Ces volumes logiques fonctionnent comme des partitions, mais ils sont beaucoup plus flexibles.
Avec LVM, vous pouvez redimensionner les volumes logiques à la volée, c'est-à-dire augmenter ou diminuer leur taille sans redémarrer le système et souvent sans démonter le volume. Cette opération peut être réalisée en ligne de commande avec des outils LVM.
sda : représente généralement le premier disque dur dans un système Linux. 
sda1, sda2, sda5, etc. : sont des partitions sur le disque sda. 
sda1, sda2 : sont généralement des partitions primaires. 
sda5 : est souvent une partition logique (dans le système de partitionnement traditionnel, les partitions logiques commencent à partir du numéro 5).

/boot : Contient les fichiers nécessaires au démarrage du système, y compris le noyau Linux et le chargeur de démarrage (GRUB, par exemple).
/root : Le répertoire personnel de l'utilisateur root (superutilisateur).
/swap : Espace de swap, utilisé comme mémoire virtuelle supplémentaire lorsque la RAM est pleine.
/var/log : Répertoire contenant les fichiers journaux. Important pour le diagnostic et le suivi des activités du système.
/home : Répertoires personnels des utilisateurs. Contient les fichiers personnels, les configurations, etc.
/var : Contient des données variables, comme les journaux, les mails, les bases de données, etc.
/srv : Répertoire pour les données de service. Certains systèmes stockent ici les fichiers de sites web ou d'autres services.
/tmp : Répertoire pour les fichiers temporaires. Généralement effacé au redémarrage du système.

##SSH
SSH (Secure Shell) est un protocole de réseau utilisé pour établir une communication sécurisée entre un client et un serveur.
Accès à Distance : Il est couramment utilisé pour se connecter à distance à des serveurs et à d'autres systèmes. Par exemple, vous pouvez utiliser SSH pour gérer un serveur Linux à distance.
Authentification : SSH prend en charge plusieurs méthodes d'authentification, y compris les mots de passe et les clés SSH, cette dernière étant la méthode la plus sécurisée.
Port Standard : Le port TCP standard pour SSH est 22.

## UFW
UFW (Uncomplicated Firewall) est un outil de configuration de pare-feu pour les systèmes basés sur Unix, notamment Linux. Il vise à simplifier la gestion des iptables, qui est le pare-feu intégré dans le noyau Linux. Avec UFW, vous pouvez facilement définir des règles qui contrôlent le trafic entrant et sortant. Ces règles peuvent être basées sur des ports, des protocoles et des adresses IP.

TCP est un protocole de communication fondamental utilisé dans les réseaux informatiques, notamment sur Internet. TCP est conçu pour fournir une communication fiable entre deux hôtes. 
IPv4 et IPv6
IPv4 et IPv6 sont deux versions du protocole Internet (IP) utilisées pour l'adressage dans les réseaux.
IPv4 (Internet Protocol version 4) :
Il utilise des adresses de 32 bits, généralement représentées sous forme décimale (par exemple, 192.168.1.1).
En raison de la limitation du nombre d'adresses, IPv4 est progressivement remplacé par IPv6.
IPv6 (Internet Protocol version 6) :
Il utilise des adresses de 128 bits, offrant un espace d'adressage considérablement plus vaste.
Les adresses IPv6 sont généralement représentées en hexadécimal (par exemple, 2001:0db8:85a3:0000:0000:8a2e:0370:7334).

## Cron?
Cron permet de programmer des tâches pour qu'elles s'exécutent automatiquement à des moments précis, par exemple tous les jours à minuit, chaque semaine le lundi, ou même toutes les heures.
Crontab (Cron Table) : La configuration de cron est stockée dans un fichier appelé "crontab". Chaque utilisateur sur un système peut avoir son propre crontab, en plus d'un crontab système pour des tâches administratives.
Syntaxe de Crontab : La syntaxe de crontab définit quand et comment les tâches doivent être exécutées. Elle inclut des champs pour les minutes, les heures, le jour du mois, le mois et le jour de la semaine, suivis par la commande à exécuter.

# Commands 
## simple setup
interface graphique?
'''$ dpkg -l | grep gnome'  or '$ dpkg -l | grep kde'''
ssh lancé? :
'''$ sudo service ssh status'''
ufw lancé?:
'''$ sudo ufw status numbered'''
debian installé?:
'''$ uname -a' or 'cat /etc/debian_version'''

## user
leochen dans user42 et sudo?:
'''$ getent group use42'  '$ getent group sudo'''


