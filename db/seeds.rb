# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying beers"
Beer.destroy_all

Beer.create(name:'Dois Corvos', category: 'Blonde Ale', alcohol:'4', ibu: 3, temperature: 13, description: 'So good')
Beer.create(name:'8ª Colina', category: 'IPA', alcohol:'5.1', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'+351', category: 'Weiss', alcohol:'3.3', ibu: 2, temperature: 13, description: 'Refreshing and light')
Beer.create(name:'Florinda', category: 'Lager', alcohol:'3.1', ibu: 2, temperature: 13, description: '')
Beer.create(name:'Nortada', category: 'Brown Porter', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'Mean Sardine', category: 'Brown Porter', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'Biltre', category: 'American Pale Ale', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'Maldita', category: 'Bohemian Pilsener', alcohol:'2.9', ibu: 4, temperature: 13, description: 'So awesome')


puts "beers created"

