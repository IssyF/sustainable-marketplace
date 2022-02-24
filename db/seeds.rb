# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Deleting all data..."
Order.destroy_all
Listing.destroy_all
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
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/molby/Mabel.jpg')), filename: 'Mabel.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Bertie Dress - Charcoal Short",
  category: "dresses",
  subcategory: "day dresses",
  price: 140,
  size: "UK18",
  description: "Seersucker black/ charcoal gingham, long puff sleeve with elasticated cuff. No zip, this is a smock style chuck on dress. Oversized collar with black ruffle, mini length. 1% Spandex, 38% Polyester, 61% Cotton. Made with love, handle with care. Handwash only."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/molby/Bertie.jpg')), filename: 'Bertie.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Bertie Dress - Floral",
  category: "dresses",
  subcategory: "day dresses",
  price: 145,
  size: "UK10",
  description: "Black floral print fabric, short puff sleeve with elasticated cuff. No zip, this is a smock style chuck on dress. Oversized collar with black ruffle. Low V neckline, midi length. 100% viscose. Made with love, handle with care. Handwash only."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/molby/Bertiefloral.jpg')), filename: 'Bertiefloral.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Ophelia Dress - Mixed Floral",
  category: "dresses",
  subcategory: "day dresses",
  price: 145,
  size: "UK8",
  description: "Red, green and black ditsy floral fabric, long puff sleeve with elasticated cuff. Zip fastening. Top lined. 100% polyester. Made with love, handle with care. Handwash only."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/molby/Ophelia.jpg')), filename: 'Ophelia.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Paloma Dress - Gold Star",
  category: "dresses",
  subcategory: "evening dresses",
  price: 195,
  size: "UK6",
  description: "Glitter Black star tulle fabric, short puff sleeve with elasticated cuff. Midi length skirt with frill at hem. This is a fitted shape with a zip fastening. Midi length skirt with frill at hem. 100% Polyester tulle, 100% Cotton lining. Made with love, handle with care. Handwash only."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/molby/Paloma.jpg')), filename: 'Paloma.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Bertie Bow - Brown Gingham",
  category: "accessories",
  subcategory: "hair accessories",
  price: 20,
  size: "One Size",
  description: "Oversized bow with barrette clip. Part of our 'Save The Scraps' initiative. Made from left over Bertie dress material."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/molby/Bertiehair.jpg')), filename: 'Bertiehair.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Paloma Bow - Black",
  category: "accessories",
  subcategory: "hair accessories",
  price: 20,
  size: "One Size",
  description: "Oversized bow with barrette clip. Part of our 'Save The Scraps' initiative. Made from left over fabric scraps."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/molby/palomahair.jpg')), filename: 'palomahair.jpg')
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
  title: "Enduro Full Length Leggings - Black",
  category: "activewear",
  subcategory: "leggings",
  price: 49,
  size: "UK12",
  description: "There's a reason why these leggings are a BAM icon. Our supportive Enduro fabric keeps you feeling and looking fantastic whatever the workout – meet the best performing sportswear in your wardrobe. Now with a back pocket! 64% Bamboo Viscose, 24% Organic Cotton, 12% Elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bam/Enduroblack.jpg')), filename: 'Enduroblack.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Enduro 7/8 Length Leggings - Mistral Print",
  category: "activewear",
  subcategory: "leggings",
  price: 28,
  size: "UK16",
  description: "Ultra comfortable 7/8 ankle-length bamboo leggings with a high waistband and guaranteed no-show through. Naturally anti-static, cool, dry and absorbent. 64% Bamboo Viscose, 24% Organic Cotton, 12% Elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bam/Enduroprint.jpg')), filename: 'Enduroprint.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Unity Bamboo Crop Top - Blue Fossil Print",
  category: "activewear",
  subcategory: "sports bras",
  price: 28,
  size: "UK10",
  description: "To layer or look hot on its own, our Unity Bamboo Crop Top is crafted from supportive, moisture absorbing Enduro jersey so you can move in supreme comfort. 64% Bamboo Viscose, 24% Organic Cotton, 12% Elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bam/Unity.jpg')), filename: 'Unity.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Balance Flock Seamless Crop Top - Red Jacquard",
  category: "activewear",
  subcategory: "sports bras",
  price: 34,
  size: "L",
  description: "A seamless crop top with 360° stretch for comfort and range of movement. In an eye-catching Jacquard design. 84% Viscose Bamboo, 12% Q Nova Recycled Polyamide, 4% Elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bam/Balance.jpg')), filename: 'Balance.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Origin T-shirt - Mid Grey Marl",
  category: "activewear",
  subcategory: "gym tops",
  price: 22,
  size: "UK14",
  description: "A supersoft T-shirt. In our very lightweight Air bamboo, this is a classic style that feels lovely against the skin. 68% Bamboo Viscose, 28% Organic Cotton, 4% Elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bam/Origin.jpg')), filename: 'Origin.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Challacombe Vest - Rich Navy",
  category: "activewear",
  subcategory: "gym tops",
  price: 22,
  size: "UK8",
  description: "A lightweight vest with a racer back. This vest has a curved hem and contrast edging on the neck and arm hole for a sporty feel. 95% Viscose Bamboo, 5% Elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/bam/Challacombe.jpg')), filename: 'Challacombe.jpg')
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
  title: "The Odette Dress Mini",
  category: "dresses",
  subcategory: "day dresses",
  price: 98,
  size: "UK12",
  description: "100% Cotton, fixed top wrapped with a full skirt. Mini length. Please cool hand wash and leave to hang dry. Concealed zip at back centre. Puff sleeve detailing."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/before/Odette.jpg')), filename: 'Odette.jpg')
