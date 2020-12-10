# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "destroying beers"
BarsBeer.destroy_all
Beer.destroy_all
Bar.destroy_all

puts 'adding bars'
cervejaCanil = Bar.create(name: 'Cerveja Canil', description: 'The Cerveja Canil is the greatest reference in craft beer in Portugal. With 32 taps (the biggest in the country) and over a hundred bottled labels, we are always looking for what is new and best in Portuguese crafbeer.', street_address: 'Rua dos Douradores 133, Lisbon', location: 'Baixa', city: 'Lisbon', country: 'Portugal')
musaDaBica = Bar.create(name: 'Musa da Bica - Craft Beer Bar', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', street_address: 'Calcada Salvador Correia de Sa 2, Lisbon', location: 'Bica', city: 'Lisbon', country: 'Portugal')
fabricaMusa = Bar.create(name: 'Fábrica Musa', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', street_address: '83 Rua do Açúcar, Lisbon', location: 'Marvila', city: 'Lisbon', country: 'Portugal')
outroLado = Bar.create(name: 'Outro Lado', description: 'Musa da Bica is Cerveja Musa\'s new taproom in one of Lisbon\'s most historic neighborhoods; Bica. We have 15 open taps and a food menu that complements them perfectly. Come check it out!', street_address: '1 Beco do Arco Escuro, Lisbon', location: 'Alfama', city: 'Lisbon', country: 'Portugal')
deliriumCafe = Bar.create(name: 'Delirium Cafe', description: 'A Baixa de Lisboa foi invadida por elefantes cor de rosa e não tem nada a ver com alguma substância ilícita que possa ter tomado. A culpa é do novo bar de cervejas na cidade onde o paquiderme em tons rosa vive um pouco por todo o lado: nas paredes, nos copos, nas bases, nas torneiras, nas mesas e até garrafas. Chama-se Delirium Café.', street_address:'Calçada Nova de São Francisco, 2 A, Lisbon', location: 'Chiado', city: 'Lisbon', country: 'Portugal')
beerStation= Bar.create(name: 'Beer station', description: 'Junto à estação do Rossio e mais virada para os turistas que por ali passam, a Beer Station é um pequeno bar de cervejas artesanais dos mesmos donos do Wine & Pisco, ali mesmo ao lado. Começou por misturar cerveja artesanal lisboeta e internacional, mas mais recentemente afastou-se do estrangeiro. Neste momento, só vale cerveja portuguesa, espalhada por 12 torneiras e mais de 50 referências em garrafa.', street_address: 'Largo Duque de Cadaval 17, Quiosque D, 1200-160, Lisbon', location: 'Rossio', city: 'Lisbon', country: 'Portugal')
cerveteca = Bar.create(name: 'Cerveteca', description: 'As cervejas artesanais são feitas de valores, de ideias, de conceitos. Têm um nome e um rosto associados. São feitas por pessoas reais, que amam as suas cervejas e que nelas imprimem o cunho do seu país, da sua cidade, do seu bairro, da sua casa, da sua vida. Pessoas que são felizes quando partilham - literalmente - a paixão que os move, todos os dias. Foi com base neste conceito que nasceu a Cerveteca Lisboa. Um lugar para partilhar e apreciar muito mais do que cabe numa simples garrafa de cerveja.', street_address: 'Praça das Flores 63, 1200-192, Lisbon', location: 'Príncipe Real', city: 'Lisbon', country: 'Portugal')
sputnik = Bar.create(name: 'Sputnik', description: 'O menu deste pub & bar é recomendado para os amantes da culinária. É agradável provar boa cerveja artesanal. A atmosfera exótica é característico de pub & bar Sputnik Craft Beer.', street_address: 'Rua Andrade (41a) 1170-014, Lisbon', location: 'Arroios', city: 'Lisbon', country: 'Portugal')
cervejaLince = Bar.create(name: 'Cerveja Lince', description: 'Este projecto tem um objectivo: fazer cerveja de qualidade, para quem não suporta a monotonia das cervejas industriais. E tem uma causa: o apoio à protecção e conservação do lince ibérico, um dos animais mais bonitos e mais raros do nosso País.', street_address: 'Rua Capitão Leitão 1B 1950-049, Lisbon', location: 'Marvila', city: 'Lisbon', country: 'Portugal')
duqueBrewpub = Bar.create(name: 'Duque Brewpub', description: 'Aberto em 2016 o Duque é o primeiro brewpub a surgir em Lisboa. Munido de 12 torneiras onde para além das cervejas produzidas no local (capacidade para 3x250Litros/mês) existem também outras marcas de cerveja artesanal portuguesa com mais de 50 rótulos diferentes em garrafa. Como nem só de cerveja o Homem sobrevive dispomos também de alguns petiscos para acompanhar as nossas cervejas quer seja no interior ou na nossa esplanada.', street_address: 'Calçada do Duque, Nº 49-51, , Lisbon', location: 'Chiado', city: 'Lisbon', country: 'Portugal')
quimera = Bar.create(name: 'Quimera Brewpub', description: 'Quimera Brewpub is a mix of Portugal History and modern CRAFT people. Welcome to a dream! Craft Beer, good music and  GOOD FOOD inside an 18th century ROYAL TUNNEL!', street_address: 'Rua Prior do Crato 6, Lisbon', location: 'Alcântara', city: 'Lisbon', country: 'Portugal')
piratasCervejeiros = Bar.create( name: 'Piratas Cervejeiros', description: 'Seis intrépidos marujos com sede de conhecimento e vontade de produzir a sua própria cerveja embarcaram nesta aventura. Atracámos na Amadora onde após várias batalhas conquistámos a ambicionada “Tortuga”, a ilha dos piratas. Nascendo assim e oficialmente a Piratas Cervejeiros!', street_address: 'Rua 9 de Abril nº38A 2700-612, Lisbon', location: 'Amadora', city: 'Lisbon', country: 'Portugal' )
amoBrewery = Bar.create( name: 'A.M.O. Brewery', description: 'Wednesday through Friday, A.M.O. Brewery is your ideal place to relax, socialize, and enjoy good music while having some of our fantastic made-on-location beers. Hope to see you soon!', street_address: 'Rua Bernardim Ribeiro 53 1150-069, Lisbon', location: 'Marquês de Pombal', city: 'Lisbon', country: 'Portugal' )
beerCascais = Bar.create( name: 'Beer Cascais', description: 'A BeerCascais apresenta-lhe um catálogo de excelência de cervejas de qualidade superior, para que possa degustar em sua casa o verdadeiro sabor requintado desta bebida milenar.', street_address: 'Mercado da Vila, 2750-529, Cascais', location: 'Mercado da Vila', city: 'Cascais', country: 'Portugal' )
patoBrewering = Bar.create( name: 'Pato Brewering - Tap Room', description: 'All of our beers are available on tap or in bottle, so you can enjoy them how you like. We welcome outside food and have some menus from local places to order from! We’re happy to host your events! Please contact us if you’d like to book the taproom for a party or event.', street_address: 'Av. Pedro Alvares Cabral, 177, Unit G, Sintra', location: 'Sintra', city: 'Sintra', country: 'Portugal' )
deBru = Bar.create( name: 'DeBru', description: 'Um espaço de cerveja artesanal como nunca viu. Craft Beer - CoWork - Eventos', street_address: 'Rua Luciano Cordeiro, 2C, Lisbon', location: '', city: 'Lisbon', country: 'Portugal' )
cervejariaArtesanalAdamastor = Bar.create( name: 'Cervejaria Artesanal Adamastor', description: 'No description yet', street_address: 'Rua Marechal Saldanha 12-18, 1200-057, Lisbon', location: 'Bica', city: 'Lisbon', country: 'Portugal' )
florLupulo = Bar.create( name: 'Flor de Lúpulo', description: 'Cerveja artesanal, petiscos e boa companhia! Craft Beer, food and friends!', street_address: 'R. Heróis de Quionga 71-45, Lisbon', location: 'Arroios', city: 'Lisbon', country: 'Portugal' )
naMedida = Bar.create( name: 'Na Medida', description: 'Seja o seu próprio barman! Venha experimentar diversas cervejas e pague pelo mililitro consumido. Um novo conceito em experimentar cervejas em Cascais, e provar nosso petisco "boquinha de anjo".', street_address: 'R. Freitas Reis 24E, 2750-357, Cascais ', location: 'Cascais', city: 'Cascais', country: 'Portugal' )
brewpubGallas = Bar.create( name: '21 Brewpub Gallas', description: 'Portuguese craft beer factory (Cerveja Gallas). Brewpub with 12 taps, fresh craft beer. More than 150 options to choose from, portuguese and International craft beers. Vast bottles and cans available. Hamburguers, salmon sandwich, apetizers.', street_address: 'R. Angelina Vidal 53A, 1170-122, Lisbon', location: 'Anjos', city: 'Lisbon', country: 'Portugal' )
hoppyHouseBrewing = Bar.create( name: 'Hoppy House Brewing', description: 'Como startup portuguesa no mercado das cervejas artesanais, na Hoppy House Brewing encaramos a missão de desenvolver o sector com a mesma paixāo com que nos sentamos à mesa a desfrutar dos nossos produtos e a falar sobre eles.', street_address: 'Rua Nova da Trindade 20, 1200 - 303, Lisbon', location: 'Bairro Alto', city: 'Lisbon', country: 'Portugal' )
trevo = Bar.create( name: 'Trevo', description: 'A Trevo foi criada em 2016 por dois irlandeses e um português. Tiveram a ideia de fazer esta marca depois da vitória de Portugal no Campeonato da Europa de futebol em França nesse ano. Apresentaram algumas receitas no Concurso Nacional de Cerveja Artesanal e conquistaram o segundo lugar na categoria de Double IPA.', street_address: 'R. Rodrigues de Faria 103, 1300-501, Lisbon', location: 'Alcântara', city: 'Lisbon', country: 'Portugal' )
craftyCorner = Bar.create( name: 'Crafty Corner', description: 'Located in a converted warehouse in downtown Lisbon, Crafty Corner’s banquet benches and large elegant shop windows make it the perfect place to breathe in the local scenery, socialise with fellow enthusiasts, and taste Portugal\'s exquisite craft beers.', street_address: 'Travessa Corpo Santo 15, 1200-131, Lisbon', location: 'Cais do Sodré', city: 'Lisbon', country: 'Portugal' )
oitavaColinaTaproom = Bar.create( name: 'Oitava Colina - Taproom', description: 'Mais do que um pub. O nosso primeiro taproom é um destino e uma bandeira do bairro da Graça. No 8A da Rua Damasceno Monteiro ficam as 10 torneiras com uma vista única sobre Lisboa e um ambiente que nos faz sentir em casa. Beer, foods & friends! É o que mais gostamos.', street_address: 'Rua Damasceno Monteiro, nº 8A, Lisbon', location: 'Lisbon', city: 'Lisbon', country: 'Portugal' )
oitvaMarques = Bar.create( name: 'Oitva Marquês', description: 'No 85 da Duque de Loulé vive-se numa paixão frenética entre pizza e cerveja. O Chef Thomas Mancini tira do forno deliciosas pizzas de inspiração napolitana, enquanto que das 14 torneiras de cerveja jorram as mais frescas maravilhas da Oitava Colina.', street_address: 'Av. Duque de Loulé, nº 85, Lisbon', location: 'Marquês de Pombal', city: 'Lisbon', country: 'Portugal' )
puts 'bars created'

puts 'adding bar photos'
cervejaCanil = Bar.find_by(name: 'Cerveja Canil')
cervejaCanil.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462253/Beerware/Bars/Cerveja_canil_cg3hcp.jpg'
cervejaCanil.save
musaDaBica = Bar.find_by(name: 'Musa da Bica - Craft Beer Bar')
musaDaBica.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462246/Beerware/Bars/musa_da_bica_g9h5nk.jpg'
musaDaBica.save
fabricaMusa = Bar.find_by(name: 'Fábrica Musa')
fabricaMusa.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462253/Beerware/Bars/fabrica_da_musa_qsqycl.jpg'
fabricaMusa.save
outroLado = Bar.find_by(name: 'Outro Lado')
outroLado.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607616541/Beerware/Bars/outro_lado_yhtchw.jpg'
outroLado.save
deliriumCafe = Bar.find_by(name: 'Delirium Cafe')
deliriumCafe.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462251/Beerware/Bars/Delirium_cafe_ae3vzw.jpg'
deliriumCafe.save
beerStation= Bar.find_by(name: 'Beer station')
beerStation.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462254/Beerware/Bars/Beer_station_dyfmah.jpg'
beerStation.save
cerveteca = Bar.find_by(name: 'Cerveteca')
cerveteca.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462253/Beerware/Bars/Cerveteca__ldqv5e.jpg'
cerveteca.save
sputnik = Bar.find_by(name: 'Sputnik')
sputnik.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462252/Beerware/Bars/sputnik_avrkrr.jpg'
sputnik.save
cervejaLince = Bar.find_by(name: 'Cerveja Lince')
cervejaLince.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462254/Beerware/Bars/Cerveja_lince_hxuudu.jpg'
cervejaLince.save
duqueBrewpub = Bar.find_by(name: 'Duque Brewpub')
duqueBrewpub.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462253/Beerware/Bars/Duque_brewpub_u1hhb4.jpg'
duqueBrewpub.save
quimera = Bar.find_by(name: 'Quimera Brewpub')
quimera.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462251/Beerware/Bars/Quimera_Brewpub_jcvp8n.jpg'
quimera.save
piratasCervejeiros = Bar.find_by( name: 'Piratas Cervejeiros')
piratasCervejeiros.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607606205/Beerware/Bars/83901_Piratas_jbjwvx.jpg'
piratasCervejeiros.save
amoBrewery = Bar.find_by( name: 'A.M.O. Brewery')
amoBrewery.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462254/Beerware/Bars/AMO_brewery_eogyzn.png'
amoBrewery.save
beerCascais = Bar.find_by( name: 'Beer Cascais')
beerCascais.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462253/Beerware/Bars/beer_cascais_nqjxyk.jpg'
beerCascais.save
patoBrewering = Bar.find_by( name: 'Pato Brewering - Tap Room')
patoBrewering.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462251/Beerware/Bars/Pata_brewery_ewxhwb.jpg'
patoBrewering.save
deBru = Bar.find_by( name: 'DeBru')
deBru.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462254/Beerware/Bars/Debru_ph4yss.jpg'
deBru.save
cervejariaArtesanalAdamastor = Bar.find_by( name: 'Cervejaria Artesanal Adamastor')
cervejariaArtesanalAdamastor.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462260/Beerware/Bars/ArtesanaLis_Bottle_Shop_mbrtew.jpg'
cervejariaArtesanalAdamastor.save
florLupulo = Bar.find_by( name: 'Flor de Lúpulo')
florLupulo.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462252/Beerware/Bars/Flor_de_Lu%CC%81pulo_ay3fk0.webp'
florLupulo.save
naMedida = Bar.find_by( name: 'Na Medida')
naMedida.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462251/Beerware/Bars/Na_Medida_euydx1.jpg'
naMedida.save
brewpubGallas = Bar.find_by( name: '21 Brewpub Gallas')
brewpubGallas.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462250/Beerware/Bars/21_Gallas_bak3rd.jpg'
brewpubGallas.save
hoppyHouseBrewing = Bar.find_by( name: 'Hoppy House Brewing')
hoppyHouseBrewing.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462252/Beerware/Bars/Hoppy_House_Brewing_nalaka.jpg'
hoppyHouseBrewing.save
trevo = Bar.find_by( name: 'Trevo')
trevo.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607606299/Beerware/Bars/trevo_tsz1wn.webp'
trevo.save
craftyCorner = Bar.find_by( name: 'Crafty Corner')
craftyCorner.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462248/Beerware/Bars/Crafty_corner_ullvd3.png'
craftyCorner.save
oitavaColinaTaproom = Bar.find_by( name: 'Oitava Colina - Taproom')
oitavaColinaTaproom.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462267/Beerware/Bars/8_colina_Grac%CC%A7a_akat6k.jpg'
oitavaColinaTaproom.save
oitvaMarques = Bar.find_by( name: 'Oitva Marquês')
oitvaMarques.photo_url = 'https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462254/Beerware/Bars/8_colina_Marques_pceqnl.jpg'
oitvaMarques.save
# https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462267/Beerware/Bars/8_colina_Grac%CC%A7a_akat6k.jpg
# https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462260/Beerware/Bars/ArtesanaLis_Bottle_Shop_mbrtew.jpg
# https://res.cloudinary.com/di6k1pdz4/image/upload/v1607462254/Beerware/Bars/8_colina_Marques_pceqnl.jpg
#
#
#
puts 'bars photos attached'

puts 'creting beers'
doisCorvos = Beer.create(name:'Dois Corvos', category: 'Blonde Ale', alcohol:'4', ibu: 3, brewery: 'Dois Corvos', description: 'So good')

oitavaColina = Beer.create(name:'8ª Colina', category: 'IPA', alcohol:'5.1', ibu: 4, brewery: 'Oitava Colina', description: 'So awesome')
mickLager = Beer.create(name:'Mick Lager', category: 'Vienna Lager', alcohol:'4.5', ibu: 20, brewery: 'Cerveja Musa', description: 'Amber colour. Toasted malt notes complemented by an assertive bouquet of german hops. Delicate and smooth. One problem though: an irresistible urge to keep drinking.')
tresCincoUm = Beer.create(name:'+351', category: 'Weiss', alcohol:'3.3', ibu: 2, brewery: 'Cervejaria +351', description: 'Refreshing and light')
florinda = Beer.create(name:'Florinda', category: 'Lager', alcohol:'3.1', ibu: 2, brewery: 'Oitava Colina', description: '')
nortada = Beer.create(name:'Nortada', category: 'Brown Porter', alcohol:'2.6', ibu: 4, brewery: 'Nortada', description: 'So awesome')
meanSardine = Beer.create(name:'Mean Sardine', category: 'Brown Porter', alcohol:'2.6', ibu: 4, brewery: 'Mean Sardine', description: 'So awesome')
biltre = Beer.create(name:'Biltre', category: 'American Pale Ale', alcohol:'2.6', ibu: 4, brewery: 'Cerveja Biltre', description: 'So awesome')
maldita = Beer.create(name:'Maldita', category: 'Bohemian Pilsener', alcohol:'2.9', ibu: 4, brewery: 'Maldita', description: 'So awesome')

blackLucy = Beer.create( name: 'Black Lucy', category: 'IPA - Black / Cascadian Dark Ale', alcohol: '6.7', ibu: '', brewery: 'Against the Tide', description: 'Lucy in the Sky with Hops! A hoppy roasted Indian Black Ale brewed with Verbenaceae (Lucia Lima)' )
russianMafia = Beer.create( name: 'Russian Mafia', category: 'Stout - Russian Imperial', alcohol: '9.5', ibu: '', brewery: 'Against the Tide', description: 'When Russian mobsters enjoy coffee, cocoa and vanilla in a glass. A full bodied Russian Imperial Stout with special roasted Brazilian coffee from our friends at “Vernazza Roasters”, Organic Criollo Cocoa Nibs and Indian Vanilla' )
pinkerSaison = Beer.create( name: 'Pinker Saison', category: 'Farmhouse Ale - Saison', alcohol: '6.5', ibu: '', brewery: 'Against the Tide', description: 'A light, crisp and tart cloudy Saison brewed with pink peppercorns and sichuan pepper' )
brownSuga = Beer.create( name: 'Brown Suga', category: 'Brown Ale - English', alcohol: '5.8', ibu: '', brewery: 'Against the Tide', description: 'A malty English Brown Ale, sweetened with a pinch of lactose and mixed with hops.' )

politeSociety = Beer.create( name: 'Polite Society', category: 'Farmhouse Ale - Saison', alcohol: '7.3', ibu: 25, brewery: 'Dois Corvos', description: 'Polite Society is a 7.3% Saison fermented with Brettanomyces aged in Moscatel barrels, and is part of our Wild Beer series. This beer is the result of many years of searching for the right yeast strains, dedicating our attention to our 200+ oak barrels, and the passion it takes to follow through over the months and years that these beers mature in barrels.' )
vossaNova = Beer.create( name: 'Vossa Nova', category: 'IPA - International', alcohol: '5.7', ibu: '', brewery: 'Dois Corvos', description: 'Tradition means innovation. That\'s how we define Vossa Nova - a Dry-hopped Kveik with Citra and Sorachi Ace hops and 5.7% ABV. It was brewed with our friends from Paname Brewing Company and is a lovely match for the warmth of these days.' )
miasma = Beer.create( name: 'Miasma', category: 'Red Ale - American Amber / Red', alcohol: '5.8', ibu: 20, brewery: 'Dois Corvos', description: 'Máscaras em forma de bico eram usadas no século XVII para prevenir doenças que se pensavam ser transmitidas por um tipo de ar nocivo - conhecido como Miasma. Neste Halloween, podes tu próprio provar "Miasma" - uma Amber Ale de 5.8% com adição de canela, gengibre, cravinho e noz moscada. Tudo num equilibro entre o doce e o amargo que foi pensado para te aquecer o corpo e a alma. "Miasma" é uma edição limitada disponível exclusivamente à pressão no Tap Room.' )
vaiNu = Beer.create( name: 'Vai Nú', category: 'Stout - Imperial / Double', alcohol: '9', ibu: 43, brewery: 'Dois Corvos', description: '“O Rei vai nú”, é uma conhecida expressão que arrasa gloriosamente a mentira exaltando a obviedade. É também o nome desta colaboração a três, entre Vilhoa, Dois Corvos e O Reizinho. Vestimos uma gulosa Imperial Stout com Rum madeirense e o seu impacto é apenas visível para aqueles com coragem de a beber. As duas versões, vestida e despida, podem e devem ser degustadas lado a lado em jeito de rebeldia contra o incontestável.' )
avenida = Beer.create( name: 'Avenida ', category: 'Blonde Ale', alcohol: '5', ibu: 16, brewery: 'Dois Corvos', description: 'Avenida is a light, easy-drinking beer with an interplay between biscuity malt and a fruitiness developed from the German yeast. It pours a white head with some natural haze. As tardes de Lisboa merecem uma cerveja assim, fácil de beber mas complexa. Um jogo entre malte e levedura alemã, que se traduz num final suave, com um aroma frutado e notas de especiarias.' )

bornInTheIpa = Beer.create( name: 'Born in the IPA', category: 'IPA - American', alcohol: '6.5', ibu: 70, brewery: 'Cerveja Musa', description: 'Cor laranja, ligeiramente turva. Sabor amargo mas equilibrado com notas complexas de citrinos (toranja), manga e melão. Lúpulos: citra, mosaic e columbus. Bold & Loud like the ‘mericans who invented the style. Citrus, pine and tropical fruits. Notes from generous amounts of american hops. Like a cool rockin’ daddy.' )
frankApa= Beer.create( name: 'Frank APA', category: 'Pale Ale - American', alcohol: '5', ibu: 35, brewery: 'Cerveja Musa', description: 'Corpo suave, aroma a citrinos e frutos tropicais. Aroma a lúpulos americanos o que lhe dá um certo final amargo, porém, feliz. Soft body with notes of citrus and tropical fruits. Generous amounts of aromatic American hops with a mildly bitter aftertaste.' )
blondie = Beer.create( name: 'Blondie', category: 'Blonde Ale', alcohol: '4.5', ibu: '', brewery: 'Cerveja Musa', description: '-' )
iggyBop = Beer.create( name: 'Iggy Bop', category: 'IPA - Belgian', alcohol: '6.8', ibu: 56, brewery: 'Cerveja Musa', description: 'Colaboração com o BOP Café. Belgian IPA de cor clara mas com grande sabor. Produzida com uma mistura de lúpulos do novo e do velho mundo e fermentada com uma levedura de abadia belga, esta Belgian IPA é um encontro perfeit0 entre a requintada robustez das leveduras belgas e o amargor pronunciado dos lúpulos europeus e americanos. No nariz um agradável aroma tropical e cítrico.' )
psychoPilsner = Beer.create( name: 'Psycho Pilsner', category: 'Pilsner - German', alcohol: '4.5', ibu: '', brewery: 'Cerveja Musa', description: 'Qu\'est ce que c\'est? A staggering vice with a criminal hand. It hits the spot just right. We\'re creating a monster. Watch out!' )
romaria = Beer.create( name: 'Romāria', category: 'Sour - Fruited Berliner Weisse', alcohol: '4.1', ibu: '', brewery: 'Cerveja Musa', description: 'Lab Stage Series | Sweet & Sour #1 Pomegranate Berliner Weisse. A combinação de uma ligeira acidez láctica e uma grande porção de trigo oferecem um final de boca leve e suave a esta berliner weiss de romã. Uma acidez que é maturada e acentuada pelo carácter cítrico da fruta que lhe dá o nome. Seca, pálida e frutada é a cerveja certa para matar a sede nos dias primaveris.' )

witCinco = Beer.create( name: 'Wit Cinco de Abril', category: 'Wheat Beer - Witbier', alcohol: '5', ibu: 16, brewery: 'Gallas', description: 'Witbeer with orange peels, ginger and coriander seeds' )
donaFilipa = Beer.create( name: 'Dona Filipa', category: 'IPA - Imperial / Double New England', alcohol: 9, ibu: '80', brewery: 'Gallas', description: 'Double NEIPA with Citra, Mosaic and Amarillo hops. 9% abv. Hazy, full bodied, citrousy.' )
simcoeIpa = Beer.create( name: 'Simcoe IPA', category: 'IPA - American', alcohol: '6', ibu: 60, brewery: 'Gallas', description: 'Simcoe Single Hop IPA! Clear gold color (10 EBC), citric fresh aroma of the Simcoe hops. Increased bitterness.' )
caparIpa = Beer.create( name: 'CaparIPA', category: 'IPA - American', alcohol: '5.6', ibu: 40, brewery: 'Gallas', description: 'Clear, hoppy and citrousy beer. Serious dry hopping. It takes tons of dry hopping. Citra, Amarillo, Simcoe and Mosaic hops.' )
mangoMilkshake = Beer.create( name: 'Mango Milkshake Double Juicy NEIPA DDH Citra+Ekuanot', category: 'IPA - Imperial / Double Milkshake', alcohol: '7.5', ibu: 32, brewery: 'Gallas', description: 'A full bodied beer. Hazy. Made with mango puree. 7,5% abv. It has low bitterness. A Juicy/Milkshake Double NEIPA. 32 IBU only. Double dry hopped with Citra and Ekuanot hops. A total of 20g/L of hops are used in this beer.' )
tangerIpa = Beer.create( name: 'TangerIPA', category: 'IPA - New England', alcohol: '7', ibu: 65, brewery: 'Gallas', description: 'New England IPA with tangerine zeets, Citra, Amarillo and Mosaic hops.' )

shamrockQuest = Beer.create( name: 'Shamrock\'s Quest', category: 'IPA - New England', alcohol: '6', ibu: 35, brewery: 'Trevo', description: 'No description yet' )
jackClub = Beer.create( name: 'Jack of Club', category: 'IPA - Imperial / Double', alcohol: '8', ibu: 93, brewery: 'Trevo', description: 'When Joao and Mick won the homebrewing competition in Portugal back in 2016, it was with this beer. At the time it was named Amargomatic and it was commercially brewed the first time at Duque Brewpub. In honor to that historical moment, we\'ve just brewed it again renaming it to Jack of Clubs, where the Jack represent the Duque and the Clubs represent Trevo.' )
rabbitsFoot = Beer.create( name: 'Rabbit\'s Foot', category: 'IPA - Milkshake', alcohol: '6', ibu: 27, brewery: 'Trevo', description: 'An explosion of hoppy aromas and flavors from Simcoe and Equanot mixed with a soft, rounded body enhanced with lactose, resulting in a wonderful beer.' )
cappucinoPorter = Beer.create( name: 'Cappucino Porter', category: 'Porter - Coffee', alcohol: '5.3', ibu: 21, brewery: 'Trevo', description: 'If you like coffee, you\'ll love this beer! Fresh coffee aromatics and flavors, in a porter with lactose for added mouthfeel. Made with a cold brew of fresh locally roasted coffee by our friends of Pastelaria de Santo Antonio.' )
epicWipeout = Beer.create( name: 'Epic Wipeout', category: 'IPA - Brut', alcohol: '4.7', ibu: 42, brewery: 'Trevo', description: 'Massive amounts of Citra and Mosaic along with a super dry body, makes this beer an unique hoppy experience. Epic Wipeout is a tribute to bodyboarding, the reason that got together Trevo, Duque and Letra, whom actually went for a bodyboard session while brewing this beer!' )

singleHopCascadeAle = Beer.create( name: 'Single Hop Cascade Ale', category: 'Pale Ale - American', alcohol: '5.3', ibu: '', brewery: 'Quimera Brewpub', description: 'Our house APA with Cascade hops.' )
nafipa = Beer.create( name: 'NAFIPA', category: 'IPA - American', alcohol: '5.3', ibu: '', brewery: 'Quimera Brewpub', description: 'Not another fuckin ipa' )
chocolatePorter = Beer.create( name: 'Chocolate Porter', category: 'Porter - Other', alcohol: '5.8', ibu: '', brewery: 'Quimera Brewpub', description: 'Chocolate porter made with coco nibs for a rich chocolate flavor.' )
barrelAgedRaspberry = Beer.create( name: 'Barrel Aged Raspberry Sour Raw Ale', category: 'Sour - Other', alcohol: '4.8', ibu: '', brewery: 'Quimera Brewpub', description: 'Barrel aged for 6 months with lactobacillus, raw ale (never boiled) with Raspberries.' )

urracaVendaval = Beer.create( name: 'Urraca Vendaval', category: 'IPA - American', alcohol: '6', ibu: 58, brewery: 'Oitva colina', description: 'Cult IPA in Portugal, and at the same time the beer of the future in the soon-to-be-after-hazy era. Urraca is the Queen, the one you can trust, now and then.' )
joeDaSilva = Beer.create( name: 'Joe Da Silva', category: 'Pale Ale - American', alcohol: '5.5', ibu: 37, brewery: 'Oitva colina', description: 'American Pale Ale with a touch of Sorachi Ace' )
florinda = Beer.create( name: 'Florinda', category: 'Lager - Pale', alcohol: '5.2', ibu: 34, brewery: 'Oitva colina', description: 'Lisbon Lager. Fresh. Malty flavours. Flowery hopped aroma. Florinda é luz na Colina, intocável e com classe. Florinda passeia elegância. Assim é esta cerveja, uma lager que emana frescura, sem deixar de ter uma expressiva presença dos maltes e dos lúpulos frutados, resultando num sabor incrível. Florinda shines through the hill. She\'s untouchable and classy. Pure walking elegance. So is this beer, a lager that shouts freshness, at the same time that it is malty, fruity, hoppy, and incredibly tasty.' )
vilaMaria = Beer.create( name: 'Vila Maria', category: 'Blonde Ale', alcohol: '5', ibu: 25, brewery: 'Oitva colina', description: 'Light, fresh, unpretentious, simply delicious. To drink in every occasion and not to think much about it.' )

trindadeProfana = Beer.create( name: 'Trindade - Profana', category: 'IPA - American', alcohol: '6.5', ibu: 50, brewery: 'Hoppy House Brewing', description: 'Misteriosa e profunda, é no segredo da combinação sublime de lúpulos e malte em alta fermentação que residem a cor alaranjada, o amargor intenso e o aroma de lúpulo com notas frutadas e pinho desta India Pale Ale de corpo médio.' )
trindadeAurea = Beer.create( name: 'Trindade - Áurea', category: 'Lager - Vienna', alcohol: '5.2', ibu: 30, brewery: 'Hoppy House Brewing', description: 'O malte de Áurea dá o toque de Midas na cor âmbar desta cerveja que se exibe de corpo médio e ligeiro amargor. Vienna Lager por natureza, Áurea de nome, mistura o seu aroma maltado com notas a caramelo, com um final de boca ligeiramente doce que traduz a proporção perfeita entre maltes.' )
trindadeFenix = Beer.create( name: 'Trindade - Fénix', category: 'Wheat Beer - Other', alcohol: '5.6', ibu: 20, brewery: 'Hoppy House Brewing', description: 'Fénix toma a sua cor de palha dourada das chamas da ave mitológica que lhe dá o nome. Uma American Wheat turva de baixo amargor e corpo leve, cujo aroma lupulado e cítrico renasce de forma espectacular a cada golo.' )
trindadeZenite = Beer.create( name: 'Trindade - Zénite', category: 'Porter - Other', alcohol: '6.2', ibu: 17, brewery: 'Hoppy House Brewing', description: 'Uma cerveja de tom negro, com um sabor a café ao qual adicionámos baunilha em vagem. Corpo médio e notas tostadas que equilibram com uma doçura a baunilha em final de boca.' )
smashMyBeer = Beer.create( name: 'Smash My Beer', category: 'Traditional Ale', alcohol: '5.5', ibu: 13, brewery: 'Hoppy House Brewing', description: 'SMASH (Single Malt And Single Hop) Cerveja Ale refrescante onde é utilizado apenas Malte Munique e Lúpulo El Dourado. Refrescante, corpo leve com notas de cereais e pão fresco; aroma fruta do a lúpulo.' )

sharkBaitGinger = Beer.create( name: 'Shark Bait Ginger Lime Cucumber', category: 'Sour - Fruited Gose', alcohol: '4.3', ibu: 6, brewery: 'Piratas Cervejeiros', description: 'Gose with Ginger, Cucumber and Lime Beer style originally from the German city of Goslar, where Gose river passes by and so naming the style. It\'s characterized by the freshness, acidity, saltiness and a citric touch from the coriander. In this version we added lime to contribute with an aroma explosion. The flavour of ginger and cucumber shows in the mouthfeel increasing the freshness of it.' )
avenidaTropical = Beer.create( name: 'Avenida Tropical', category: 'Sour - Fruited Gose', alcohol: '4.3', ibu: 6, brewery: 'Piratas Cervejeiros', description: 'Libeerdade Beer Bottle Shop 2nd anniversary and time for a new collaboration! Avenida Tropical is a long walk through many flavours, a Gose with pinneaple, passion fruit, cashew pulp, roastec coconut and criativity. Let’s drink and celebrate!' )
hoistColours = Beer.create( name: 'Hoist the Colours : Mango Basilic', category: 'Sour - Fruited Gose', alcohol: '4.3', ibu: '', brewery: 'Piratas Cervejeiros', description: 'Gose with Mango and BasilicFollowing the success of Shark Bait we understood that the Gose style have their own room in the craft beer scene. Hoist the colours, sentence used by pirates when raizing their flag, represents a line of beers with fruits and spices being this one it\'s first edition. In this edition Mango was the choice, contribuiting with flavor. Then, a bit of basilic, providing a spice and mint twist.' )
vamoFlorianopolis = Beer.create( name: 'Vamo A Florianópolis', category: 'Sour - Other', alcohol: '4.7', ibu: 6, brewery: 'Piratas Cervejeiros', description: 'Catharina sour with Gwava, Lime and Pink Peppercorn. Catharina Sour is a brazilian style created in Santa Catarina Region. The base is similar to the Berliner Weiss Style but a bit more alcoolic (4-5.5%). It also assumes the use of local fruits.' )

desconfinada = Beer.create( name: 'Desconfinada', category: 'IPA - Session / India Session Ale', alcohol: '4.7', ibu: 41, brewery: 'Cerveja Lince', description: 'LBD Colab: Lince / Bolina / Dois Corvos / Musa Brewed @ Lince Brewery' )
linceNutBrownAle = Beer.create( name: 'Lince Nut Brown Ale', category: 'Brown Ale - Other', alcohol: '6', ibu: '-', brewery: 'Cerveja Lince', description: 'Collab between the portuguese factories Lince and Oitava Colina to create a nut brown ale full of flavour' )
linceBelgianPaleAle = Beer.create( name: 'Lince Belgian Pale Ale', category: 'Pale Ale - Belgian', alcohol: '6', ibu: 22, brewery: 'Cerveja Lince', description: 'No description yet' )
linceBlonde = Beer.create( name: 'Lince Blonde', category: 'Blonde Ale', alcohol: '6', ibu: 20, brewery: 'Cerveja Lince', description: 'No description yet' )
linceAmericanIpa = Beer.create( name: 'Lince American IPA', category: 'IPA - American', alcohol: '6', ibu: 50, brewery: 'Cerveja Lince', description: 'No description yet' )

juniperSmokin = Beer.create( name: 'Juniper Smokin\'', category: 'Smoked Beer', alcohol: '6.7', ibu: 30, brewery: 'Amnesia Brewery', description: '1st Place @ 2015 III Concurso Nacional de Cervejas Caseiras e Artesanais Designed and developed as a reinterpretation of the 22B style - BJCP (Other Smoked Beers), with a Baltic Porter base.' )
rageIpa = Beer.create( name: 'Rage IPA', category: 'IPA - American', alcohol: '5.5', ibu: 71, brewery: 'Amnesia Brewery', description: 'A dry and refreshing IPA, brewed with 10 Hop addictions (Equinox & Mosaic) and with dried apricots added in the maturation.' )
amnesiaWeiss = Beer.create( name: 'Weiss', category: 'Hefeweizen', alcohol: '5', ibu: 15, brewery: 'Amnesia Brewery', description: 'Untreated and bottled in its natural state of yeasty turbidity. This is an unfiltered, lightly hopped thirst quenching summer treat with big mouthfeel, plenty of estery aromas like banana and clove, with a smoky finish. A personal twist for a Bavarian HefeWeizen!' )
youTalkinToMe = Beer.create( name: 'You Talkin\' To Me?', category: 'IPA - Imperial / Double', alcohol: '7', ibu: 80, brewery: 'Amnesia Brewery', description: 'A juicy DIPA, designed to showcase the flavors and aromas of the hops. 4 time dry hopped, with a great backbone provided by the Maris Otter.' )
hotCherry = Beer.create( name: 'Hot Cherry', category: 'Spiced / Herbed Beer', alcohol: '13', ibu: 45, brewery: 'Amnesia Brewery', description: 'A "Monster" Oatmeal Stout Oak Aged, matured with: the traditional Portuguese "Ginginha" (a sour cherrie licour), "Chocolate Habanero" pepper, Cocoa nibs.' )
darkVader = Beer.create( name: 'Dark Vader', category: 'Stout - Imperial / Double', alcohol: '12.4', ibu: 98, brewery: 'Amnesia Brewery', description: 'Colaboration with "Against the Tide". A Brewer’s Reserve and Limited Edition Imperial Stout, fermented with bourbon yeast, aged with Madagascar vanilla beans, cocoa nibs, coffee and oak cubes.' )

ginjaNinja = Beer.create( name: 'Ginja Ninja', category: 'Stout - Imperial / Double', alcohol: '10', ibu: 60, brewery: 'Mean Sardine', description: 'Collaboration with Brouwerij De Molen. An Imperial Stout with Ginja (portuguese sour cherry) and "Ginjinha", a portuguese traditional liqueur made of Ginja cherries infusion.' )
tordesilhasPortugueseEmpireStout = Beer.create( name: 'Tordesilhas Portuguese Empire Stout', category: 'Stout - Imperial / Double', alcohol: '10', ibu: '', brewery: 'Mean Sardine', description: 'Imperial Stout w/ Cocoa, Cinnamon, Gindungo Chilli and Vanilla.' )
zagaia = Beer.create( name: 'Zagaia', category: 'Belgian Dubbel', alcohol: '6', ibu: 25, brewery: 'Mean Sardine', description: 'An easy drinking Belgian Dubbel. Nice to have all year around.' )
aWalkInMadeira = Beer.create( name: 'A Walk In Madeira', category: 'IPA - American', alcohol: '6', ibu: 40, brewery: 'Mean Sardine', description: 'American IPA aged w/ Madeira Wine Oak and passion fruit.' )
portucale = Beer.create( name: 'Portucale', category: 'Stout - Imperial / Double', alcohol: '11', ibu: '', brewery: 'Mean Sardine', description: 'Com Figo e Vinho do Porto.' )
blommerMadeira = Beer.create( name: 'Blommer I Madeira', category: 'Stout - Imperial / Double', alcohol: '12', ibu: 80, brewery: 'Mean Sardine', description: 'Collaboration with To Øl. Imperial stout aged in Madeira barrels with plums.' )

trezentosIpa = Beer.create( name: '+351 IPA', category: 'IPA - International', alcohol: '6.5', ibu: 55, brewery: 'Cervejeira +351', description: 'No description yet' )
trezentosCervejaPaleAle = Beer.create( name: '+351 Cerveja Pale Ale', category: 'Pale Ale - International', alcohol: '5', ibu: 25, brewery: 'Cervejeira +351', description: 'No description yet' )
trezentosWeiss = Beer.create( name: '+351 Weiss', category: 'Hefeweizen', alcohol: '4.5', ibu: 13, brewery: 'Cervejeira +351', description: 'No description yet' )
trezentosBlackIpa = Beer.create( name: '+351 Black IPA', category: 'IPA - Black / Cascadian Dark Ale', alcohol: '5', ibu: 25, brewery: 'Cervejeira +351', description: 'No description yet' )
puts "beers created"


puts "adding photos"
# file = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606249754/Beerware/Beers/dois_yy0rws.webp')
# doisCorvos.photo.attach(io: file, filename: 'filename.png', content_type: 'image/png')
# file1 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606249850/Beerware/Beers/8a_dpwkqp.jpg')
# oitavaColina.photo.attach(io: file1, filename: 'filename.png', content_type: 'image/png')
# file2 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606249851/Beerware/Beers/351_v59f4u.jpg')
# tresCincoUm.photo.attach(io: file2, filename: 'filename.png', content_type: 'image/png')
# file3 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250220/Beerware/Beers/florinda_ndykgp.webp')
# florinda.photo.attach(io: file3, filename: 'filename.png', content_type: 'image/png')
# file4 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250123/Beerware/Beers/nortada_aqjotn.jpg')
# nortada.photo.attach(io: file4, filename: 'filename.png', content_type: 'image/png')
# file5 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250123/Beerware/Beers/mean_s_o96ql7.jpg')
# meanSardine.photo.attach(io: file5, filename: 'filename.png', content_type: 'image/png')
# file6 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250123/Beerware/Beers/bilitre_uybubq.jpg')
# biltre.photo.attach(io: file6, filename: 'filename.png', content_type: 'image/png')
# file7 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606250124/Beerware/Beers/matilda_wxpr4g.jpg')
# maldita.photo.attach(io: file7, filename: 'filename.png', content_type: 'image/png')
# file8 = URI.open('https://res.cloudinary.com/di6k1pdz4/image/upload/v1606247256/Beerware/Beers/mick_copo_blsgxn.png')
# mickLager.photo.attach(io: file8, filename: 'filename.png', content_type: 'image/png')




puts "creating beers for bars"
BarsBeer.create(beer:oitavaColina, bar: cervejaCanil)
BarsBeer.create(beer:meanSardine, bar: cervejaCanil)
BarsBeer.create(beer:doisCorvos, bar: cervejaCanil)
BarsBeer.create(beer:mickLager, bar: cervejaCanil)
BarsBeer.create(beer:maldita, bar: cervejaCanil)

BarsBeer.create(beer:oitavaColina, bar: musaDaBica)
BarsBeer.create(beer:meanSardine, bar: musaDaBica)
BarsBeer.create(beer:tresCincoUm, bar: musaDaBica)

BarsBeer.create(beer:meanSardine, bar: outroLado)
BarsBeer.create(beer:nortada, bar: outroLado)
BarsBeer.create(beer:florinda, bar: outroLado)

BarsBeer.create(beer:tresCincoUm, bar: fabricaMusa)
BarsBeer.create(beer:nortada, bar: fabricaMusa)
BarsBeer.create(beer:florinda, bar: fabricaMusa)

BarsBeer.create(beer:shamrockQuest, bar: deliriumCafe)
BarsBeer.create(beer:oitavaColina, bar: deliriumCafe)
BarsBeer.create(beer:meanSardine, bar: deliriumCafe)
BarsBeer.create(beer:tresCincoUm, bar: deliriumCafe)
BarsBeer.create(beer:jackClub, bar: deliriumCafe)
BarsBeer.create(beer:joeDaSilva, bar: deliriumCafe)

BarsBeer.create(beer:joeDaSilva, bar: beerStation)
BarsBeer.create(beer:vilaMaria, bar: beerStation)
BarsBeer.create(beer:joeDaSilva, bar: beerStation)
BarsBeer.create(beer:simcoeIpa, bar: beerStation)
BarsBeer.create(beer:cappucinoPorter, bar: beerStation)

BarsBeer.create(beer:cappucinoPorter, bar: cerveteca)
BarsBeer.create(beer:oitavaColina, bar: cerveteca)
BarsBeer.create(beer:meanSardine, bar: cerveteca)
BarsBeer.create(beer:doisCorvos, bar: cerveteca)
BarsBeer.create(beer:mickLager, bar: cerveteca)
BarsBeer.create(beer:maldita, bar: cerveteca)

BarsBeer.create(beer:maldita, bar: sputnik)
BarsBeer.create(beer:oitavaColina, bar: sputnik)
BarsBeer.create(beer:meanSardine, bar: sputnik)
BarsBeer.create(beer:doisCorvos, bar: sputnik)
BarsBeer.create(beer:mickLager, bar: sputnik)
BarsBeer.create(beer:maldita, bar: sputnik)
BarsBeer.create(beer:joeDaSilva, bar: sputnik)
BarsBeer.create(beer:vilaMaria, bar: sputnik)

BarsBeer.create(beer:maldita, bar: cervejaLince)
BarsBeer.create(beer:oitavaColina, bar: cervejaLince)
BarsBeer.create(beer:meanSardine, bar: cervejaLince)
BarsBeer.create(beer:doisCorvos, bar: cervejaLince)
BarsBeer.create(beer:mickLager, bar: cervejaLince)
BarsBeer.create(beer:maldita, bar: cervejaLince)
BarsBeer.create(beer:joeDaSilva, bar: cervejaLince)
BarsBeer.create(beer:vilaMaria, bar: cervejaLince)

BarsBeer.create(beer:maldita, bar: duqueBrewpub)
BarsBeer.create(beer:oitavaColina, bar: duqueBrewpub)
BarsBeer.create(beer:meanSardine, bar: duqueBrewpub)
BarsBeer.create(beer:doisCorvos, bar: duqueBrewpub)
BarsBeer.create(beer:mickLager, bar: duqueBrewpub)
BarsBeer.create(beer:maldita, bar: duqueBrewpub)
BarsBeer.create(beer:joeDaSilva, bar: duqueBrewpub)

BarsBeer.create(beer:vilaMaria, bar: quimera)
BarsBeer.create(beer:oitavaColina, bar: quimera)
BarsBeer.create(beer:meanSardine, bar: quimera)
BarsBeer.create(beer:doisCorvos, bar: quimera)
BarsBeer.create(beer:mickLager, bar: quimera)
BarsBeer.create(beer:maldita, bar: quimera)

BarsBeer.create(beer:maldita, bar: piratasCervejeiros)
BarsBeer.create(beer:oitavaColina, bar: piratasCervejeiros)
BarsBeer.create(beer:meanSardine, bar: piratasCervejeiros)
BarsBeer.create(beer:doisCorvos, bar: piratasCervejeiros)
BarsBeer.create(beer:mickLager, bar: piratasCervejeiros)
BarsBeer.create(beer:maldita, bar: piratasCervejeiros)
BarsBeer.create(beer:joeDaSilva, bar: piratasCervejeiros)
BarsBeer.create(beer:vilaMaria, bar: piratasCervejeiros)

BarsBeer.create(beer:cappucinoPorter, bar: amoBrewery)
BarsBeer.create(beer:oitavaColina, bar: amoBrewery)
BarsBeer.create(beer:meanSardine, bar: amoBrewery)
BarsBeer.create(beer:doisCorvos, bar: amoBrewery)
BarsBeer.create(beer:mickLager, bar: amoBrewery)
BarsBeer.create(beer:maldita, bar: amoBrewery)

BarsBeer.create(beer:joeDaSilva, bar: beerCascais)
BarsBeer.create(beer:vilaMaria, bar: beerCascais)
BarsBeer.create(beer:joeDaSilva, bar: beerCascais)
BarsBeer.create(beer:simcoeIpa, bar: beerCascais)
BarsBeer.create(beer:cappucinoPorter, bar: beerCascais)

BarsBeer.create(beer:maldita, bar: patoBrewering)
BarsBeer.create(beer:oitavaColina, bar: patoBrewering)
BarsBeer.create(beer:meanSardine, bar: patoBrewering)
BarsBeer.create(beer:doisCorvos, bar: patoBrewering)
BarsBeer.create(beer:mickLager, bar: patoBrewering)
BarsBeer.create(beer:maldita, bar: patoBrewering)
BarsBeer.create(beer:joeDaSilva, bar: patoBrewering)
BarsBeer.create(beer:vilaMaria, bar: patoBrewering)

BarsBeer.create(beer:shamrockQuest, bar: deBru)
BarsBeer.create(beer:oitavaColina, bar: deBru)
BarsBeer.create(beer:meanSardine, bar: deBru)
BarsBeer.create(beer:tresCincoUm, bar: deBru)
BarsBeer.create(beer:jackClub, bar: deBru)
BarsBeer.create(beer:joeDaSilva, bar: deBru)

BarsBeer.create(beer:cappucinoPorter, bar: cervejariaArtesanalAdamastor)
BarsBeer.create(beer:oitavaColina, bar: cervejariaArtesanalAdamastor)
BarsBeer.create(beer:meanSardine, bar: cervejariaArtesanalAdamastor)
BarsBeer.create(beer:doisCorvos, bar: cervejariaArtesanalAdamastor)
BarsBeer.create(beer:mickLager, bar: cervejariaArtesanalAdamastor)
BarsBeer.create(beer:maldita, bar: cervejariaArtesanalAdamastor)

BarsBeer.create(beer:cappucinoPorter, bar: florLupulo)
BarsBeer.create(beer:oitavaColina, bar: florLupulo)
BarsBeer.create(beer:meanSardine, bar: florLupulo)
BarsBeer.create(beer:doisCorvos, bar: florLupulo)
BarsBeer.create(beer:mickLager, bar: florLupulo)
BarsBeer.create(beer:maldita, bar: florLupulo)

BarsBeer.create(beer:vilaMaria, bar: naMedida)
BarsBeer.create(beer:oitavaColina, bar: naMedida)
BarsBeer.create(beer:meanSardine, bar: naMedida)
BarsBeer.create(beer:doisCorvos, bar: naMedida)
BarsBeer.create(beer:mickLager, bar: naMedida)
BarsBeer.create(beer:maldita, bar: naMedida)

BarsBeer.create(beer:maldita, bar: brewpubGallas)
BarsBeer.create(beer:oitavaColina, bar: brewpubGallas)
BarsBeer.create(beer:meanSardine, bar: brewpubGallas)
BarsBeer.create(beer:doisCorvos, bar: brewpubGallas)
BarsBeer.create(beer:mickLager, bar: brewpubGallas)
BarsBeer.create(beer:maldita, bar: brewpubGallas)
BarsBeer.create(beer:joeDaSilva, bar: brewpubGallas)
BarsBeer.create(beer:vilaMaria, bar: brewpubGallas)

BarsBeer.create(beer:maldita, bar: hoppyHouseBrewing)
BarsBeer.create(beer:oitavaColina, bar: hoppyHouseBrewing)
BarsBeer.create(beer:meanSardine, bar: hoppyHouseBrewing)
BarsBeer.create(beer:doisCorvos, bar: hoppyHouseBrewing)
BarsBeer.create(beer:mickLager, bar: hoppyHouseBrewing)
BarsBeer.create(beer:maldita, bar: hoppyHouseBrewing)
BarsBeer.create(beer:joeDaSilva, bar: hoppyHouseBrewing)

BarsBeer.create(beer:cappucinoPorter, bar: trevo)
BarsBeer.create(beer:oitavaColina, bar: trevo)
BarsBeer.create(beer:meanSardine, bar: trevo)
BarsBeer.create(beer:doisCorvos, bar: trevo)
BarsBeer.create(beer:mickLager, bar: trevo)
BarsBeer.create(beer:maldita, bar: trevo)

BarsBeer.create(beer:shamrockQuest, bar: craftyCorner)
BarsBeer.create(beer:oitavaColina, bar: craftyCorner)
BarsBeer.create(beer:meanSardine, bar: craftyCorner)
BarsBeer.create(beer:tresCincoUm, bar: craftyCorner)
BarsBeer.create(beer:jackClub, bar: craftyCorner)
BarsBeer.create(beer:joeDaSilva, bar: craftyCorner)

BarsBeer.create(beer:vilaMaria, bar: oitavaColinaTaproom)
BarsBeer.create(beer:oitavaColina, bar: oitavaColinaTaproom)
BarsBeer.create(beer:meanSardine, bar: oitavaColinaTaproom)
BarsBeer.create(beer:doisCorvos, bar: oitavaColinaTaproom)
BarsBeer.create(beer:mickLager, bar: oitavaColinaTaproom)
BarsBeer.create(beer:maldita, bar: oitavaColinaTaproom)

BarsBeer.create(beer:oitavaColina, bar: oitvaMarques)
BarsBeer.create(beer:meanSardine, bar: oitvaMarques)
BarsBeer.create(beer:doisCorvos, bar: oitvaMarques)
BarsBeer.create(beer:mickLager, bar: oitvaMarques)
BarsBeer.create(beer:maldita, bar: oitvaMarques)





puts "beers for bars created"









