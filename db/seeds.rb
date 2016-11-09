# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.create(name: "Max Muster", address: "Muster Str 18", brith: "2016-11-09")
Bankaccount.create(account_type: 1, balance: 100.00, client_id: 1)
