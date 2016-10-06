require 'open-uri'      #Charge les fonctionnalités du module de gestion des url
require 'json'          #Charges le module permettant de lire les fichiers json

loop do
  puts "Entrez un numero de Code Barre:"
  bar_code = gets.chomp   #Convertit la saisie en variable

# Variable qui a pour valeur l'adresse du code barre

  url = "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

# Ouverture du fichier dans une variable

  json = open(url).read

# conversion du fichier json dans une variable

  data = JSON.parse(json)

# Visualisation des données

  puts data['product']['product-name']

end
