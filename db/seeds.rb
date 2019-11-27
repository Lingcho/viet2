# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tables -> Commandes
# Articles -> Articles
# Tickets -> Articles_Commandes

# Ajout de l' article 4 dans la commande A :
# a.Articles_Commandes << Articles_Commandes.create(article_id:4)


puts "Nettoyage de la base ..."
puts ">>>>>>>>>>>>>>>>>>>>>"
Article.destroy_all
Table.destroy_all
Ticket.destroy_all

p ""
p ""
p "Création de la base de donnée ..."
p "..................................."
p "..................................."
p "..................................."
p "..................................."


commandes_test = [
  {
    nom:  "1",
    couvert: "2"
  },
  {
    nom:  "2",
    couvert: "4"
  },
  {
    nom:  "3",
    couvert: "10"
  }
]

Table.create(commandes_test)

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

ticket_test = [


  {

    table_id: 1,
    article_id: 1,

  },

  {

    table_id: 1,
    article_id: 4,

  },
  {

    table_id: 1,
    article_id: 4,

  },
  {

    table_id: 1,
    article_id: 4,

  },
   {

    table_id: 3,
    article_id: 2,

  },

  {

    table_id: 3,
    article_id: 6,

  },
  {

    table_id: 3,
    article_id: 1,

  },
  {

    table_id: 3,
    article_id: 1,

  }

]

Ticket.create(ticket_test)





p "Création terminée"


