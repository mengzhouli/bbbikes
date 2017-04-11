# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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

# removed adjectives array

bicycles = [
  { :brand => "Colnago",
    :model => "Arabseque",
    :type => "Road",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Parlee",
    :model => "Chebacco",
    :type => "Hybrid",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Giant",
    :model => "TCR Advanced SL O",
    :type => "Road",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Jamis",
    :model => "Xenis Comp Femme",
    :type => "Racing",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Trek",
    :model => "Emonda ALR",
    :type => "Racing",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Brompton",
    :model => "S Type",
    :type => "Foldable",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Tern",
    :model => "Verge",
    :type => "Foldable",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Canondale",
    :model => "Bad Habit",
    :type => "Mountain",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Liv",
    :model => "Lust Advanced 1",
    :type => "Mountain",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Fly",
    :model => "Neutron",
    :type => "BMX",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Marin",
    :model => "Fairfax",
    :type => "City",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Faraday",
    :model => "Porteur",
    :type => "City",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Apollo",
    :model => "Syncro",
    :type => "Tandem",
    :height_range => ["L", "XL"]
  },
  { :brand => "Brooklyn Bicycle Co.",
    :model => "Wythe",
    :type => "City",
    :height_range => ["S", "M", "L", "XL"]
  }
]
