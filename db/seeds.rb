# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."

Life.destroy_all
User.destroy_all


puts "Creating users..."
user1 = User.create!(
  first_name: "John",
  last_name: "Wick",
  email:    "j.wick@example.com",
  password: "123456",
  phone_number: '0666676869',
  address: '1 rue du Ranch, Nashville, USA',
  birth_date: "24/12/1993"
)
life1 = Life.create!(
  name: "Allez à lasso de votre vie!",
  price_per_day: "50",
  description: "Dans l'immensité de l'Ouest américain, le cowboy John chevauchait avec audace, veillant sur le bétail, bravant bandits et tempêtes. Ses nuits autour du feu tressaillaient d'histoires épiques, incrustant dans son regard le mélange unique d'aventure et de solitude des grands espaces.",
  picture_url: "app/assets/images/coiffeur.jpg",
  city: "Nashville",
  address: user1.address,
  owner_id: user1.id
)
# _______________

user2 = User.create!(
  first_name: "Vanessa",
  last_name: "Diamant",
  email:    "v.diamant@example.com",
  password: "123456",
  phone_number: "0767686970",
  address: "2 rue du Swag, Sedan, France",
  birth_date: "29/01/1999"
)

life2 = Life.create!(
  name: "Shine bright like a Diamond!",
  price_per_day: "60",
  description: "La vie d'un drag queen est une symphonie audacieuse de créativité et de transformation, où les identités se mêlent en une explosion de couleurs et de glamour. Sur scène, ces artistes captivent avec des performances captivantes, fusionnant l'art du maquillage, des costumes extravagants et des mouvements gracieux pour célébrer la diversité et défier les normes de genre.",
  picture_url: "app/assets/images/dragqueen.jpg",
  city: "Sedan",
  address: user2.address,
  owner_id: user2.id
)
# _______________

user3 = User.create!(
  first_name: "Rose",
  last_name: "Jardin",
  email:    "r.jardin@example.com",
  password: "123456",
  phone_number: "0745673423",
  address: "3 rue des Tulipes, Versailles, France",
  birth_date: "06/05/1985",
)

life3 = Life.create!(
  name: "Apprenez à être à fleur de pot...",
  price_per_day: "60",
  description: "La vie de fleuriste est un enchantement floral perpétuel. Chaque matin, l'atelier s'éveille avec l'éclat de couleurs vives et l'arôme doux des pétales. Les mains habiles sélectionnent avec soin les fleurs les plus exquises pour composer des créations qui évoquent des émotions uniques. Entre le ballet des tiges et le jeu de la lumière filtrant à travers les feuilles, le fleuriste cultive un lien profond avec la nature et partage des moments intimes avec chaque client, tissant ainsi une toile florale d'histoires et de sourires.",
  picture_url: "app/assets/images/fleuriste.jpg",
  city: "Versailles",
  address: user3.address,
  owner_id: user3.id
)
# _______________

user4 = User.create!(
  first_name: "Bob",
  last_name: "Chiquitos",
  email:    "b.chiquitos@example.com",
  password: "123456",
  phone_number: "0789563431",
  address: "4 rue du Bazar, Bazarland, Nowhere",
  birth_date: "14/07/1964"
)
life4 = Life.create!(
  name: "S'il y en a pour un, il y en pour 10!",
  price_per_day: "35",
  description: "Être un père de famille nombreuse est un tourbillon joyeux de responsabilités et de moments inestimables, jonglant entre les rires enfantins, les aventures en groupe et les défis constants, tout en créant un foyer chaleureux et rempli d'amour. Chaque journée est une histoire unique, tissée d'amour fraternel, de rires partagés et de précieux souvenirs qui forgent des liens inébranlables au sein de cette tribu unie.",
  city: "Bazarland",
  address: user4.address,
  owner_id: user4.id
)
# _______________


user5 = User.create!(
  first_name: "Hélène",
  last_name: "De Trois",
  email:    "h.detrois@example.com",
  password: "123456",
  phone_number: "0766358575",
  address: "5 rue de Pythagore, Pi, Algorithme",
  birth_date: "31/12/1989",
)

life5 = Life.create!(
  name: "Comme Hélène de Troie avec sa beauté légendaire, les mathématiques me font tourner la tête à 180 degrés !",
  price_per_day: "65",
  description: "La vie de professeure de mathématiques est une quête d'illumination intellectuelle. Chaque jour, vous guidez les élèves à travers les dédales des nombres et des équations, éveillant la compréhension et la logique. Vous façonnez des esprits analytiques prêts à relever les défis mathématiques de la vie.",
  picture_url: "app/assets/images/professeur.jpg",
  city: "Pi",
  address: user5.address,
  owner_id: user5.id
)
# _______________

user6 = User.create!(
  first_name: "Edward",
  last_name: "Mains d'Argent",
  email:    "e.mainsdargent@example.com",
  password: "123456",
  phone_number: "0756453423",
  address: "6 rue des Ciseaux, UnivHair, Century Fox",
  birth_date: "15/09/1991"
)
life6 = Life.create!(
  name: "Besoin d'un bol d'Hair ?",
  price_per_day: "55",
  description: "La vie d'Edward aux Mains d'Argent, telle une danse entre l'art et la solitude, est marquée par sa dextérité extraordinaire pour sculpter des coiffures uniques. Dans l'ombre de ses mains singulières, il tisse des récits capillaires, offrant transformations et métamorphoses, tout en cherchant sa place dans un monde qui le perçoit à travers le prisme de sa différence.",
  picture_url: "app/assets/images/coiffeur.jpg",
  city: "UnivHair",
  address: user6.address,
  owner_id: user6.id
)
# _______________


user7 = User.create!(
  first_name: "Frida",
  last_name: "Calot",
  email:    "f.calot@example.com",
  password: "123456",
  phone_number: "0678456732",
  address: "7 rue de la Casa Azul, Mexico, Méxique",
  birth_date: "06/07/1907"
)

life7 = Life.create!(
  name: "Je travaille avec des couleurs, mais mon argent est toujours en noir et blanc ! ",
  price_per_day: "30",
  description: "Frida Calot, peintre passionnée, manie les pinceaux comme des extensions de son âme. À travers chaque toile, elle tisse des rêves et des émotions, mêlant les couleurs avec une grâce unique. Les paysages qu'elle crée sont des fenêtres ouvertes sur des mondes intérieurs, reflétant sa profonde connexion avec l'art et la puissance de la créativité. Chaque coup de pinceau de Frida évoque une histoire silencieuse, laissant une empreinte indélébile dans l'univers visuel qu'elle façonne.",
  picture_url: "app/assets/images/peintre.jpg",
  city: "Mexico",
  address: user7.address,
  owner_id: user7.id
)
# _______________

puts "Seeds done, congrats !"
