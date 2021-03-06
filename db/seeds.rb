# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 4,
  name: "John Doe",
  email: "user@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)
user.save!

Item.create!([{
  title: "Lightly Used Abercromie Sweatshirt",
  brand: "Abercrombie",
  product: "Sweatshirt",
  description: "Lightly used but like new sweathshirt.",
  condition: "Mint",
  origin: "USA",
  price: "19",
  image: Rails.root.join("app/assets/images/abercrombie.jpeg").open,
  user_id: user.id
},
{
  title: "Like new Alienware Laptop",
  brand: "Alienware",
  product: "Laptop",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  condition: "Fair",
  origin: "China",
  price: "723",
  image: Rails.root.join("app/assets/images/alienware.jpg").open,
  user_id: user.id
},
{
  title: "Bissel Vaccum non-working for parts",
  brand: "BISSEL",
  product: "Vacuum",
  description: "Turpis egestas integer eget aliquet nibh. Non nisi est sit amet facilisis magna etiam tempor.",
  condition: "Poor",
  origin: "Algeria",
  price: "225",
  image: Rails.root.join("app/assets/images/bissel.jpeg").open,
  user_id: user.id
},
{
  title: "Brand New Burbery Women's Sweater",
  brand: "Burberry",
  product: "Sweater",
  description: "Turpis egestas integer eget aliquet nibh. Non nisi est sit amet facilisis magna etiam tempor. Sem nulla pharetra diam sit amet nisl suscipit adipiscing. Elit sed vulputate.",
  condition: "New",
  origin: "UK",
  price: "840",
  image: Rails.root.join("app/assets/images/burberry.jpeg").open,
  user_id: user.id
},
{
  title: "Cartier Watch",
  brand: "Cartier",
  product: "Watch",
  description: "Like new men's fashion watch. ",
  condition: "Used",
  origin: "Sweden",
  price: "500",
  image: Rails.root.join("app/assets/images/cartier.jpeg").open,
  user_id: user.id
},
{
  title: "AA Batteries",
  brand: "Duracell",
  product: "Batteries",
  description: "Brand new batteries for your electronics. ",
  condition: "New",
  origin: "China",
  price: "12",
  image: Rails.root.join("app/assets/images/duracell.jpeg").open,
  user_id: user.id
},
{
  title: "Hermes Women's Handbag",
  brand: "Hermes",
  product: "Handbag",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci nulla pellentesque dignissim enim. Sed id semper risus in hendrerit gravida rutrum.  ",
  condition: "Mint",
  origin: "France",
  price: "527",
  image: Rails.root.join("app/assets/images/hermes.jpg").open,
  user_id: user.id
},
{
  title: "Hard to find 60s vitage Zildjian Cymbals",
  brand: "Zildjian",
  product: "Cymbals",
  description: "used cymbals but still sounding fantastic! ",
  condition: "Fair",
  origin: "Turkey",
  price: "747",
  image: Rails.root.join("app/assets/images/zildjian.jpeg").open,
  user_id: user.id
},
{
  title: "Guess Non-Prescription Glasses",
  brand: "GUESS",
  product: "Glasses",
  description: "Varius duis at consectetur lorem donec. In arcu cursus euismod quis viverra nibh cras pulvinar. Lectus vestibulum mattis ullamcorper velit sed. ",
  condition: "Used",
  origin: "Italy",
  price: "385",
  image: Rails.root.join("app/assets/images/guess.jpeg").open,
  user_id: user.id
},
{
  title: "Coach Bag up for sale",
  brand: "Coach",
  product: "Handbag",
  description: "Like new Coach handbag up for grabs.",
  condition: "Mint",
  origin: "USA",
  price: "985",
  image: Rails.root.join("app/assets/images/coach.jpeg").open,
  user_id: user.id
}
])
