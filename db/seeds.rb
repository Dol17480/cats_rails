# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.delete_all

c1 = Cat.create({name: 'Keith', breed: 'Classic'})
c2 = Cat.create({name: 'Mick', breed: 'Cool'})
c3 = Cat.create({name: 'Ronnie', breed: 'Alley'})
c4 = Cat.create({name: 'Bill', breed: 'Lion'})
c5 = Cat.create({name: 'Charlie', breed: 'Kit'})

Person.delete_all


Person.create({ cat_id: c1.id, name: "Jim"})
Person.create({ cat_id: c2.id, name: "Bill"})
Person.create({ cat_id: c3.id, name: "Tom"})
Person.create({ cat_id: c4.id, name: "Bob"})
Person.create({ cat_id: c5.id, name: "Mike"})

Nap.delete_all
Home.delete_all


h1 = Home.create({name: 'The Lair', location: 'Bread Street'})
h2 = Home.create({name: 'Another Lair', location: 'King Stables Rd'})

Nap.create({naptime: '2017-01-17', cat_id: c1.id, home_id: h1.id})
Nap.create({naptime: '2017-01-18', cat_id: c2.id, home_id: h2.id})
Nap.create({naptime: '2017-01-19', cat_id: c3.id, home_id: h2.id})
Nap.create({naptime: '2017-02-14', cat_id: c4.id, home_id: h1.id})
Nap.create({naptime: '2017-02-14', cat_id: c5.id, home_id: h2.id})












