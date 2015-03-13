A METTRE DANS LA CONSOLE :

read Google Drive/Hexanome H4112/Projet QL/UML/drone.cmd
read Documents/4IF/Qualite_Logicielle/PQL/drone.cmd

PS : Use va toujours commencer la lecture dans votre dossier Home et non à partir de l'endroit où il est exécuté.


DONE : 

- //Facultatif : Remplacer le estSurvole() par un nombre pour limiter à 1 le nombre de drône sur la grille (c'est un invariant à mettre pour la classe Point) ;

- Il ne faut pas plus de trois drônes autour d'un point occupé ;


TO DO : 

 - Faire les machines à état pour que les drones puisse se déplacer dans la Grille ;

 - Prendre en considération le temps (le prof a dit que ça pouvait se faire avec le modèle du train mais je n'ai pas d'idée sur comment l'implémenter)

 - Les pré et post conditions sont pour les états du drone ;

 - La cloture du chemin d'un drone quand il est en état de livraison doit être un réceptacle et son début doit être un entrepôt ;

or (self.estReceptacle = true and self.estEntrepot = false and self.estPointVide = false) or (self.estReceptacle = false and self.estEntrepot = true and self.estPointVide = false) or (self.estReceptacle = false and self.estEntrepot = false and self.estPointVide = true)
