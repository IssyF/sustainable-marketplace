# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Deleting all users..."
Seller.destroy_all
Buyer.destroy_all
User.destroy_all

puts "Creating new buyer user..."
User.create!(
  username: "issyf",
  email: "issy@test.com",
  password: "123123"
)
Buyer.create!(
  address: "Unit 13, 138 Kingsland Road, London, E2 8DY",
  user: User.first
)
puts "Buyer user created"

puts "Creating seller users..."

# seller number 1
User.create!(
  username: "molby",
  email: "molby@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "Molby the Label",
  shop_description: "Handmade British slow fashion",
  user: User.last
)

puts "Adding listings for seller 1..."
Listing.create!(
  seller: Seller.last,
  title: "Mabel Dress - Red Floral",
  category: "dresses",
  subcategory: "day dresses",
  price: 155,
  size: "UK12",
  description: "Red ditsy floral fabric midi dress, long volume sleeve with elasticated cuff. Zip fastening, top lined. 100% polyester. Made with love, handle with care. Handwash only."
)
Listing.create!(
  seller: Seller.last,
  title: "Bertie Dress - Charcoal Short",
  category: "dresses",
  subcategory: "day dresses",
  price: 140,
  size: "UK18",
  description: "Seersucker black/ charcoal gingham, long puff sleeve with elasticated cuff. No zip, this is a smock style chuck on dress. Oversized collar with black ruffle, mini length. 1% Spandex, 38% Polyester, 61% Cotton. Made with love, handle with care. Handwash only."
)
Listing.create!(
  seller: Seller.last,
  title: "Bertie Dress - Floral",
  category: "dresses",
  subcategory: "day dresses",
  price: 145,
  size: "UK10",
  description: "Black floral print fabric, short puff sleeve with elasticated cuff. No zip, this is a smock style chuck on dress. Oversized collar with black ruffle. Low V neckline, midi length. 100% viscose. Made with love, handle with care. Handwash only."
)
Listing.create!(
  seller: Seller.last,
  title: "Ophelia Dress - Mixed Floral",
  category: "dresses",
  subcategory: "day dresses",
  price: 145,
  size: "UK8",
  description: "Red, green and black ditsy floral fabric, long puff sleeve with elasticated cuff. Zip fastening. Top lined. 100% polyester. Made with love, handle with care. Handwash only."
)
Listing.create!(
  seller: Seller.last,
  title: "Paloma Dress - Gold Star",
  category: "dresses",
  subcategory: "evening dresses",
  price: 195,
  size: "UK6",
  description: "Glitter Black star tulle fabric, short puff sleeve with elasticated cuff. Midi length skirt with frill at hem. This is a fitted shape with a zip fastening. Midi length skirt with frill at hem. 100% Polyester tulle, 100% Cotton lining. Made with love, handle with care. Handwash only."
)
Listing.create!(
  seller: Seller.last,
  title: "Bertie Bow - Brown Gingham",
  category: "accessories",
  subcategory: "hair accessories",
  price: 20,
  size: "One Size",
  description: "Oversized bow with barrette clip. Part of our 'Save The Scraps' initiative. Made from left over Bertie dress material."
)
Listing.create!(
  seller: Seller.last,
  title: "Paloma Bow - Black",
  category: "accessories",
  subcategory: "hair accessories",
  price: 20,
  size: "One Size",
  description: "Oversized bow with barrette clip. Part of our 'Save The Scraps' initiative. Made from left over fabric scraps."
)
puts "Seller 1 listings created."

# seller number 2
User.create!(
  username: "bam",
  email: "bam@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "BAM",
  shop_description: "Natural activewear",
  user: User.last
)

puts "Adding listings for seller 2..."
Listing.create!(
  seller: Seller.last,
  title: "Paloma Bow - Black",
  category: "accessories",
  subcategory: "hair accessories",
  price: 20,
  size: "One Size",
  description: "Oversized bow with barrette clip. Part of our 'Save The Scraps' initiative. Made from left over fabric scraps."
)
puts "Seller 2 listings created."

# seller number 3
User.create!(
  username: "before",
  email: "before@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "Before July",
  shop_description: "Timeless statement pieces",
  user: User.last
)
puts "Adding listings for seller 3..."
Listing.create!(
  seller: Seller.last,
  title: "Enduro Full Length Leggings - Black",
  category: "activewear",
  subcategory: "leggings",
  price: 49,
  size: "UK12",
  description: "There's a reason why these leggings are a BAM icon. Our supportive Enduro fabric keeps you feeling and looking fantastic whatever the workout – meet the best performing sportswear in your wardrobe. Now with a back pocket! 64% Bamboo Viscose, 24% Organic Cotton, 12% Elastane."
)
Listing.create!(
  seller: Seller.last,
  title: "Enduro 7/8 Length Leggings - Mistral Print",
  category: "activewear",
  subcategory: "leggings",
  price: 28,
  size: "UK16",
  description: "Ultra comfortable 7/8 ankle-length bamboo leggings with a high waistband and guaranteed no-show through. Naturally anti-static, cool, dry and absorbent. 64% Bamboo Viscose, 24% Organic Cotton, 12% Elastane."
)
Listing.create!(
  seller: Seller.last,
  title: "Unity Bamboo Crop Top - Blue Fossil Print",
  category: "activewear",
  subcategory: "sports bras",
  price: 28,
  size: "UK10",
  description: "To layer or look hot on its own, our Unity Bamboo Crop Top is crafted from supportive, moisture absorbing Enduro jersey so you can move in supreme comfort. 64% Bamboo Viscose, 24% Organic Cotton, 12% Elastane."
)
Listing.create!(
  seller: Seller.last,
  title: "Balance Flock Seamless Crop Top - Red Jacquard",
  category: "activewear",
  subcategory: "sports bras",
  price: 34,
  size: "L",
  description: "A seamless crop top with 360° stretch for comfort and range of movement. In an eye-catching Jacquard design. 84% Viscose Bamboo, 12% Q Nova Recycled Polyamide, 4% Elastane."
)
Listing.create!(
  seller: Seller.last,
  title: "Origin T-shirt - Mid Grey Marl",
  category: "activewear",
  subcategory: "gym tops",
  price: 22,
  size: "UK14",
  description: "A supersoft T-shirt. In our very lightweight Air bamboo, this is a classic style that feels lovely against the skin. 68% Bamboo Viscose, 28% Organic Cotton, 4% Elastane."
)
Listing.create!(
  seller: Seller.last,
  title: "Challacombe Vest - Rich Navy",
  category: "activewear",
  subcategory: "gym tops",
  price: 22,
  size: "UK8",
  description: "A lightweight vest with a racer back. This vest has a curved hem and contrast edging on the neck and arm hole for a sporty feel. 95% Viscose Bamboo, 5% Elastane."
)
puts "Seller 3 listings created."

# seller number 4
User.create!(
  username: "bee",
  email: "bee@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "The Abstract Bee",
  shop_description: "Handmade bee-auties for you and your home",
  user: User.last
)
puts "Adding listings for seller 2..."
puts "Seller 2 listings created."
# seller number 5
User.create!(
  username: "albaray",
  email: "albaray@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "Albaray",
  shop_description: "Thoughtful fashion designed for everyday",
  user: User.last
)
puts "Adding listings for seller 2..."
puts "Seller 2 listings created."
# seller number 6
User.create!(
  username: "omnes",
  email: "omnes@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "Omnes",
  shop_description: "We're here to fashion a more sustainable future",
  user: User.last
)
puts "Adding listings for seller 2..."
puts "Seller 2 listings created."
puts "Six sellers created with listings"
