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


beer = Beer.create(name:'Dois Corvos', category: 'Blonde Ale', alcohol:'4', ibu: 3, temperature: 13, description: 'So good')
beer1 = Beer.create(name:'8ª Colina', category: 'IPA', alcohol:'5.1', ibu: 4, temperature: 13, description: 'So awesome')
beer2 = Beer.create(name:'+351', category: 'Weiss', alcohol:'3.3', ibu: 2, temperature: 13, description: 'Refreshing and light')
beer3 =Beer.create(name:'Florinda', category: 'Lager', alcohol:'3.1', ibu: 2, temperature: 13, description: '')
beer4 =Beer.create(name:'Nortada', category: 'Brown Porter', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
beer5 =Beer.create(name:'Mean Sardine', category: 'Brown Porter', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
beer6 =Beer.create(name:'Biltre', category: 'American Pale Ale', alcohol:'2.6', ibu: 4, temperature: 13, description: 'So awesome')
beer7 =Beer.create(name:'Maldita', category: 'Bohemian Pilsener', alcohol:'2.9', ibu: 4, temperature: 13, description: 'So awesome')
beer8 =Beer.create(name:'Mick Lager', category: 'Vienna Lager', alcohol:'4.5', ibu: 20, temperature: 13, description: 'Amber colour. Toasted malt notes complemented by an assertive bouquet of german hops. Delicate and smooth. One problem though: an irresistible urge to keep drinking.')


puts "beers created"

bar = Bar.create(name: 'Cerveja Canil', description: 'The Cerveja Canil is the greatest reference in craft beer in Portugal. With 32 taps (the biggest in the country) and over a hundred bottled labels, we are always looking for what is new and best in Portuguese crafbeer.', location: 'Rua dos Douradores 133', city: 'Lisbon', country: 'Portugal')
bar1 = Bar.create(name: 'Musa da Bica - Craft Beer Bar', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', location: 'Calcada Salvador Correia de Sa 2', city: 'Lisbon', country: 'Portugal')
bar2 = Bar.create(name: 'Fábrica Musa', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', location: '83 Rua do Açúcar Marvila', city: 'Lisbon', country: 'Portugal')
bar3 = Bar.create(name: 'Outro Lado', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', location: '1 Beco do Arco Escuro', city: 'Lisbon', country: 'Portugal')

puts 'bars created'

puts "adding photos"
# file = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606249754/Beerware/Beers/dois_yy0rws.webp')
# beer.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file1 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606249850/Beerware/Beers/8a_dpwkqp.jpg')
# beer1.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file2 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606249851/Beerware/Beers/351_v59f4u.jpg')
# beer2.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file3 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250220/Beerware/Beers/florinda_ndykgp.webp')
# beer3.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file4 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250123/Beerware/Beers/nortada_aqjotn.jpg')
# beer4.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file5 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250123/Beerware/Beers/mean_s_o96ql7.jpg')
# beer5.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file6 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250123/Beerware/Beers/bilitre_uybubq.jpg')
# beer6.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file7 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250124/Beerware/Beers/matilda_wxpr4g.jpg')
# beer7.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file8 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606247256/Beerware/Beers/mick_copo_blsgxn.png')
# beer8.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
