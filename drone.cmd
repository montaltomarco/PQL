reset
open drones.use

--********************Définition des Objets*****************************
-- Pour la Grille
!create g:Grille

-- Poutr les Points
!create p1 : Point
!create p2 : Point
!create p3 : Point
!create p4 : Point
!create p5 : Point
!create p6 : Point
!create p7 : Point
!create p8 : Point
!create p9 : Point
!create p10 : Point
!create p11 : Point
!create p12 : Point


-- Pour l'Entrepot
!create e : Entrepot

-- Pour les Réceptacles
!create r1 : Receptacle
!create r2 : Receptacle
!create r3 : Receptacle
!create r4 : Receptacle
!create r5 : Receptacle
!create r6 : Receptacle

-- Pour PointVide
!create v1 : PointVide
!create v2 : PointVide
!create v3 : PointVide
!create v4 : PointVide
!create v5 : PointVide

-- Pour les Drones
!create d1 : Drone
!create d2 : Drone

-- Pour les Commandes
!create c1 : Commande
!create c2 : Commande

--Pour les Produits
!create pr1 : Produit
!create pr2 : Produit
!create pr3 : Produit
!create pr4 : Produit
!create pr5 : Produit




--********************Associations des objets suivant le Diagramme de Classe*****************************
--Pour Grille_Association
!insert (g,p1) into Grille_Association
!insert (g,p2) into Grille_Association
!insert (g,p3) into Grille_Association
!insert (g,p4) into Grille_Association
!insert (g,p5) into Grille_Association
!insert (g,p6) into Grille_Association
!insert (g,p7) into Grille_Association
!insert (g,p8) into Grille_Association
!insert (g,p9) into Grille_Association
!insert (g,p10) into Grille_Association
!insert (g,p11) into Grille_Association
!insert (g,p12) into Grille_Association

--Pour Gestion_Association
!insert (e,c1) into Gestion_Association
!insert (e,c2) into Gestion_Association

--Pour Entrepot_Association
!insert (e,p9) into Entrepot_Association

--Pour Receptacle_Association
!insert (r1,p1) into Receptacle_Association
!insert (r2,p3) into Receptacle_Association
!insert (r3,p4) into Receptacle_Association
!insert (r4,p6) into Receptacle_Association
!insert (r5,p7) into Receptacle_Association
!insert (r6,p10) into Receptacle_Association

--Pour Vide_Association
!insert (v1,p2) into Vide_Association
!insert (v2,p5) into Vide_Association
!insert (v3,p8) into Vide_Association
!insert (v4,p11) into Vide_Association
!insert (v5,p12) into Vide_Association

--Pour DronesEntrepot_Association
!insert (e,d1) into DronesEntrepot_Association
!insert (e,d2) into DronesEntrepot_Association

--Pour Points_Association
!insert (p1,p2) into Points_Association
!insert (p1,p5) into Points_Association
!insert (p2,p1) into Points_Association
!insert (p2,p3) into Points_Association
!insert (p2,p6) into Points_Association
!insert (p3,p2) into Points_Association
!insert (p3,p4) into Points_Association
!insert (p3,p7) into Points_Association
!insert (p4,p3) into Points_Association
!insert (p4,p8) into Points_Association
!insert (p5,p1) into Points_Association
!insert (p5,p6) into Points_Association
!insert (p5,p9) into Points_Association
!insert (p6,p5) into Points_Association
!insert (p6,p7) into Points_Association
!insert (p6,p2) into Points_Association
!insert (p6,p10) into Points_Association
!insert (p7,p6) into Points_Association
!insert (p7,p8) into Points_Association
!insert (p7,p3) into Points_Association
!insert (p7,p11) into Points_Association
!insert (p8,p4) into Points_Association
!insert (p8,p12) into Points_Association
!insert (p8,p7) into Points_Association
!insert (p9,p10) into Points_Association
!insert (p9,p5) into Points_Association
!insert (p10,p9) into Points_Association
!insert (p10,p6) into Points_Association
!insert (p10,p11) into Points_Association
!insert (p11,p10) into Points_Association
!insert (p11,p12) into Points_Association
!insert (p11,p7) into Points_Association
!insert (p12,p8) into Points_Association
!insert (p12,p11) into Points_Association