Listing.create!(
  seller: Seller.last,
  title: "The Courtney Dress",
  category: "dresses",
  subcategory: "day dresses",
  price: 100,
  size: "UK16",
  description: "100% Cotton, fixed top wrapped with a full skirt. Mini length. Please cool hand wash and leave to hang dry. Concealed zip at back centre. Puff sleeve detailing with wrist ties."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/before/Courtney.jpg')), filename: 'Courtney.jpg')
Listing.create!(
  seller: Seller.last,
  title: "The Madeline Top - Green",
  category: "tops",
  subcategory: "blouses",
  price: 80,
  size: "UK8",
  description: "100% Cotton. Square neckline cropped top. Please cool hand wash and leave to hang dry. Open eneded zip at centre back."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/before/Madeline.jpg')), filename: 'Madeline.jpg')
Listing.create!(
  seller: Seller.last,
  title: "The Madeline Top - Black",
  category: "tops",
  subcategory: "blouses",
  price: 80,
  size: "UK10",
  description: "100% Cotton. Square neckline cropped top. Please cool hand wash and leave to hang dry. Open eneded zip at centre back."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/before/Madelineblack.jpg')), filename: 'Madelineblack.jpg')
Listing.create!(
  seller: Seller.last,
  title: "The Odette Top - Orange Print",
  category: "tops",
  subcategory: "blouses",
  price: 80,
  size: "UK12",
  description: "100% Cotton. Wrap shape, cropped length with tie detailing and puff sleeves. Please cool hand wash and leave to hang dry"
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/before/Odettetop.jpg')), filename: 'Odettetop.jpg')
Listing.create!(
  seller: Seller.last,
  title: "The Eva Luxe Lounge Trouser - Pink",
  category: "bottoms",
  subcategory: "trousers",
  price: 70,
  size: "UK12",
  description: "Cotton needlecord fabric with soft luxe feel. Elasticated Waist with Wide leg and side pockets. Hand wash only."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/before/eva.jpg')), filename: 'eva.jpg')
puts "Seller 3 listings created."

# seller number 4
User.create!(
  username: "yala",
  email: "yala@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "YALA",
  shop_description: "Yala is an award-winning African jewellery brand designed for the modern woman.",
  user: User.last
)
puts "Adding listings for seller 4..."
Listing.create!(
  seller: Seller.last,
  title: "Ulumbi Sunburst Earring Hoops - Gold",
  category: "accessories",
  subcategory: "jewellery",
  price: 90,
  size: "One Size",
  description: "The Ulumbi sunburst hoops are unmistakable head-turning statement earrings. Showcasing the talented craftsmanship of the Kenyan artisans who made them, each spike of these earrings has been painstakingly filed by hand to create the sunburst motif. Made from recycled brass, the hoops are available in 24k gold plating or silver plating. They fasten with a 9ct gold creole clasp or a 925 sterling silver creole clasp."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/yala/ulumbi.jpg')), filename: 'ulumbi.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Olengo Mismatched Star & Moon Earring Studs - Silver",
  category: "accessories",
  subcategory: "jewellery",
  price: 55,
  size: "One Size",
  description: "Olengo is a cute, mismatched pair of stud earrings with a star and crescent moon motif. Small enough for everyday wear, but just different enough to trigger a few double-takes! The studs are made from pure recycled brass and are available in gold plating or silver plating. They attach with surgical steel ear pins, for comfortable all-day wear. We also offer spare earring backs, if you'd like to keep some extras just in case."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/yala/olengo.jpg')), filename: 'olengo.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Zero Waste Brass Pendant",
  category: "accessories",
  subcategory: "jewellery",
  price: 35,
  size: "One Size",
  description: "Although we try hard to eliminate waste from our manufacturing, sometimes it's unavoidable. During the process of casting our jewellery, small randomly-shaped pieces of brass become separated from the finished product. George and and his team in the brass workshop rescue these pieces and transform them into smooth, bean-shaped pendants which they call organics, which are then delicately hung from a 14k gold chain made using recycled gold. The chain is 40cm in length."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/yala/zero.jpg')), filename: 'zero.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Mbita Monochrome & Gold Beaded Necklace",
  category: "accessories",
  subcategory: "jewellery",
  price: 45,
  size: "One Size",
  description: "Mbita is the perfect minimalist beaded necklace. A single strand of black, gold and white seed beads are strung on a super-strong 49 strand stainless steel wire and fastened with a gold vermeil lobster clasp. The 7cm gold extension chain will ensure the perfect fit."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/yala/mbita.jpg')), filename: 'mbita.jpg')
puts "Seller 4 listings created."

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
puts "Adding listings for seller 5..."
Listing.create!(
  seller: Seller.last,
  title: "Organic Denim Flared Jean",
  category: "bottoms",
  subcategory: "jeans",
  price: 69,
  size: "UK10",
  description: "These flared jeans are cut with a flattering silhouette. Designed with a high waist, slim through the top leg and gently flaring to the hem. Featuring the classic 5 pocket detail and concealed button fly. Crafted from 100% organic cotton in an authentic dark vintage wash, they are super soft and comfy."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/jeans.jpg')), filename: 'jeans.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Winter White Straight Leg Jean",
  category: "bottoms",
  subcategory: "jeans",
  price: 69,
  size: "UK18",
  description: "These classic 5 pocket straight leg jeans are cut with a flattering silhouette, a higher waist and a concealed button fly detail. Crafted from 100% organic cotton in a winter white colour, they are super soft and perfect styled with a chunky jumper and boots."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/whitejean.jpg')), filename: 'whitejean.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Patchwork Print Jacket",
  category: "outerwear",
  subcategory: "jackets",
  price: 129,
  size: "UK14",
  description: "This quilted jacket is a 'must have' this season. Fully reversible, it is designed with a unique patchwork print on one side and denim blue on the other. The patchwork print is inspired by a family heirloom dating back to the 1950's. Featuring a collar and placket with metal popper studs and patch pockets on one side and jet pockets on the reverse. The curved cuffs, hem and pockets are all bound. Crafted from 100%  crisp organic cotton, this jacket is truly unique and limited in numbers."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/patchworkjacket.jpg')), filename: 'patchworkjacket.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Buttercream Double Breasted Coat",
  category: "outerwear",
  subcategory: "coats",
  price: 99,
  size: "UK18",
  description: "This relaxed, slightly over sized coat is a must have this season. Double breasted with mock horn buttons, a rever collar and flap pockets. Mid calf length with a back vent and drop shoulders. The softest buttercream colour sets this coat apart on a cold winter's day. The fabric is brushed which gives a luxurious finish.  Made from dead stock fabric and lined with 100% recycled polyester."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/coat.jpg')), filename: 'coat.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Collar Stripe Jumper",
  category: "tops",
  subcategory: "knitwear",
  price: 75,
  size: "UK10",
  description: "This long sleeved jumper is designed with a classic navy and cream Breton stripe. Featuring a chunky collar and V neck placket with deep rib cuffs and hem. The hem has side splits and is slightly longer at the back. Super soft and cosy, this jumper is perfect styled with a pair of jeans. Made from a blend of yarns of which 45% are recycled."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/jumper.jpg')), filename: 'jumper.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Zig Zag Midi Shirt Dress",
  category: "dresses",
  subcategory: "day dresses",
  price: 89,
  size: "UK12",
  description: "This midi dress is designed with a waist seam and pleated skirt. Featuring a collar and functioning placket to the waist. Featuring an all-over black and white zig zag print. Crafted from the softest sustainable ECOVERO™ viscose is it super soft and comfy."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/zigzag.jpg')), filename: 'zigzag.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Ditsy Ornate Floral Blouse",
  category: "tops",
  subcategory: "blouses",
  price: 65,
  size: "UK8",
  description: "This blouse features a brightly coloured ditsy floral on a back base. A relax fit with gathering at the front and back yoke. The 3/4 sleeves have a gentle blouson effect with a narrow cuff and functioning button. Featuring a collar and button through placket with a straight hem, it can be styled tucked in our worn out. Crafted from the softest, sustainable ECOVERO™ viscose twill."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/blouse.jpg')), filename: 'blouse.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Blue Marl Rib Knitted Cami",
  category: "tops",
  subcategory: "camisoles",
  price: 49,
  size: "UK16",
  description: "This V neck knitted cami is designed to be bra friendly. It is ribbed to give a neater fit while ensuring comfort. Super soft to touch and in a beautiful marled blue, it is perfect styled on its own for those warmer transitional days or teamed with its coordinated cardigan . Made form a blend of yarns of which 55% are recyced."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/albaray/cami.jpg')), filename: 'cami.jpg')
puts "Seller 5 listings created."

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
puts "Adding listings for seller 6..."
Listing.create!(
  seller: Seller.last,
  title: "Marta High Rise Straight Jeans in Black",
  category: "bottoms",
  subcategory: "jeans",
  price: 55,
  size: "UK14",
  description: "Meet Marta - high waisted, straight legged and sustainable - she's our new everyday denim jean in plain black. Pair with a tee or cosy knit for an easy daytime look, or dress up with your favourite heels to take your look from day to night. As well as looking great, we've made sure our Marta jeans have the lowest possible impact on the planet - so you can feel great about wearing them too. Expertly crafted utilising REFIBRA™ technology, which takes production cotton scraps and upcycles it into new TENCEL™ Lyocell fibres, contributing to a circular economy."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/omnes/marta.jpg')), filename: 'marta.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Mabel Straight Leg Trouser in Mono Gingham",
  category: "bottoms",
  subcategory: "trousers",
  price: 39,
  size: "UK18",
  description: "With a relaxed, straight leg fit and ankle skimming cut, our Mabel trousers are both trendy and timeless. Pair with a classic white shirt or an oversized knit, these hard-working trousers are versatile, warm and wearable. Finished with button and zip fastening and a flattering cut, the Mabels are a guaranteed welcome addition to a winter wardrobe. Made from full recyclable biodegradable BCI Cotton with a soft brushed hand feel in on-trend monochrome gingham, our Mabel trousers are sustainable and stylish and play a part in supporting ethical, environmentally conscious cotton production."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/omnes/mabel.jpg')), filename: 'mabel.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Jeanne Mini Skirt in Petrol Blue",
  category: "bottoms",
  subcategory: "skirts",
  price: 39,
  size: "UK6",
  description: "It's official - the mini skirt is back, and we think it's here to stay. If you love our satin slip dresses, then you're sure to be a fan of Jeanne Bias Mini Skirt. With its slinky fabric (that's made entirely from recycled polyester, by the way), it sits on the hips and flares out, giving a slight A-line silhouette. Pair it with a tiny t-shirt in summer to make it truly noughties, or with our Rosika cardigan for a look à la Cher Horowitz."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/omnes/jeanie.jpg')), filename: 'jeanie.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Vida Bias Satin Slip Midi Skirt in Cream",
  category: "bottoms",
  subcategory: "skirts",
  price: 45,
  size: "UK10",
  description: "Our nod to 90s chic, the Vida is crafted from 100% Recycled Polyester Satin and cut to a chic midi length to flatter all body types. With an elasticated waistband and relaxed fit, we've found the answer to all your day to night dressing dilemmas with a skirt that is both stylish and sustainable. Pair with a white t-shirt and trainers for lowkey daytime glamour or dial up the drama with our matching Eliza cami top for co-ords that pack a punch."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/omnes/vida.jpg')), filename: 'vida.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Marianne Midi Dress in Blue Colourblock",
  category: "dresses",
  subcategory: "evening dresses",
  price: 59,
  size: "UK12",
  description: "Make way for Marianne! The midi colourblock satin slip dress inspired by the 90s. An update on our Florence and Riviera styles, it has a tie strap back, v neckline and duo colourway with two tonal blues. Crafted with 100% Recycled Polyester that's certified by the Global Recycle Standard, it's entirely made from post-consumer polyester, so it's just as sustainable as it is stylish."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/omnes/marianne.jpg')), filename: 'marianne.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Petra Mini Dress in Purple Floral",
  category: "dresses",
  subcategory: "day dresses",
  price: 69,
  size: "UK14",
  description: "Looking for a dress to take you from day to night? The Petra Ruched Sleeve Wrap Mini Dress is your answer. With its ruched long sleeves, slightly puffed shoulder detail and mini length, it reminisces of silhouettes seen in the 1980s. Crafted with 100% post-consumer polyester, this lined sheer fabric, with its pretty purple floral print, is as sustainable is it is stylish. A go-to dress for work and play, Petra is easily dressed up or down depending on your mood or occasion."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/omnes/petra.jpg')), filename: 'petra.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Serena Button Front Shacket Overshirt in Mono Gingham",
  category: "outerwear",
  subcategory: "jackets",
  price: 65,
  size: "UK6",
  description: "Don’t let cooler temperatures and unpredictable weather dull your style. Embrace jacket season and lean into autumnal layering with our Serena Overshirt. Part jacket, part shirt, this timeless shacket features a relaxed fit and practical chest pockets for the perfect trans seasonal piece to see you into the winter months and beyond. Made at a fully audited factory in Romania using 100% biodegradable BCI Cotton that’s finished with a soft brushed hand feel, with chic button front fastening and cuff, the Serena Overshirt is the perfect finishing touch to any outfit."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/omnes/serena.jpg')), filename: 'serena.jpg')
puts "Seller 6 listings created."

# seller number 7
User.create!(
  username: "damson",
  email: "damson@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "Damson Madder",
  shop_description: "Find the perfect long lasting outfit. We like to do things differently, to challenge the status quo",
  user: User.last
)
puts "Adding listings for seller 7..."
Listing.create!(
  seller: Seller.last,
  title: "Rita Jacket",
  category: "outerwear",
  subcategory: "jacket",
  price: 95,
  size: "UK16",
  description: "Made from 80% cotton and 20% recycled cotton. The denim used for this jacket is certified organic and recycled and has achieved a low impact EIM score. Made in Turkey."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/damson/ritajacket.jpg')), filename: 'ritajacket.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Rita Jeans",
  category: "bottoms",
  subcategory: "jeans",
  price: 80,
  size: "UK12",
  description: "Made from 80% cotton and 20% recycled cotton. The denim used for these jeans is certified organic and recycled and has achieved a low impact EIM score. Made in Turkey."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/damson/ritajeans.jpg')), filename: 'ritajeans.jpg')Listing.create!(
  seller: Seller.last,
  title: "Maude Jacquard Floral Trousers",
  category: "bottoms",
  subcategory: "trousers",
  price: 60,
  size: "UK6",
  description: "Made from 60% recycled polyester, 31% viscose, 8% polyamide and 1% elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/damson/maude.jpg')), filename: 'maude.jpg')Listing.create!(
  seller: Seller.last,
  title: "Handmade Crochet Shopper Bag",
  category: "accessories",
  subcategory: "bags",
  price: 45,
  size: "One Size",
  description: "Handmade crochet shopper in lilac. One of a kind. Dry clean only."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/damson/crochetbag.jpg')), filename: 'crochetbag.jpg')Listing.create!(
  seller: Seller.last,
  title: "Penny Crinkle Check Collar Blouse",
  category: "tops",
  subcategory: "blouses",
  price: 45,
  size: "UK8",
  description: "Made from 50% recycled polyester."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/damson/ritajacket.jpg')), filename: 'ritajacket.jpg')Listing.create!(
  seller: Seller.last,
  title: "Mabel 70s Marble Logo Tee",
  category: "tops",
  subcategory: "tshirts",
  price: 17.5,
  size: "UK10",
  description: "Made from 50% recycled cotton."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/damson/mabel.jpg')), filename: 'mabel.jpg')Listing.create!(
  seller: Seller.last,
  title: "Kushla Floral Organic Cotton Maxi Dress",
  category: "dresses",
  subcategory: "day dresses",
  price: 120,
  size: "UK14",
  description: "Maxi dress with tie back detail. Made from 100% organic cotton."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/damson/kushla.jpg')), filename: 'kushla.jpg')

# seller number 8
User.create!(
  username: "tala",
  email: "tala@test.com",
  password: "123123"
)
Seller.create!(
  shop_name: "TALA",
  shop_description: "TALA is sustainable style without compromise. Activewear pieces everyone can feel good in",
  user: User.last
)
puts "Adding listings for seller 8..."
Listing.create!(
  seller: Seller.last,
  title: "Skinluxe High Waisted Cycling Shorts - Khaki",
  category: "activewear",
  subcategory: "shorts",
  price: 40,
  size: "XS",
  description: "The perfect cycling shorts for lounging, lifting and living life. With super flattering, sweet-heart contouring these shorts are designed to stay up. Featuring a discreet and secure zip pocket for keeping your phone safe during your workouts, these versatile and high-performing cycling shorts pair perfectly with just about anything in your workout and going out wardrobe. Sustainably made from 76% recycled nylon and 24% LYCRA® SPORT."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/tala/shorts.jpg')), filename: 'shorts.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Zinnia Seamless Legging - Iris Purple",
  category: "activewear",
  subcategory: "leggings",
  price: 42,
  size: "M",
  description: "Your go-to, everyday legging, purposefully created with a versatile and multi-functional design. Crafted to provide the perfect balance between compression and stretch, holding you in place throughout any workout. Expect subtle contouring with our sweetheart waistband for the perfect flattering fit and comfort and shaping you’ve never felt before. Sustainably made from 92% recycled polyamide and 8% elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/tala/zinnia.jpg')), filename: 'zinnia.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Stark Seamless Racerback Sports Bra - Iris Purple",
  category: "activewear",
  subcategory: "sports bras",
  price: 32,
  size: "L",
  description: "Introducing the Stark Logo Seamless Racer Back Bra - the bra that does it all. Stark provides the perfect balance of functional and flattering, allowing you to move effortlessly whilst keeping you secure and comfortable during your workout. Pair with the Zinnia Seamless Legging for effortless co-ord chic whether at the gym or out and about. Sustainably made from 92% recycled polyamide and 8% elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/tala/stark.jpg')), filename: 'stark.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Reform Seamless Short Sleeve Crop Top - Black",
  category: "activewear",
  subcategory: "gym tops",
  price: 35,
  size: "S",
  description: "Super cute gym fit? Check. Stylish crop top? Check. Introducing the Reform Logo Seamless Short Sleeve Crop Top, your new go-to crop top for the ultimate flattering fit. Perfect for workouts or styling up with your favourite pair of jeans. Sustainably made from 92% recycled polyamide and 8% elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/tala/reform.jpg')), filename: 'reform.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Skinluxe Built-in Supprt Racerback Vest - Khaki",
  category: "activewear",
  subcategory: "shorts",
  price: 36,
  size: "XL",
  description: "Introducing the game-changing vest with built-in support and delicate racerback design. Ready to move whenever you are, this vest is your throw-on-and-go workout partner. There’s no need to wear a sports bra - this vest really does have it all. Sustainably made with 76% recycled nylon and 24% LYCRA® SPORT."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/tala/vest.jpg')), filename: 'vest.jpg')
Listing.create!(
  seller: Seller.last,
  title: "Aster Seamless Long Sleeve Crop Top - Sage Green",
  category: "activewear",
  subcategory: "gym tops",
  price: 37,
  size: "M",
  description: "Our best-selling, long sleeve, zip-up crop top is ready and raring to go. With lockable zip and high-compression, sweat-wicking, and antibacterial fabric, you can work out with confidence. Sustainably made from 92% recycled polyamide and 8% elastane."
)
Listing.last.photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/tala/shorts.jpg')), filename: 'shorts.jpg')


puts "Eight sellers created with listings"
