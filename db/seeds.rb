# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#create random photos array for bike#show testing
photos_urls = []
4.times do
 photos_urls << 'https://unsplash.it/300/200/?random'
end


#create users
meng = User.create(email: "mengzhou.li@gmail.com", password: "pppassword", password_confirmation: "pppassword", first_name: "Meng" )
geoff = User.create(email: "geoff@vonture.net", password: "pppassword", password_confirmation: "pppassword", first_name: "Geoff")
ashraf = User.create(email: "ashraf.caspian@gmail.com", password: "pppassword", password_confirmation: "pppassword", first_name: "Ashraf")
dana = User.create(email: "d.alibran@gmail.com", password: "pppassword", password_confirmation: "pppassword", first_name: "Dana", last_name: "Alibrandi")

#create bike, associate to user, associate random photo array to bike
giant = Bike.new(brand: "Giant", model: "TCR Advanced SL O", bike_kind: "Road", height_range: "160cm", description: "Everyday durable bike", location: "
5300 St Hubert St, Montreal, QC H2J 2Y5", has_lights: false, has_lock: true, has_helmet: true, has_basket: true, has_bell: false)
giant.user = dana
giant.photo_urls = photos_urls
giant.save!


trek = Bike.new(brand: "Trek", model: "Emonda ALR", bike_kind: "Racing", height_range: "200cm", description: "High end performance bike for a large person", location: "
6275 St Laurent Blvd, Montreal, QC H2S 3C3", has_lights: true, has_lock: true, has_helmet: true, has_basket: true, has_bell: true)
trek.user = ashraf
trek.photo_urls = photos_urls
trek.save!


fara = Bike.new(brand: "Faraday", model: "Porteur", bike_kind: "City", height_range: "145cm", description: "Commuter for a small frame", location: "6704 Clark St, Montreal, QC H2S 3E9", has_lights: true, has_lock: false, has_helmet: false, has_basket: false, has_bell: true)
fara.user = ashraf
fara.photo_urls = photos_urls
fara.save!


apollo = Bike.new(brand: "Apollo", model: "Syncro", bike_kind: "Tandem", height_range: "170cm", description: "Take your relationship for a ride!", location: "
5723 Park Ave, Montreal, QC H2V 4G9", has_lights: true, has_lock: false, has_helmet: true, has_basket: false, has_bell: true)
apollo.user = ashraf
apollo.photo_urls = photos_urls
apollo.save!



adjectives = ["Amazing", "Fancy", "Trendy", "Retro", "Lightweight", "Flashy", "Durable", "Foldable", "Awesome", "Funky"]

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



