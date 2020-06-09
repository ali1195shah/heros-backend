# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


puts "Deleting existing data..."
Superhero.destroy_all
User.destroy_all

num_arr = [2, 3, 4, 15, 17, 30, 31, 32, 34, 35, 36, 37, 38, 47, 48, 58, 60, 70, 76, 79, 80, 93, 94, 95, 97, 136, 149, 150, 156, 157, 162, 204, 206, 207, 208, 209, 218, 222, 224, 225, 226, 230, 232, 233, 234, 235, 236, 273, 274, 275, 309, 332, 333, 351, 368, 370, 391, 393, 479, 487, 488, 490, 491, 503, 504, 505, 510, 514, 515, 516, 517, 520, 521, 523, 527, 528, 529, 542, 556, 566, 581, 594, 598, 619, 620, 637, 638, 643, 644, 645, 655, 657, 658, 659, 660, 680, 687, 688, 717, 718, 720]
# num_arr = [1..731]
# num_arr = [1...7, 8..11]
puts 'Fetching superhero data...'
num_arr.each do |superhero_id|
  request_url = "https://www.superheroapi.com/api.php/10220107637702540/#{superhero_id}"
  request = RestClient::Request.execute(
    method: :get,
    url: request_url)
  superhero = JSON.parse(request)

  
  Superhero.create(
    name: superhero['name'],
    intelligence: superhero['powerstats']['intelligence'],
    strength: superhero['powerstats']['strength'],
    speed: superhero['powerstats']['speed'],
    durability: superhero['powerstats']['durability'],
    power: superhero['powerstats']['power'],
    combat: superhero['powerstats']['combat'],
    full_name: superhero['biography']['full-name'],
    alter_egos: superhero['biography']['alter-egos'],
    aliases: superhero['biography']['aliases'][0],
    place_of_birth: superhero['biography']['place-of-birth'],
    first_appearance: superhero['biography']['first-appearance'],
    publisher: superhero['biography']['publisher'],
    alignment: superhero['biography']['alignment'],
    gender: superhero['appearance']['gender'],
    race: superhero['appearance']['race'],
    height_feet: superhero['appearance']['height'][0],
    height_meters: superhero['appearance']['height'][1],
    weight_lbs: superhero['appearance']['weight'][0],
    weight_kgs: superhero['appearance']['weight'][1],
    eye_color: superhero['appearance']['eye-color'],
    hair_color: superhero['appearance']['hair-color'],
    occupation: superhero['work']['occupation'],
    base: superhero['work']['base'],
    group_affiliation: superhero['connections']['group-affiliation'],
    relatives: superhero['connections']['relatives'],
    image_url: superhero['image']['url']
  )
  puts superhero_id
  # puts superhero['name']
  # puts '-'
end


u1 = User.create(username: 'Ali', password: '123')

puts 'DB seeded!'
