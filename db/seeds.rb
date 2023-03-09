

# CAUTION ======
#
# CAUTION ======
coordinates_1 = [[-4.4860088, 48.3905283], [-5.17372, 48.39333], [-5.38469, 48.25801], [-5.60441, 48.0528], [-8.80944, 47.92558], [-10.22691, 47.4116], [-10.99017, 46.81799], [-11.31727, 45.91514], [-11.53535, 44.92021], [-11.64438, 43.75043], [-11.64438, 42.47695], [-11.86246, 41.42278], [-11.97149, 40.43425], [-16.94331, 39.246], [-13.2603, 38.3598], [-16.14117, 35.51235], [-17.20255, 34.51894], [-18.56717, 33.51354], [-19.85598, 32.36834], [-21.8271, 31.46745], [-23.34335, 30.55781], [-28.2595, 28.67206], [-31.88975, 23.78964], [-32.49479, 19.85891], [-32.49479, 14.66087], [-32.49479, 9.93306], [-32.49479, 5.13597], [-31.28471, 1.51243], [-30.67967, -2.72166], [-30.67967, -7.54116], [-30.67967, -4.29862], [-31.28471, -15.82835], [-31.43792, -16.2333], [-31.62943, -16.63741], [-31.78264, -17.36996], [-32.12736, -17.99035], [-32.28057, -18.71742], [-32.51039, -19.18836], [-32.81681, -20.01824], [-33.23814, -20.73635], [-35.6583, -25.98487], [-39.8936, -28.67206], [-42.91881, -32.32041], [-45.33898, -36.31655], [-46.35115, -37.76531], [-47.1541, -39.33511], [-48.62619, -40.87043], [-50.2321, -41.97423], [-52.10566, -43.25448], [-53.44392, -43.83648], [-55.58513, -44.41285], [-57.31138, -45.6023], [-59.72309, -47.11422], [-48.71204, -60.30894], [-50.3067, -60.93318], [-52.6672, -61.30637], [-54.01549, -61.53822], [-55.25379, -61.53822], [-61.53822, -57.42082], [-58.25892, -61.53446], [-58.40196, -63.03297], [-58.61545, -64.66771], [-58.54443	, -66.57491], [-58.40196	, -67.9372], [-58.18718	, -70.38931], [-57.75369	, -72.97765], [-57.01949	, -75.56599], [-56.11891	, -77.74564], [-54.33225	, -78.42679], [-53.20509	, -79.38039], [-51.62661	, -80.47021], [-50.42716	, -81.56004], [-49.19653	, -81.96873], [-47.56814	, -81.96873],[-46.17124	, -82.10495], [-44.54409	, -82.37741], [-42.96991	, -82.51364], [-82.37741	, -41.04689], [-39.38258	, -82.24118], [-37.67762	, -82.37741], [-36.04279	, -82.37741], [-34.48566	, -82.7861], [-32.5551	, -82.7861], [-31.74776	, -81.01513], [-32.07526	, -79.08098], [-32.42917	, -76.74258], [-32.78446, -74.2037]]
Race.destroy_all
puts "Cleaning database..."
Boat.destroy_all

puts 'Creating 1 fake boat...'

Boat.create(name: "Speed Geoffroy", color: "red", sail_position: 0, score: 0)

puts 'Creating 3 fake races...'

r1 = Race.new(name: "Brest - Valparaíso", starting_latitude: 48.3905283, starting_longitude: -4.4860088, ending_latitude: -32.78446, ending_longitude: -74.2037, duration: 5, difficulty: 1, photo: "https://media.istockphoto.com/id/924568342/fr/photo/paysage-urbain-de-la-ville-historique-valparaiso.jpg?s=612x612&w=0&k=20&c=HAkcKWFd9UR-4FLGyq1DWuNOoRPgg-CE4De4Ny5Vh5w=" )

coordinates_1.each do |coordinates|
  r1.coordinates << coordinates
end
r1.save!

r2 = Race.create(name: "Saint-Malo - Le Cap", starting_latitude: 48.649518, starting_longitude: -2.0260409, ending_latitude: -33.928992, ending_longitude: 18.417396, duration: 4, difficulty: 2, photo: "https://media.istockphoto.com/id/477451698/fr/photo/monts-douze-ap%C3%B4tres-montagne-dans-des-camps-bay-le-cap-afrique-du-sud.jpg?s=612x612&w=0&k=20&c=0keU6rBLNjT0aKkrHTRU3bfZbJasd3-7BpW8cNRwdNs=" )
#coordinates_2.each do |coordinates|
  #r2.coordinates << coordinates
#end
r2.save!
r3 = Race.create(name: "Kochi - Sambava", starting_latitude: 9.9674277, starting_longitude: 76.2454436, ending_latitude: -14.254956, ending_longitude: 50.1556533, duration: 2, difficulty: 3, photo: "https://www.grandeslatitudes.voyage/wp-content/uploads/2017/09/Baobabs-matin-3--e1509017110351.jpg" )
#coordinates_3.each do |coordinates|
  #r3.coordinates << coordinates
#end
r3.save!

puts 'Finished!'
