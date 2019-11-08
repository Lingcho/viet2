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
Table.destroy_all
Commande.destroy_all
Boisson.destroy_all

p ""
p ""
p "Création de la base de donnée ..."
p "..................................."
p "..................................."
p "..................................."
p "..................................."

articles_test = [
  {
    nom:      "Nems",
    prixHT:   5.60
  },
  {
    nom:      "Poulet",
    prixHT:   8.80
  },
  {
    nom:      "Boeuf",
    prixHT:   9.70
  },
  {
    nom:      "Crevettes",
    prixHT:   9.50
  }
]

Article.create(articles_test)

boissons_test = [
  {
    nom:      "Verre de vin",
    prix:   2.60
  },
  {
    nom:      "Meric",
    prix:   16
  },
  {
    nom:      "Ice Tea",
    prix:   3
  },
  {
    nom:      "Coca",
    prix:   4
  }
]
Boisson.create(boissons_test)


tables_test = [
  {
    numeros: 3,
    couverts: 5
  },

  {
    numeros: 5,
    couverts: 2
  },

  {
    numeros: 7,
    couverts: 4
  }

]

Table.create(tables_test)

commandes_test = [
{
  num: 1

},
{
  num: 2

},
{
  num: 3

}

]
Commande.create(commandes_test)

p "Création terminée"


