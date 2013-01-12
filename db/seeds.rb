# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
poll = Poll.create(name: "Наш первый опрос")
poll.items.create(name: "Да")
poll.items.create(name: "Нет")
poll.items.create(name: "Не знаю")

poll = Poll.create(name: "Еще опросик")
poll.items.create(name: "Безусловно!")
poll.items.create(name: "Ни в коем случае")
poll.items.create(name: "Почему бы и нет")

poll = Poll.create(name: "И на последок я скажу")
poll.items.create(name: "Бедный Йорик...")
poll.items.create(name: "И все так она вертится!")
