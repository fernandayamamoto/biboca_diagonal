Product.destroy_all
User.destroy_all

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}"))
end

user = User.create!(email: 'test@mail.com', password: '123123')
products = [
  {user: user, name: "WAND HARRY POTTER", price: 130, description: "Harry Potter Holly Wand, 28cm, Black Unicorn Horn Handle.The wand chooses the wizard...and this wand chooses YOU.", photo: 'VARINHA HARRY POTTER.jpg'},
  {user: user, name: "WAND LORD VOLDEMORT", price: 150, description: "Continuing the saga of wands, Lord Voldemort could not be missing, get yours now to give Kedavra avada to your enemies. Height: 37 cm Width 4 cm.", photo: 'VARINHA VOLDEMORT.jpg'},
  {user: user, name: "WAND HERMIONE", price: 180, description: "Continuing the saga of wands, we couldn't miss that of our wonderful.It's light and not light, Hermione! The smartest witch for her age. 35cm.", photo: 'VARINHA HERMIONE.jpg'},
  {user: user, name: "WAND RONNY", price: 160, description: "The most powerful Wand, a means of reversing death, and a way to hide from it. 38cm. Core: Thestral Hair. Wood: Elderberry.", photo: 'VARINHA RONNY.jpg'},
  {user: user, name: "BROOM FIREBOLT", price: 500, description: "The Firebolt Broom is an expensive broom and has been used by the Bulgarian and Irish Quidditch teams.", photo: 'VASSOURA FIREBOLT.jpg'},
  {user: user, name: "BROOM NIMBUS 1000", price: 530, description: "Its characteristics are a speed of 160 km/h that can make a 360° turn around a fixed point in the air.", photo: 'VASSOURA NIMBUS 1000.jpg'},
  {user: user, name: "BROOM NIMBUS 2000", price: 560, description: "These are polished and shiny that have a mahogany handle, a long straight straw tail and also have the Nimbus 2000 brand written in gold near the handle.", photo: 'VASSOURA NIMBUS 2000.jpg'},
  {user: user, name: "BROOM NIMBUS 2001", price: 580, description: "This broom has an advantage over the others in terms of speed and agility, causing great dissatisfaction in households.", photo: 'VASSOURA NIMBUS 2001.jpg'},
  {user: user, name: "HEDWIG", price: 5000, description: "With over 15 realistic sounds and movements. Size: 15x14x28.5 cm.", photo: 'HEDWIG.jpg'},
  {user: user, name: "FÊNIX", price: 7000, description: "The phoenix is a creature present in legends ranging from Ancient Egypt to East Asian regions. Above all, its main feature is the ability to regenerate and rise from the ashes after death.", photo: 'FÊNIX.jpg'},
  {user: user, name: "BICHENTO", price: 3000, description: "Crookshanks was a half-sniffing cat and Hermione Granger's pet. He is Half-Snuggle,[1] as he has in evidence a lion's tail, ability to solve problems alone without training, and an ability to recognize untrustworthy people (even when transfigured).
    Crookshanks was purchased from the Magical Pets store by Hermione Granger. The saleswoman stated that it had been in the store for a long time and nobody wanted it.", photo: 'GATO.jpg'},
  {user: user, name: "BUCKBEAK", price: 9000, description: "Buckbeak is a proud and quite aggressive creature. Buckbeak is actually very affectionate and loyal to people who treat him with kindness and respect.", photo: 'BICUCO.jpg'}
]

products.each do |product|
  photo = product[:photo]
  product.delete(:photo)
  pro = Product.new(product)
  pro.photo.attach(io: seed_image(photo), filename: photo, content_type: "image/png")
  pro.save!
end
