# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create({names: 'Christian', lastNames: 'Pete', birthday: '1994-3-5',country_id:'1',gender_id: '1'})
User.create({names: 'Esteban', lastNames: 'Reyes', birthday: '1994-3-5',country_id:'1',gender_id: '1'})
User.create({names: 'Francesco', lastNames: 'Galletta',birthday: '1994-3-5',country_id:'1',gender_id: '1'})
User.create({names: 'Andres', lastNames: 'Mastro',birthday: '1994-3-5',country_id:'1',gender_id: '1'})
User.create({names: 'Andres', lastNames: 'Rodriguez',birthday: '1994-3-5',country_id:'1',gender_id: '1'})

Gender.create([gender:true]);
Gender.create([gender:false]);

Country.create([name:'Venezuela']);
Country.create([name:'Colombia']);
Country.create([name:'Peru']);
Country.create([name:'Argentina']);

Category.create([name:'sweet']);
Category.create([name:'salty']);
Category.create([name:'umami']);
Category.create([name:'sour']);
Category.create([name:'bitter']);

