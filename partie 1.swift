// Déclaration du tableau
var moyensDeTransport = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]

// Affichage des mots aux indices 2, 3 et 20 (inexistant)
print("Mot à l'indice 2 : \(moyensDeTransport[2])")
print("Mot à l'indice 3 : \(moyensDeTransport[3])")

// Accéder à l'indice 20 provoquera une erreur car le tableau n'a que 7 éléments

// Affichage de tous les mots
for i in 0..<moyensDeTransport.count {
  print("Moyen de transport numéro \(i) est \(moyensDeTransport[i])")
}

// Affichage des mots aux indices impairs et pairs
print("**Mots aux indices impairs :**")
for i in stride(from: 1, to: moyensDeTransport.count, by: 2) {
  print(moyensDeTransport[i])
}

print("**Mots aux indices pairs :**")
for i in stride(from: 0, to: moyensDeTransport.count, by: 2) {
  print(moyensDeTransport[i])
}

// Inversion du tableau
var moyensDeTransportInverses = moyensDeTransport.reversed()

// Insertion de nouveaux mots
moyensDeTransport.insert("camion", at: 0)
moyensDeTransport.insert("taxi", at: moyensDeTransport.count)
moyensDeTransport.insert("tracteur", at: 2)

// Affichage du tableau final
print(moyensDeTransport)
