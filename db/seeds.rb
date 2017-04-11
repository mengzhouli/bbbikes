# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Bike.destroy_all
meng = User.create(email: "mengzhou.li@gmail.com", password: "pppassword")

geoff = User.create(email: "geoff@vonture.net", password: "pppassword")

ashraf = User.create(email: "ashraf.caspian@gmail.com", password: "pppassword")

dana = User.create(email: "d.alibran@gmail.com", password: "pppassword")

giant = Bike.new(brand: "Giant", model: "TCR Advanced SL O", bike_kind: "Road", height_range: "M", description: "Everyday durable bike", location: "Le-Plateau, Montreal, QC")
giant.user = dana
giant.save!

trek = Bike.new(brand: "Trek", model: "Emonda ALR", bike_kind: "Racing", height_range: "XL", description: "High end performance bike for a large person", location: "Ville-Marie, Montreal, QC")
trek.user = ashraf
trek.save!

fara = Bike.new(brand: "Faraday", model: "Porteur", bike_kind: "City", height_range: "S", description: "Commuter for a small frame", location: "Ville-Marie, Montreal, QC")
trek.user = ashraf
trek.save!

apollo = Bike.new(brand: "Apollo", model: "Syncro", bike_kind: "Tandem", height_range: "L", description: "Take your relationship for a ride!", location: "Ville-Marie, Montreal, QC")
apollo.user = ashraf
apollo.save!

bicycles_data = [
  { :brand => "Colnago",
    :model => "Arabesque",
    :bike_kind => "Road",
    location: "Montreal",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Parlee",
    :model => "Chebacco",
    :bike_kind => "Hybrid",
    location: "Montreal",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Giant",
    :model => "TCR Advanced SL O",
    :bike_kind => "Road",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Jamis",
    :model => "Xenis Comp Femme",
    :bike_kind => "Racing",
    location: "Montreal",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Trek",
    :model => "Emonda ALR",
    :bike_kind => "Racing",
    location: "Montreal",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Brompton",
    :model => "S bike_kind",
    :bike_kind => "Foldable",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Tern",
    :model => "Verge",
    :bike_kind => "Foldable",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Canondale",
    :model => "Bad Habit",
    :bike_kind => "Mountain",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Liv",
    :model => "Lust Advanced 1",
    :bike_kind => "Mountain",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Fly",
    :model => "Neutron",
    :bike_kind => "BMX",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Marin",
    :model => "Fairfax",
    :bike_kind => "City",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Faraday",
    :model => "Porteur",
    :bike_kind => "City",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Apollo",
    :model => "Syncro",
    :bike_kind => "Tandem",
    location: "Montreal",
    :height_range => ["L", "XL"]
  },
  { :brand => "Brooklyn Bicycle Co.",
    :model => "Wythe",
    :bike_kind => "City",
    location: "Montreal",
    :height_range => ["S", "M", "L", "XL"]
  }
]

# photos = ["http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Colnago_Arabesque_jylld2.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Parlee_Chebacco_gskzwe.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Giant_TCR_Advanced_SL_O_oanr2r.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Jamis_Xenis_Comp_Femme_bje4th.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Trek_Emonda_ALR_tib7ju.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Brompton_S_bike_kind_xilav5.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Tern_Verge_yyha5v.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Canondale_Bad_Habit_v2fypl.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Liv_Lust_Advanced_1_xx0kmj.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Fly_Neutron_pu5jjc.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Marin_Fairfax_prjjbf.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Faraday_Porteur_jlzbva.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491862127/Apollo_Syncro_mph3wf.jpg",
# "http://res.cloudinary.com/dcomjubrq/image/upload/v1491862127/Brooklyn_Bicycle_Co._Wythe_nkpjvf.jpg"]

bicycles_data.each do |bike_attributes|
  bike = Bike.new(bike_attributes)
  bike.user_id = User.pluck(:id).sample
  bike.save!
end


