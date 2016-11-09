# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.create(name: "Max Muster", address: "Muster Str 18", brith: "2016-11-09")
Bankaccount.create(account_type: 1, balance: 100.00, client_id: 1, banks_id: 1)
Bankaccount.create(account_type: 1, balance: 120.00, client_id: 1, banks_id: 2)

Client.create(name: "Sam Gamschie", address: "Elbenweg 7", brith: "1970-01-10")
Bankaccount.create(account_type: 1, balance: 140.00, client_id: 2, banks_id: 1)
