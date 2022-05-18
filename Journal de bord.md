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
