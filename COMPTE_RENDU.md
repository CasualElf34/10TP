# Compte-Rendu des TPs Flutter (1 à 10)

Ce document contient les réponses pédagogiques demandées dans chaque TP ainsi que les guides pour vos captures d'écran.

---

## TP 1 — Création et Structure
**Rôles des éléments clés :**
- **main.dart** : Point d'entrée de l'application. Contient la fonction `main()` qui lance le widget racine.
- **lib/** : Dossier contenant tout le code source Dart de l'application.
- **android/** : Contient les fichiers de configuration spécifiques à la plateforme Android (Gradle, Manifest, etc.).
- **pubspec.yaml** : Fichier de configuration du projet (nom, version, dépendances, assets).

**Captures à réaliser :**
1. Résultat de `flutter doctor` dans le terminal.
2. Écran de création du projet dans Android Studio.
3. Arborescence du projet visible dans la barre latérale.
4. Fenêtre du Device Manager avec l'émulateur lancé.
5. L'application par défaut (ou la home page) affichée sur l'émulateur.

---

## TP 2 — Comprendre main.dart
**Différence entre MaterialApp et Scaffold :**
- **MaterialApp** : C'est le widget racine qui configure le design système (Material), les thèmes, et les routes de toute l'application.
- **Scaffold** : C'est un widget qui fournit la structure visuelle d'un écran spécifique (AppBar, Body, BottomNavigationBar, FloatingActionButton).

---

## TP 3 — Widgets et Layout
**Pourquoi Expanded est-il utile dans un Row ?**
`Expanded` permet à un widget enfant de remplir l'espace disponible restant dans l'axe principal (horizontal pour un `Row`). Sans lui, si les enfants sont trop larges, cela provoque une erreur de dépassement (overflow).

---

## TP 4 — StatefulWidget
**Pourquoi setState() est-il nécessaire ?**
`setState()` informe le framework Flutter que l'état interne d'un widget a changé. Cela déclenche une reconstruction (`build`) de l'interface utilisateur pour refléter les nouvelles valeurs à l'écran.

---

## TP 5 — Formulaires
**À quoi sert un TextEditingController ?**
Il permet de manipuler le texte d'un `TextField` par programmation : lire la valeur saisie, la modifier, ou vider le champ. Il doit être libéré via `dispose()` pour éviter les fuites de mémoire.

---

## TP 6 — Navigation
**Différence entre application mono-écran et multi-écrans :**
Une application multi-écrans utilise une pile de navigation (`Navigator`). Cela permet de séparer les fonctionnalités, d'améliorer l'expérience utilisateur avec des transitions, et de gérer un historique de navigation (bouton retour).

---

## TP 7 — Liste Dynamique
**Pourquoi ListView.builder est préférable à une liste codée en dur ?**
`ListView.builder` est "lazy" : il ne construit que les éléments visibles à l'écran. C'est crucial pour la performance et l'utilisation de la mémoire quand la liste contient des centaines ou milliers d'éléments.

---

## TP 8 — API REST
**Pourquoi l'appel API ne doit pas être placé directement dans build() ?**
La méthode `build()` est appelée très fréquemment (à chaque rafraîchissement d'écran). Y placer un appel API déclencherait des requêtes réseau incessantes, ralentissant l'app et surchargeant le serveur. On utilise `initState()` pour ne lancer l'appel qu'une seule fois au chargement.

---

## TP 9 — Firebase
**À quoi sert Firebase.initializeApp() ?**
Cette méthode établit la connexion entre l'application Flutter et les serveurs Firebase en utilisant les options de configuration (API keys, IDs) spécifiques à chaque plateforme.

---

## TP 10 — Conclusion Personnelle
**Difficultés rencontrées :**
- Configuration initiale de l'environnement et de l'émulateur.
- Compréhension de la gestion d'état et du cycle de vie des widgets.
- Séparation du code en plusieurs fichiers pour maintenir une structure propre.

**Acquis techniques :**
- Maîtrise des widgets de base et complexes.
- Consommation d'APIs tierces et formatage de données JSON.
- Navigation structurée et architecture de fichiers professionnelle.
