# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "destroying beers"
Beer.destroy_all

beer1 = Beer.create(name:'Dois Corvos', category: 'Blonde Ale', alcohol:'4', ibu: 3, temperature: 13, description: 'So good')
beer2 = Beer.create(name:'8ª Colina', category: 'IPA', alcohol:'5.1', ibu: 4, temperature: 13, description: 'So awesome')
beer3 = Beer.create(name:'Coruja', category: 'Amber Lager', alcohol:'3', ibu: 2, temperature: 10, description: 'Incredible taste')

puts "beers created"


