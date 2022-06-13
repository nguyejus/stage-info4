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

# 2/06/22: 4ème semaine jour 4
1. 3ème réunion pour faire le point: En plus des dépendances, je dois aussi lister les outils utilisés (comme git), je dois également faire de la documentation pour l'utilisation des différentes options de Herodotos

# 3/06/22: 4ème semaine jour 5
1. Début de la rédaction de la documentation sur les options d'Herodotos
2. Continuation du listage des dépendances et des outils avec des versions antérieures
3. Test de l'outil de comptage de lignes de codes de Faults in Linux

# Bilan de la semaine du 30/05/22 au 3/06/22:
Le travail de documentation a été commencé afin de faciliter l'utilisation et les modifications futures. L'implémentation d'un marqueur signifiant qu'une information n'est pas présente devrait permettre de sélectionner quels tests sont possibles.

# 7/06/22: 5ème semaine jour 1
1. Continuation de la rédaction de la documentation sur les options d'Herodotos
2. Continuation du listage des dépendances et des outils avec des versions antérieures

# 8/06/22: 5ème semaine jour 2
1. Debuggage de count_lines de Faults in Linux (le test précédemment fait était erroné et de nouvelles erreurs sont apparues)
2. Continuation de la rédaction de la documentation sur les options d'Herodotos (il manque encore la documentation sur le remplissage automatique des parties manquantes)
3. Continuation du listage des dépendances et des outils avec des versions antérieures

# 9/06/22: 5ème semaine jour 3
1. 4ème réunion pour faire le point: count_lines n'est plus à jour mais le code est assez ancien -> pas une priorité à mettre à jour, faire des graphes n'est plus nécessaire quand on aura la base de données
2. Je suis allé faire un test covid (mon collègue a contracté la maladie) mais le résultat est négatif

# 10/06/22: 5ème semaine jour 4
1. Ajout d'un makefile pour vérifier la présence de sloccount pour compter le nombre de lignes de code de chaque version de linux
2. Test sur la version linux-5.18.0-rc5 : il y a 22,665,813 lignes de code

# Bilan de la semaine du 07/06/22 au 10/06/22:
Mon travail sur le count_lines de Faults in linux n'était pas nécessaire car on peut utiliser sloccount avec linux-infra mais j'ai pu voir comment les primitives ont changé dans le code source de coccinelle. Mon collègue ne pourra pas revenir avant 10 jours, ce qui compliquera la collaboration sur le projet (je ne pourrait pas répondre à ses questions aussi facilement, et je ne pourrais pas faire des tests sur une autre machine que la mienne)

# 13/06/22: 6ème semaine jour 1
1. Modification de linux-infra pour récupérer les versions de linux à étudier (3.x 4.x 5.x)
2. Test sur les versions 5.x et test de sloccount sur les versions