-- Pour Drone_Association
!insert (d1,c1) into Drone_Association
!insert (d2,c2) into Drone_Association

-- Pour PositionDrone_Association
!insert (p9,d1) into PositionDrone_Association
!insert (p9,d2) into PositionDrone_Association	

-- Pour ReceptacleDrone_Association
!insert (r3,d1) into ReceptacleDrone_Association
!insert (r4,d2) into ReceptacleDrone_Association

--Pour Commande_Association
!insert (c1,r3,pr1) into Commande_Association
!insert (c1,r3,pr2) into Commande_Association
!insert (c1,r3,pr3) into Commande_Association
!insert (c2,r3,pr4) into Commande_Association
!insert (c2,r3,pr5) into Commande_Association

--********************Mise à jour des attributs des Attributs des Classes*****************************
-- Pour les Points
!set p1.estReceptacle := true
!set p1.estEntrepot:= false
!set p1.estPointVide := false
!set p1.contenancePoint := 0
!set p1.id := 1
!set p2.estReceptacle := false
!set p2.estEntrepot := false
!set p2.estPointVide := true
!set p2.contenancePoint := 0
!set p2.id := 2
!set p3.estReceptacle := true
!set p3.estEntrepot := false
!set p3.estPointVide := false
!set p3.contenancePoint := 0
!set p3.id := 3
!set p4.estReceptacle := true
!set p4.estEntrepot := false
!set p4.estPointVide := false
!set p4.contenancePoint := 0
!set p4.id := 4
!set p5.estReceptacle := false
!set p5.estEntrepot := false
!set p5.estPointVide:= true
!set p5.contenancePoint := 0
!set p5.id := 5
!set p6.estReceptacle := true
!set p6.estEntrepot := false
!set p6.estPointVide := false
!set p6.contenancePoint := 0
!set p6.id := 6
!set p7.estReceptacle := true
!set p7.estEntrepot := false
!set p7.estPointVide := false
!set p7.contenancePoint := 0
!set p7.id := 7
!set p8.estReceptacle := false
!set p8.estEntrepot := false
!set p8.estPointVide := true
!set p8.contenancePoint := 0
!set p8.id := 8
!set p9.estReceptacle := false
!set p9.estEntrepot := true
!set p9.estPointVide := false
!set p9.contenancePoint := 0
!set p9.id := 9
!set p10.estReceptacle := true
!set p10.estEntrepot := false
!set p10.estPointVide := false
!set p10.contenancePoint := 0
!set p10.id := 10
!set p11.estReceptacle := false
!set p11.estEntrepot := false
!set p11.estPointVide := true
!set p11.contenancePoint := 0
!set p11.id := 11
!set p12.estReceptacle := false
!set p12.estEntrepot := false
!set p12.estPointVide := true
!set p12.contenancePoint := 0
!set p12.id := 12

-- Pour l'Entrepot
!set e.capaciteDNB := 20
!set e.capaciteRNB := 1000

--Pour les Réceptacles
!set r1.capaciteRCAP := 200
!set r2.capaciteRCAP := 200
!set r3.capaciteRCAP := 200
!set r4.capaciteRCAP := 200
!set r5.capaciteRCAP := 200
!set r6.capaciteRCAP := 200

--Pour les Drone
!set d1.batterie := 3 
!set d1.capaciteMaxDCAP := 100
!set d1.parcoursDrone->append(p9)
!set d1.parcoursDrone->append(p5)
!set d1.parcoursDrone->append(p1)
!set d1.parcoursDrone->append(p2)
!set d1.parcoursDrone->append(p3)
!set d1.pointCourant := 0
!set d1.nbPoints := d1.parcoursDrone->size()
!set d2.batterie := 3
!set d2.capaciteMaxDCAP := 100
!set d2.parcoursDrone->append(p9)
!set d2.parcoursDrone->append(p10)
!set d2.parcoursDrone->append(p11)
!set d2.parcoursDrone->append(p7)
!set d2.parcoursDrone->append(p8)
!set d2.parcoursDrone->append(p10)
!set d2.pointCourant := 0
!set d2.nbPoints := d2.parcoursDrone->size()

check