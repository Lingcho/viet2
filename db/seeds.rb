# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Nettoyage de la base ..."
puts ">>>>>>>>>>>>>>>>>>>>>"
Article.destroy_all
Commande.destroy_all

p ""
p ""
p "Création de la base de donnée ..."
p "..................................."
p "..................................."
p "..................................."
p "..................................."


commandes_test = [
  {
    numeros:  "1",
    table: "2",
    couverts: "2"
  },
  {
    numeros:  "2",
    table: "10",
    couverts: "4"
  },
  {
    numeros:  "3",
    table: "3",
    couverts: "10"
  }
]

Commande.create(commandes_test)

articles_test = [
  {
    designation:      "Nems",
    prix:   5.60
  },
  {
    designation:      "Poulet",
    prix:   8.80
  },
  {
    designation:      "Boeuf",
    prix:   9.70
  },
  {
    designation:      "Crevettes",
    prix:   9.50
  },
  {
    designation:      "Verre de vin",
    prix:   2.60
  },
  {
    designation:      "Meric",
    prix:   16
  },
  {
    designation:      "Ice Tea",
    prix:   3
  },
  {
    designation:      "Coca",
    prix:   4
  }

]

Article.create(articles_test)





p "Création terminée"


