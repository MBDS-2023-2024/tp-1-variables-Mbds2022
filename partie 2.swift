// Déclaration des dictionnaires
var personnes = [
  ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010],
  ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008],
  ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005],
  ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010],
  ["nom": "François", "sexe": "M", "annee_naissance": 1980],
  ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995],
]

// Fonction pour formater l'affichage
func formaterAffichage(nom: String, sexe: String, anneeNaissance: Int) -> String {
  let genre = sexe == "M" ? "né" : "née"
  return "\(nom) est \(genre) en \(anneeNaissance)"
}

// Affichage des noms et dates de naissance
for personne in personnes {
  let nom = personne["nom"] as! String
  let sexe = personne["sexe"] as! String
  let anneeNaissance = personne["annee_naissance"] as! Int
  print(formaterAffichage(nom: nom, sexe: sexe, anneeNaissance: anneeNaissance))
}

// Affichage des personnes majeures
let age Majeur = 18
let personnesMajeures = personnes.filter { $0["annee_naissance"] as! Int <= 2004 }
for personne in personnesMajeures {
  let nom = personne["nom"] as! String
  print(nom)
}

// Affichage des filles et des garçons
print("**Filles :**")
for personne in personnes where personne["sexe"] as! String == "F" {
  let nom = personne["nom"] as! String
  print(nom)
}

print("**Garçons :**")
for personne in personnes where personne["sexe"] as! String == "M" {
  let nom = personne["nom"] as! String
  print(nom)
}

// Ajout d'une nouvelle personne
personnes.append(["nom": "Léa", "sexe": "F", "annee_naissance": 2002])

// Affichage du tableau final
print(personnes)
