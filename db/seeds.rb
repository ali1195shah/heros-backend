# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


puts "Deleting existing data..."
Superhero.destroy_all
# num_arr = [1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 15, 17, 18, 19, 20, 21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 52, 53, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 75, 76, 79, 80, 81, 82, 83, 85, 86, 87, 88, 89, 90, 91, 93, 94, 95, 96, 97, 98, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 114, 115, 116, 118, 119, 120, 121, 122, 123, 125, 126, 127, 129, 132, 135, 136, 137, 138, 139, 140, 141, 142, 144, 145, 146, 148, 149, 150, 151, 152, 156, 157, 159, 160, 161, 162, 163, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 179, 180, 181, 182, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 201, 202, 204, 206, 207, 208, 209, 211, 212, 213, 215, 216, 217, 218, 219, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 240, 241, 242, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 278, 279, 280, 281, 282, 284, 285, 286, 287, 289, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 308, 309, 310, 311, 312, 313, 315, 316, 317, 318, 319, 320, 321, 323, 324, 325, 328, 329, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 342, 343, 344, 345, 346, 347, 348, 350, 351, 354, 356, 358, 359, 360, 361, 366, 367, 368, 370, 371, 372, 373, 374, 375, 376, 378, 379, 382, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 418, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 435, 436, 438, 439, 443, 444, 445, 446, 448, 450, 451, 452, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 466, 467, 468, 470, 472, 473, 474, 475, 476, 478, 479, 480, 481, 482, 483, 484, 485, 487, 488, 490, 491, 492, 494, 495, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 513, 514, 515, 516, 517, 518, 519, 520, 521, 523, 525, 526, 527, 528, 529, 531, 532, 535, 536, 538, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 575, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 594, 595, 598, 599, 600, 601, 602, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 618, 619, 620, 621, 622, 623, 624, 625, 626, 628, 630, 631, 632, 633, 634, 635, 637, 638, 639, 640, 641, 642, 644, 645, 646, 648, 649, 650, 651, 652, 653, 654, 655, 657, 658, 659, 660, 661, 663, 664, 665, 666, 667, 668, 670, 671, 672, 674, 675, 676, 677, 678, 679, 680, 681, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 695, 696, 697, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 711, 712, 713, 714, 716, 717, 718, 719, 720, 722, 723, 724, 726, 727, 728, 729, 731]
# num_arr = [1..731]
puts 'Fetching superhero data...'
(1..5).each do |superhero_id|
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
end

puts 'DB seeded!'




# num_arr = ['tt3896198', 
#   'tt2015381',
#   'tt0848228', 
#   'tt4154756',
#   'tt2395427', 
#   'tt4154796', 
#   'tt2076298', 
#   'tt2888046', 
#   'tt1386932', 
#   'tt1220719', 
#   'tt2911666', 
#   'tt4425200', 
#   'tt6146586',
#   'tt0458339',
#   'tt1843866',
#   'tt3498820',
#   'tt0371746',
#   'tt1228705',
#   'tt1300854',
#   'tt0800369',
#   'tt1981115',
#   'tt3501632',
#   'tt1825683',
#   'tt4154664',
#   'tt0114709',
#   'tt0120363',
#   'tt0435761',
#   'tt1979376',
#   'tt0448115',
#   'tt0831387',
#   'tt3741700',
#   'tt0451279',
#   'tt2250912',
#   'tt6320628',
#   'tt4633694',
#   'tt0076759',
#   'tt0080684',
#   'tt0086190'

# ]

# puts 'Fetching superhero data...'
# num_arr.each do |superhero_id|
#   request_url = "http://www.omdbapi.com/?i=#{superhero_id}&apikey=48a92fd6"
#     request = RestClient::Request.execute(
#     method: :get,
#     url: request_url)
#   superhero = JSON.parse(request)

  
#   Superhero.create(
#     name: superhero['Title']
#     # intelligence: superhero['Actors']
#     # strength: superhero['powerstats']['strength'],
#     # speed: superhero['powerstats']['speed'],
#     # durability: superhero['powerstats']['durability'],
#     # power: superhero['powerstats']['power'],
#     # combat: superhero['powerstats']['combat'],
#     # full_name: superhero['biography']['full-name'],
#     # alter_egos: superhero['biography']['alter-egos'],
#     # aliases: superhero['biography']['aliases'][0],
#     # place_of_birth: superhero['biography']['place-of-birth'],
#     # first_appearance: superhero['biography']['first-appearance'],
#     # publisher: superhero['biography']['publisher'],
#     # alignment: superhero['biography']['alignment'],
#     # gender: superhero['appearance']['gender'],
#     # race: superhero['appearance']['race'],
#     # height_feet: superhero['appearance']['height'][0],
#     # height_meters: superhero['appearance']['height'][1],
#     # weight_lbs: superhero['appearance']['weight'][0],
#     # weight_kgs: superhero['appearance']['weight'][1],
#     # eye_color: superhero['appearance']['eye-color'],
#     # hair_color: superhero['appearance']['hair-color'],
#     # occupation: superhero['work']['occupation'],
#     # base: superhero['work']['base'],
#     # group_affiliation: superhero['connections']['group-affiliation'],
#     # relatives: superhero['connections']['relatives'],
#     # image_url: superhero['image']['url']
#   )
#   puts "Done"
# end

# puts 'DB seeded!'