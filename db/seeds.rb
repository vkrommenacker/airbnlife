# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
puts "Cleaning database..."

Booking.destroy_all
Life.destroy_all
User.destroy_all



puts "Creating users..."
user1 = User.create!(
  first_name: "John",
  last_name: "Wick",
  email: "j.wick@example.com",
  password: "123456",
  phone_number: '0666676869',
  city: "Nashville",
  country: "Etats-Unis",
  street_number: "1",
  street_name: "rue du Ranch",
  birth_date: "24/12/1993",
  age: 29
)
life1 = Life.create!(
  title: "Allez à lasso de votre vie!",
  price_per_day: "50",
  description: "Dans l'immensité de l'Ouest américain, le cowboy John chevauchait avec audace, veillant sur le bétail, bravant bandits et tempêtes. Ses nuits autour du feu tressaillaient d'histoires épiques, incrustant dans son regard le mélange unique d'aventure et de solitude des grands espaces.",
  # picture_url: "cgqx0cltd6rtt7ktryq4",
  owner_id: user1.id,
  job_title: "cow-boy"
)
file = URI.open("https://images.unsplash.com/photo-1691162534642-eb3779a8c231?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
life1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
life1.save
# _______________

user2 = User.create!(
  first_name: "Vanessa",
  last_name: "Diamant",
  email: "v.diamant@example.com",
  password: "123456",
  phone_number: "0767686970",
  city: "Sedan",
  country: "France",
  street_number: "2",
  street_name: "rue du Swag",
  birth_date: "29/01/1999",
  age: 24
)

life2 = Life.create!(
  title: "Shine bright like a Diamond!",
  price_per_day: "60",
  description: "La vie d'un drag queen est une symphonie audacieuse de créativité et de transformation, où les identités se mêlent en une explosion de couleurs et de glamour. Sur scène, ces artistes captivent avec des performances captivantes, fusionnant l'art du maquillage, des costumes extravagants et des mouvements gracieux pour célébrer la diversité et défier les normes de genre.",
  # picture_url: "fg8nwubssfjo7mhthiei",
  owner_id: user2.id,
  job_title: "drag-queen"
)
file = URI.open("https://images.unsplash.com/photo-1627829190682-c7f88673daa1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")
life2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
life2.save

# _______________

user3 = User.create!(
  first_name: "Rose",
  last_name: "Jardin",
  email: "r.jardin@example.com",
  password: "123456",
  phone_number: "0745673423",
  city: "Versailles",
  country: "France",
  street_number: "3",
  street_name: "rue des Tulipes",
  birth_date: "06/05/1985",
  age: 38
)

life3 = Life.create!(
  title: "Apprenez à être à fleur de pot...",
  price_per_day: "60",
  description: "La vie de fleuriste est un enchantement floral perpétuel. Chaque matin, l'atelier s'éveille avec l'éclat de couleurs vives et l'arôme doux des pétales. Les mains habiles sélectionnent avec soin les fleurs les plus exquises pour composer des créations qui évoquent des émotions uniques. Entre le ballet des tiges et le jeu de la lumière filtrant à travers les feuilles, le fleuriste cultive un lien profond avec la nature et partage des moments intimes avec chaque client, tissant ainsi une toile florale d'histoires et de sourires.",
  # picture_url: "ziv2mfe5qlj41sgczzbb",
  owner_id: user3.id,
  job_title: "fleuriste"
)
file = URI.open("https://plus.unsplash.com/premium_photo-1676996177410-d360bcf94bc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1332&q=80")
life3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
life3.save

# _______________

user4 = User.create!(
  first_name: "Bob",
  last_name: "Chiquitos",
  email: "b.chiquitos@example.com",
  password: "123456",
  phone_number: "0789563431",
  city: "Bazarland",
  country: "France",
  street_number: "4",
  street_name: "rue du Bazar",
  birth_date: "14/07/1964",
  age: 59
)
life4 = Life.create!(
  title: "S'il y en a pour un, il y en pour 10!",
  price_per_day: "35",
  description: "Être un père de famille nombreuse est un tourbillon joyeux de responsabilités et de moments inestimables, jonglant entre les rires enfantins, les aventures en groupe et les défis constants, tout en créant un foyer chaleureux et rempli d'amour. Chaque journée est une histoire unique, tissée d'amour fraternel, de rires partagés et de précieux souvenirs qui forgent des liens inébranlables au sein de cette tribu unie.",
  # picture_url: "hg2aey44nznleegut5cd",
  owner_id: user4.id,
  job_title: "père de famille"
)
file = URI.open("https://images.unsplash.com/photo-1609253932702-796cbf3d3171?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")
life4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
life4.save
# _______________


user5 = User.create!(
  first_name: "Hélène",
  last_name: "De Trois",
  email: "h.detrois@example.com",
  password: "123456",
  phone_number: "0766358575",
  city: "Pi",
  country: "France",
  street_number: "5",
  street_name: "rue de Pythagore",
  birth_date: "31/12/1989",
  age: 33
)

life5 = Life.create!(
  title: "Echec et math!",
  price_per_day: "65",
  description: "La vie de professeure de mathématiques est une quête d'illumination intellectuelle. Chaque jour, vous guidez les élèves à travers les dédales des nombres et des équations, éveillant la compréhension et la logique. Vous façonnez des esprits analytiques prêts à relever les défis mathématiques de la vie.",
  # picture_url: "hg2aey44nznleegut5cd",
  owner_id: user5.id,
  job_title: "professeure de mathématiques"
)
file = URI.open("https://images.unsplash.com/photo-1596496181871-9681eacf9764?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=886&q=80")
life5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
life5.save
# _______________

user6 = User.create!(
  first_name: "Edward",
  last_name: "Mains d'Argent",
  email: "e.mainsdargent@example.com",
  password: "123456",
  phone_number: "0756453423",
  city: "Univhair",
  country: "Etats-Unis",
  street_number: "6",
  street_name: "rue des Ciseaux",
  birth_date: "15/09/1991",
  age: 31
)
life6 = Life.create!(
  title: "Besoin d'un bol d'Hair ?",
  price_per_day: "55",
  description: "La vie d'Edward aux Mains d'Argent, telle une danse entre l'art et la solitude, est marquée par sa dextérité extraordinaire pour sculpter des coiffures uniques. Dans l'ombre de ses mains singulières, il tisse des récits capillaires, offrant transformations et métamorphoses, tout en cherchant sa place dans un monde qui le perçoit à travers le prisme de sa différence.",
  # picture_url: "hg2aey44nznleegut5cd",
  owner_id: user6.id,
  job_title: "coiffeur"
)
file = URI.open("https://images.unsplash.com/photo-1553521041-d168abd31de3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80")
life6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
life6.save
# _______________


user7 = User.create!(
  first_name: "Frida",
  last_name: "Calot",
  email: "f.calot@example.com",
  password: "123456",
  phone_number: "0678456732",
  city: "Mexico",
  country: "Mexique",
  street_number: "7",
  street_name: "rue de la Casa Azul",
  birth_date: "06/07/1907",
  age: 116
)

life7 = Life.create!(
  title: "Un peu de couleurs dans votre vie! ",
  price_per_day: "30",
  description: "Frida Calot, peintre passionnée, manie les pinceaux comme des extensions de son âme. À travers chaque toile, elle tisse des rêves et des émotions, mêlant les couleurs avec une grâce unique. Les paysages qu'elle crée sont des fenêtres ouvertes sur des mondes intérieurs, reflétant sa profonde connexion avec l'art et la puissance de la créativité. Chaque coup de pinceau de Frida évoque une histoire silencieuse, laissant une empreinte indélébile dans l'univers visuel qu'elle façonne.",
  # picture_url: "app/assets/images/peintre.jpg",
  owner_id: user7.id,
  job_title: "artiste peintre"
)
file = URI.open("https://plus.unsplash.com/premium_photo-1675425206468-dc196f6decdc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")
life7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
life7.save
# _______________

puts "Seeds done, congrats !"

booking3 = Booking.create!(
  life_id: life3.id,
  renter_id: user2.id,
  start_date: "24/08/2023",
  end_date: "26/08/2023"
)

booking4 = Booking.create!(
  life_id: life3.id,
  renter_id: user4.id,
  start_date: "24/08/2023",
  end_date: "26/08/2023"
)


puts "Bookings done, congrats !"
