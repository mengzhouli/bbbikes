# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
