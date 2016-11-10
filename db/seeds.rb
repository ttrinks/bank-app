# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bankOne = Bank.create(name: "OnlineBank", address: "Web Street 8")
bankTwo = Bank.create(name: "NormalBank", address: "Wall Street 123")
bankThree = Bank.create(name: "Black OnlineBank", address: "Dark Street 6")

clientOne = Client.create(name: "Max Muster", address: "Muster Str 18", brith: "2016-11-09")
clientTwo = Client.create(name: "Sam Gamschie", address: "Elbenweg 7", brith: "1970-01-10")
clientThree = Client.create(name: "Wolverine", address: "X Men Base 7", brith: "1955-02-03")

bankaccountOne = clientOne.bankaccounts.create(account_type: 1, balance: 100.00, banks_id: 1)
bankaccountTwo = clientOne.bankaccounts.create(account_type: 2, balance: 120.10, banks_id: 2)
bankaccountThree = clientTwo.bankaccounts.create(account_type: 1, balance: 140.03, banks_id: 1)
bankaccountFour = clientThree.bankaccounts.create(account_type: 2, balance: 1410.94, banks_id: 3)

User.delete_all
User.create(name: "Timm", password: "password", password_confirmation: "password")

Poll.delete_all
Number.delete_all
ParticipationToken.delete_all
n = 40
range = 8
poll = Poll.create(name: "Poll with all answers", participants: n, open:true, public_result: false, instant_result:true)
tokens = poll.participation_tokens.map{|t| t.participation_key}
tokens.map{|key |poll.numbers.create(hours: rand(range+1), participation_key: key)}

poll = Poll.create(name: "Poll with half the answers", participants: n, open:true, public_result: false, instant_result:true)
tokens = poll.participation_tokens.map{|t| t.participation_key}
tokens = tokens[0..n/2]
tokens.map{|key |poll.numbers.create(hours: rand(range+1), participation_key: key)}

poll = Poll.create(name: "Poll with no answers", participants: n, open:true, public_result: false, instant_result:true)
