# 09/05/22: 1er jour de stage

1. Lecture de la documentation de coccinelle
2. Essai de coccinelle sur un exemple du dossier scripts/coccinelle du code source linux
3. Tentative de build de Herodotos(infructueux car versions des dépendances différentes)
4. Début d'adaptation vers l'environnement Dune pour Herodotos pour régler les problèmes de dépendance

# 10/05/22: 2ème jour de stage
1. Continuation de l'adaptation vers l'environnement Dune (herodotos.ml -> problèmes d'adaptation du logger volt)
2. Lecture de la documentation de Bolt 

# 11/05/22: 3ème jour de stage
1. Continuation de l'adaptation vers l'environnement Dune (changement du logging implicite avec prétraitement à la version explicite)
2. Lecture de la documentation de Dune (syntaxe des stanzas)
3. Lecture de la documentation de Menhir
4. Lecture de la documentation OCaml sur les labels

# 12/05/22: 4ème jour de stage
1. Continuation de l'adaptation vers l'environnement Dune (modification du stanza pour menhir)
2. Lecture de la documentation de Org

# 13/05/22: 5ème jour de stage
1. Compilation de Herodotos avec l'environnement Dune mais non-fonctionnel (logs incorrects)
2. Tentatives de compilations avec différents paramètres pour trouver des pistes

# Bilan de la semaine du 09/05/22 au 13/05/22:
La syntaxe de Coccinelle est claire à comprendre.
Herodotos ne peut pas être compilé directement sans ajustements.
Dune permettrait de régler la plupart de mes problèmes mais à voir si j'arrive à le mettre en place pour Herodotos.
J'espère pouvoir avoir un Herodotos fonctionnel dans les semaines qui viennent.

# 16/05/22: 2ème semaine de stage jour 1
1. Refonte du projet dune (suppression des dossiers inutilisés, correction des printf, correction des types dans les logs, makefile vidé)
2. Tests avec différentes options pour ./herodotos.exe (preinit, init, graph, erase) pour voir leur effets

# 17/05/22: 2ème semaine jour 2
1. Réunion pour faire le point et répartir le travail avec un autre étudiant (je dois m'occuper de Herodotos pendant qu'il s'occupe de Grid'5000)
2. Correction d'erreurs de syntaxe du système de logging (l'ordre des arguments entre la version implicite et explicite n'est pas le même)

# 18/05/22: 2ème semaine jour 3
1. Fin de l'adaptation du système de logging
2. Test de Herodotos avec des versions de Linux, Wine, VLC et OpenSSL(celles fournies dans la base de code)
3. Recherche d'une solution pour ne plus dépendre de make(champ <code>rule</code> et de <code>action</code> dans le fichier <code>dune</code> par exemple)

# 19/05/22: 2ème semaine jour 4
1. Début de l'ajout d'une autre version de Linux (5.18.0-rc5) (il faut trouver comment l'ajouter dans la liste des versions étudiées)
2. Recherche d'arrangement pour ranger en sous-dossiers (impossible car menhir ne peut pas rechercher des fichiers .mly dans des sous-dossiers)

# 20/05/22: 2ème semaine jour 5
1. Continuation des tests avec la version de linux 5.18.0-rc5 (il manque l'application du contenu des fichiers .depend)
2. Test du mode org de emacs sur les fichiers de l'archive <code>correl.tbz2</code> (TODO/SAME/UNRELATED)

# Bilan de la semaine du 16/05/22 au 20/05/22:
Herodotos est compilé et semble fonctionner, pour reproduire l'étude de 2011 il faut avoir accès au versions de linux utilisées dans l'étude mais récupérer chacune de versions est long donc les tests se feront d'abord sur une nouvelle version ajoutée pour tester la génération des fichiers nécessaires avant de reproduire l'étude. Dans les semaines qui suivent, l'intégration de nouvelles versions devra être fonctionnelle afin de pouvoir déployer l'application sur Grid'5000 et commencer les tests nécessitant plus de ressources.

# 23/05/22: 3ème semaine jour 1
1. Continuation de la préparation pour l'ajout de la version 5.18.0-rc5 de Linux (1 cible sur les 10 de spatch a été générée)
2. Lecture de la documentation sur le langage Haskell
3. Lecture de la documentation de make

# 24/05/22: 3ème semaine jour 2
1. 2ème réunion pour faire le point, je dois faire un tableau des dépendences afin de lister les versions nécessaires à paqueter dans l'image Debian à déployer sur Grid'5000, je dois également réorganiser le code en sous-répertoires.
2. Début de la mise en forme (problème à cause de Menhir pour les parseurs contourné par des sous fichiers dune à exporter en tant que librairies mais engendre une dépendence cyclique => problème)

# 25/05/22: 3ème semaine jour 3
1. Fin de la mise en forme (le problème de dépendences cyclique a été résolu par fusion des sous dossiers même si on perd la raison de la mise en forme...)
2. Début du listage des versions des dépendences

# 27/05/22: 3ème semaine jour 4
1. Continuation du listage des versions des dépendences sous forme d'un tableau librairies/versions
2. Recherche de l'API utilisée (pour savoir quoi mettre à jour)

# Bilan de la semaine du 23/05/22 au 27/05/22:
Herodotos a été remis en forme pour rester modulable mais il reste la question de l'API pour récupérer des versions de linux à tester et de lister la totalité des dépendences dans l'optique de réaliser un package debian/ubuntu à déployé sur les machines de Grid'5000.

# 30/05/22: 4ème semaine jour 1
1. Continuation du listage des versions des dépendences sous forme d'un tableau librairies/versions
2. Modifications pour obtenir un fichier de logs(pour avoir la trace de ce qui est fait par les commandes)

# 31/05/22: 4ème semaine jour 2
1. Continuation de l'étude de l'API (elle ne fonctionne pas car les informations sont récupérées depuis des fichiers locaux et non des dépôts git distants)
2. Continuation du listage des dépendances (test de versions différentes pour savoir quelles sont les versions minimales à avoir)

# 1/06/22: 4ème semaine jour 3
1. Continuation du listage des dépendances pour en faire un package
2. Continuation de l'étude de l'API (ne fonctionne toujours pas mais fait appel à la base de données donc je vais regarder comment la base de données est implémentée)

