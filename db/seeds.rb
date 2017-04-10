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
    :model => "Arabesque",
    :type => "Road",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Colnago_Arabesque_jylld2.jpg",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Parlee",
    :model => "Chebacco",
    :type => "Hybrid",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Parlee_Chebacco_gskzwe.jpg",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Giant",
    :model => "TCR Advanced SL O",
    :type => "Road",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Giant_TCR_Advanced_SL_O_oanr2r.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Jamis",
    :model => "Xenis Comp Femme",
    :type => "Racing",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Jamis_Xenis_Comp_Femme_bje4th.jpg",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Trek",
    :model => "Emonda ALR",
    :type => "Racing",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Trek_Emonda_ALR_tib7ju.jpg",
    :height_range => ["M", "L", "XL"]
  },
  { :brand => "Brompton",
    :model => "S Type",
    :type => "Foldable",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Brompton_S_Type_xilav5.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Tern",
    :model => "Verge",
    :type => "Foldable",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Tern_Verge_yyha5v.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Canondale",
    :model => "Bad Habit",
    :type => "Mountain",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Canondale_Bad_Habit_v2fypl.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Liv",
    :model => "Lust Advanced 1",
    :type => "Mountain",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861998/Liv_Lust_Advanced_1_xx0kmj.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Fly",
    :model => "Neutron",
    :type => "BMX",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Fly_Neutron_pu5jjc.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Marin",
    :model => "Fairfax",
    :type => "City",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Marin_Fairfax_prjjbf.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Faraday",
    :model => "Porteur",
    :type => "City",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491861997/Faraday_Porteur_jlzbva.jpg",
    :height_range => ["S", "M", "L", "XL"]
  },
  { :brand => "Apollo",
    :model => "Syncro",
    :type => "Tandem",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491862127/Apollo_Syncro_mph3wf.jpg",
    :height_range => ["L", "XL"]
  },
  { :brand => "Brooklyn Bicycle Co.",
    :model => "Wythe",
    :type => "City",
    remote_photo_url: "http://res.cloudinary.com/dcomjubrq/image/upload/v1491862127/Brooklyn_Bicycle_Co._Wythe_nkpjvf.jpg",
    :height_range => ["S", "M", "L", "XL"]
  }
]
