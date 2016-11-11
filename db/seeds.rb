# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
User.create(name: "Test", password: "password", password_confirmation: "password")

Bank.delete_all
bankOne = Bank.create(name: "OnlineBank", address: "Web Street 8")
bankTwo = Bank.create(name: "NormalBank", address: "Wall Street 123")
bankThree = Bank.create(name: "Black OnlineBank", address: "Dark Street 6")

Client.delete_all
clientOne = Client.create(name: "Max Muster", address: "Muster Str 18", brith: "2016-11-09")
clientTwo = Client.create(name: "Sam Gamschie", address: "Elbenweg 7", brith: "1970-01-10")
clientThree = Client.create(name: "Wolverine", address: "X Men Base 7", brith: "1955-02-03")

Bankaccount.delete_all
bankaccountOne = clientOne.bankaccounts.create(account_type: 1, balance: 100.00, banks_id: 1)
bankaccountTwo = clientOne.bankaccounts.create(account_type: 2, balance: 120.10, banks_id: 2)
bankaccountThree = clientTwo.bankaccounts.create(account_type: 1, balance: 140.03, banks_id: 1)
bankaccountFour = clientThree.bankaccounts.create(account_type: 2, balance: 1410.94, banks_id: 3)
