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
Bar.destroy_all


Beer.create(name:'Dois Corvos', category: 'Blonde Ale', alcohol:'4', ibu: 3, temperature: 13, description: 'The name Avenida is a tribute to Lisbon neighborhood life. It is also a great beer to drink on the street, on the terrace, while enjoying the bustle of the city. Avenida is a light beer, easy to drink, with a match between the malt biscuit and German yeast. Slightly cloudy, white foam.')
Beer.create(name:'8ª Colina', category: 'IPA', alcohol:'5.1', ibu: 4, temperature: 13, description: 'Cult beer in Portugal, Urraca is a woman of fire. Fruity aromas and intense bitterness in a classic IPA, with dry hop by Citra and Cascade.')
Beer.create(name:'+351', category: 'Weiss', alcohol:'3.3', ibu: 2, temperature: 13, description: 'Refreshing and light')
Beer.create(name:'Florinda', category: 'Lager', alcohol:'3.1', ibu: 2, temperature: 13, description: '')
Beer.create(name:'Nortada', category: 'Brown Porter', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'Mean Sardine', category: 'Brown Porter', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'Biltre', category: 'American Pale Ale', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'Maldita', category: 'Bohemian Pilsener', alcohol:'2.9', ibu: 4, temperature: 13, description: 'So awesome')
Beer.create(name:'Mick Lager', category: 'Vienna Lager', alcohol:'4.5', ibu: 20, temperature: 13, description: 'Amber colour. Toasted malt notes complemented by an assertive bouquet of german hops. Delicate and smooth. One problem though: an irresistible urge to keep drinking.')


puts "beers created"

Bar.create(name: 'Cerveja Canil', description: 'The Cerveja Canil is the greatest reference in craft beer in Portugal. With 32 taps (the biggest in the country) and over a hundred bottled labels, we are always looking for what is new and best in Portuguese crafbeer.', location: 'Rua dos Douradores 133', city: 'Lisbon', country: 'Portugal')
Bar.create(name: 'Musa da Bica - Craft Beer Bar', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', location: 'Calcada Salvador Correia de Sa 2', city: 'Lisbon', country: 'Portugal')
Bar.create(name: 'Fábrica Musa', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', location: '83 Rua do Açúcar Marvila', city: 'Lisbon', country: 'Portugal')
Bar.create(name: 'Outro Lado', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', location: '1 Beco do Arco Escuro', city: 'Lisbon', country: 'Portugal')

puts 'bars created'
