#Mini Projet : Déploiement d'une Infrastructure Complète
L'objectif de ce projet est de déployer une infrastructure complète sur AWS en utilisant Terraform. L'infrastructure se compose d'instances EC2, de volumes EBS, d'adresses IP publiques et de groupes de sécurité.
module

Voici le lien du word : https://testipformation-my.sharepoint.com/:w:/g/personal/t_krzysztofinski_ecole-ipssi_net/EUHnTHMv3aFAumihJz7Obp8BRFfToA_I7eO61IhwF4D2HQ?e=opRwfx

#Le projet est divisé en plusieurs modules Terraform.

 module ec2_instance
Ce module crée une instance EC2 avec la dernière version d'Ubuntu Bionic. Les tailles d'instance et de balise peuvent être modifiées selon les besoins.
module ebs_volume
Ce module crée un volume EBS. Vous pouvez redimensionner le volume selon vos besoins.
module public_ip
Ce module crée une adresse IP publique et l'associe à votre instance EC2. Il prend également en charge la création de groupes de sécurité.
groupe de sécurité des modules
Ce module crée un groupe de sécurité qui ouvre les ports 80 et 443 pour autoriser le trafic HTTP et HTTPS.
dossier d'application
Le dossier de l'application contient la configuration et les fichiers nécessaires pour déployer une application complète à l'aide des modules définis précédemment. Vous pouvez surcharger des variables pour rendre votre application plus dynamique.
Une fois déployé, le rôle EC2 installera Nginx sur l'instance et enregistrera l'adresse IP publique de l'instance dans un fichier nommé ip_ec2-project.txt.
utiliser

#Pour utiliser notre projet, faites ceci :

 Vérifier que Terraform est installé sur votre ordinateur. Clonez ce référentiel Git sur votre ordinateur. Modifiez les variables dans le dossier de l'application selon vos besoins. Initialisez Terraform en exécutant la commande terraform init dans le dossier de votre application. Déployez le framework en exécutant la commande terraform apply. Attendez que le déploiement soit terminé et vérifiez que Nginx est installé sur votre instance EC2. Le fichier ip_ec2-project.txt est généré avec l'adresse IP publique de votre instance EC2. N'oubliez pas de détruire votre infrastructure après utilisation en exécutant la commande terraform destroy dans le dossier de votre application. a dit
Informations d'identification AWS (clés d'accès et secrets) soit localement, soit de manière appropriée (par exemple, B. en utilisant des variables d'environnement ou des fichiers de configuration AWS.
Remarque : suivez les bonnes pratiques de sécurité et tenez compte des coûts associés à l'utilisation des ressources AWS.
