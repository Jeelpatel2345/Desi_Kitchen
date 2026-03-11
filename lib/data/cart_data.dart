const String cloudinaryBase =
    "https://res.cloudinary.com/dkay8rouh/image/upload/";

List<Map<String, dynamic>> foodMenu = [

  // Gujarati Menu Items (100+ items)
  {'name': 'Dhokla', 'price': 80, 'category': 'Snacks', 'veg': true,
    'image':'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152814/dhokla_ch7qi3.jpg',
    'description': 'Soft steamed Gujarati snack made from gram flour batter.',

    'ingredients': [
      'Gram Flour',
      'Mustard Seeds',
      'Curry Leaves',
      'Green Chilli'
    ],

    'combo': [
      'Green Chutney',
      'Masala Chaas'
    ]},
  {
    'name': 'Khandvi',
    'price': 90,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152841/khandvi_f4nvzg.jpg',
    'description': 'Soft and delicate Gujarati snack made from gram flour and yogurt, rolled into thin layers and tempered with mustard seeds.',
    'ingredients': ['Gram Flour', 'Curd', 'Mustard Seeds', 'Curry Leaves', 'Green Chilli'],
    'combo': ['Masala Chaas', 'Green Chutney','Tea']
  },

  {
    'name': 'Fafda',
    'price': 70,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152818/fafda_ovapao.jpg',
    'description': 'Crispy and crunchy Gujarati snack made from gram flour, traditionally eaten during festivals.',
    'ingredients': ['Gram Flour', 'Ajwain', 'Turmeric', 'Oil', 'Salt'],
    'combo': ['Jalebi', 'Masala Chaas','Tea']
  },

  {
    'name': 'Jalebi',
    'price': 60,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152827/jalebi_anuwpf.jpg',
    'description': 'Sweet deep-fried spiral desert soaked in sugar syrup, popular across India.',
    'ingredients': ['Refined Flour', 'Sugar Syrup', 'Cardamom', 'Saffron'],
    'combo': ['Fafda', 'Masala Milk']
  },

  {
    'name': 'Fafda Jalebi Combo',
    'price': 120,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152817/fafda_jalebi_combo_nfxhfd.jpg',
    'description': 'A traditional Gujarati breakfast combination of crispy fafda and sweet jalebi.',
    'ingredients': ['Gram Flour', 'Flour', 'Sugar Syrup', 'Ajwain'],
    'combo': ['Masala Chaas','Tea']
  },

  {
    'name': 'Khaman Dhokla',
    'price': 80,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152840/khaman_dhokla_fgfdhd.jpg',
    'description': 'Soft and fluffy steamed snack made from gram flour batter and tempered with mustard seeds.',
    'ingredients': ['Gram Flour', 'Curd', 'Mustard Seeds', 'Green Chilli', 'Curry Leaves'],
    'combo': ['Green Chutney', 'Masala Chaas']
  },

  {
    'name': 'Rava Dhokla',
    'price': 90,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152878/rava_dhokla_dqzmwh.jpg',
    'description': 'Steamed semolina snack with mild spices and soft texture.',
    'ingredients': ['Semolina', 'Curd', 'Mustard Seeds', 'Curry Leaves'],
    'combo': ['Green Chutney']
  },

  {
    'name': 'Methi Na Gota',
    'price': 80,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152853/methi_na_gota_ga3fnd.jpg',
    'description': 'Deep fried fritters made from gram flour and fresh fenugreek leaves.',
    'ingredients': ['Gram Flour', 'Fenugreek Leaves', 'Green Chilli', 'Spices'],
    'combo': ['Green Chutney', 'Masala Chaas']
  },

  {
    'name': 'Bhajiya (Pakoda)',
    'price': 70,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152794/bhajiya_pakoda_ffdrze.jpg',
    'description': 'Crispy deep-fried fritters made with vegetables dipped in gram flour batter.',
    'ingredients': ['Gram Flour', 'Potato', 'Onion', 'Spices'],
    'combo': ['Green Chutney', 'Tea']
  },

  {
    'name': 'Kachori',
    'price': 60,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152833/kachori_hmppkc.jpg',
    'description': 'Crispy fried pastry filled with spicy lentil or potato stuffing.',
    'ingredients': ['Refined Flour', 'Lentils', 'Spices', 'Oil'],
    'combo': ['Green Chutney']
  },

  {
    'name': 'Samosa',
    'price': 50,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152884/samosa_ml2pj4.jpg',
    'description': 'Deep-fried triangular pastry filled with spiced potato mixture.',
    'ingredients': ['Potato', 'Refined Flour', 'Peas', 'Spices'],
    'combo': ['Green Chutney', 'Tea']
  },

  {
    'name': 'Dabeli',
    'price': 40,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152804/dabeli_ku96kh.jpg',
    'description': 'Popular Kutch street food made with spicy mashed potato filling inside a bun.',
    'ingredients': ['Potato', 'Dabeli Masala', 'Pav', 'Peanuts', 'Pomegranate'],
    'combo': ['Masala Chaas']
  },

  {
    'name': 'Vada Pav',
    'price': 40,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152911/vada_pav_uiyrbc.jpg',
    'description': 'Mumbai-style burger made with spicy potato fritter inside a pav bun.',
    'ingredients': ['Potato', 'Pav', 'Garlic Chutney', 'Spices'],
    'combo': ['Masala Chaas']
  },

  {
    'name': 'Pav Bhaji',
    'price': 120,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152866/pav_bhaji_eai8kr.jpg',
    'description': 'Spicy mashed vegetable curry served with butter-toasted pav.',
    'ingredients': ['Potato', 'Tomato', 'Butter', 'Bhaji Masala', 'Pav'],
    'combo': ['Cold Drink']
  },

  {
    'name': 'Sev Usal',
    'price': 90,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152888/sev_usal_iabpeu.jpg',
    'description': 'Spicy curry made from peas topped with crunchy sev.',
    'ingredients': ['Peas', 'Sev', 'Onion', 'Tomato', 'Spices'],
    'combo': ['Pav']
  },

  {
    'name': 'Pani Puri',
    'price': 60,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152859/pani_puri_mcznbq.jpg',
    'description': 'Crispy hollow puris filled with spicy water, potatoes, and chutneys.',
    'ingredients': ['Puri', 'Potato', 'Tamarind Water', 'Spices'],
    'combo': ['Sev Puri']
  },
  {
    'name': 'Sev Puri',
    'price': 70,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152885/sev_puri_r82cjs.jpg',
    'description': 'Popular Indian street snack made with crispy puris topped with potatoes, chutneys, and crunchy sev.',
    'ingredients': [
      'Crispy Puri',
      'Boiled Potato',
      'Onion',
      'Tamarind Chutney',
      'Sev'
    ],
    'combo': [
      'Pani Puri',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Dahi Puri',
    'price': 80,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152805/dahi_puri_zx9m2o.jpg',
    'description': 'Crunchy puris filled with yogurt, chutneys, and spices.',
    'ingredients': ['Puri', 'Curd', 'Tamarind Chutney', 'Sev'],
    'combo': ['Bhel Puri']
  },

  {
    'name': 'Bhel Puri',
    'price': 70,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152798/bhel_puri_kr1vrx.jpg',
    'description': 'Tangy and crunchy street snack made from puffed rice and chutneys.',
    'ingredients': ['Puffed Rice', 'Onion', 'Tomato', 'Tamarind Chutney', 'Sev'],
    'combo': ['Pani Puri']
  },

  {
    'name': 'Ragda Pattice',
    'price': 90,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152875/ragda_pattice_cn4kz2.jpg',
    'description': 'Popular street dish made with potato patties topped with white pea curry.',
    'ingredients': ['Potato Patties', 'White Peas Curry', 'Spices'],
    'combo': ['Green Chutney']
  },
  {
    'name': 'Aloo Tikki',
    'price': 80,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152800/aloo_tikki_wewv00.jpg',
    'description': 'Crispy shallow-fried potato patties seasoned with spices and served with chutneys.',
    'ingredients': [
      'Potato',
      'Green Chilli',
      'Coriander',
      'Spices',
      'Breadcrumbs'
    ],
    'combo': [
      'Green Chutney',
      'Tamarind Chutney'
    ]
  },

  {
    'name': 'Papdi Chaat',
    'price': 80,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152862/papdi_chaat_o0wdni.jpg',
    'description': 'Popular North Indian street snack made with crispy papdi, yogurt, chutneys, and spices.',
    'ingredients': [
      'Papdi',
      'Curd',
      'Tamarind Chutney',
      'Boiled Potato',
      'Sev'
    ],
    'combo': [
      'Masala Chaas',
      'Pani Puri'
    ]
  },

  {
    'name': 'Dahi Vada',
    'price': 90,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152807/dahi_vada_fwtw0q.jpg',
    'description': 'Soft lentil dumplings soaked in creamy yogurt and topped with sweet and spicy chutneys.',
    'ingredients': [
      'Urad Dal',
      'Curd',
      'Tamarind Chutney',
      'Roasted Cumin',
      'Spices'
    ],
    'combo': [
      'Papdi Chaat',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Raj Kachori',
    'price': 100,
    'category': 'Snacks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152876/raj_kachori_y03hot.jpg',
    'description': 'Large crispy kachori filled with potatoes, yogurt, chutneys, and sev, making a royal street snack.',
    'ingredients': [
      'Kachori Shell',
      'Boiled Potato',
      'Curd',
      'Tamarind Chutney',
      'Sev'
    ],
    'combo': [
      'Pani Puri',
      'Masala Chaas'
    ]
  },

  // Thali
  {
    'name': 'Gujarati Thali',
    'price': 250,
    'category': 'Thali',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152827/gujarati_thali_mlokbd.jpg',
    'description': 'Traditional Gujarati meal served with a variety of sabzi, dal, rotli, rice, farsan, and sweet.',
    'ingredients': [
      'Rotli',
      'Dal',
      'Seasonal Sabzi',
      'Rice',
      'Farsan',
      'Sweet Dish'
    ],
    'combo': [
      'Masala Chaas',
      'Papad'
    ]
  },

  {
    'name': 'Mini Gujarati Thali',
    'price': 180,
    'category': 'Thali',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152856/mini_gujarati_thali_rsxm3i.jpg',
    'description': 'Smaller version of Gujarati thali with essential dishes for a light yet complete meal.',
    'ingredients': [
      'Rotli',
      'Dal',
      'Sabzi',
      'Rice',
      'Pickle'
    ],
    'combo': [
      'Masala Chaas'
    ]
  },

  {
    'name': 'Special Gujarati Thali',
    'price': 350,
    'category': 'Thali',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152892/special_gujarati_thali_pp58do.jpg',
    'description': 'Premium Gujarati thali with multiple sabzis, farsan, sweets, dal, rotli, and rice.',
    'ingredients': [
      'Rotli',
      'Dal',
      '2-3 Sabzi',
      'Rice',
      'Farsan',
      'Sweet Dish',
      'Papad'
    ],
    'combo': [
      'Masala Chaas',
      'Sweet Dish'
    ]
  },

  {
    'name': 'Kathiyawadi Thali',
    'price': 280,
    'category': 'Thali',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152837/kathiyavadi_thali_l95hwp.jpg',
    'description': 'Spicy Kathiyawadi meal including bajra rotla, lasaniya bateta, sev tameta, and traditional dishes.',
    'ingredients': [
      'Bajra Rotla',
      'Lasaniya Bateta',
      'Sev Tameta',
      'Dal',
      'Rice'
    ],
    'combo': [
      'Buttermilk',
      'Jaggery'
    ]
  },

  {
    'name': 'Unlimited Thali',
    'price': 400,
    'category': 'Thali',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152908/unlimited_thali_l8f7ez.jpg',
    'description': 'All-you-can-eat Gujarati thali with unlimited servings of sabzi, dal, rotli, rice, farsan, and sweets.',
    'ingredients': [
      'Rotli',
      'Dal',
      'Sabzi',
      'Rice',
      'Farsan',
      'Sweet Dish'
    ],
    'combo': [
      'Masala Chaas',
      'Papad'
    ]
  },
  // Sabzi (Vegetables)
  {
    'name': 'Undhiyu',
    'price': 180,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152906/undhiyu_sqh3h7.jpg',
    'description': 'Traditional Gujarati mixed vegetable dish cooked with spices and seasonal vegetables.',
    'ingredients': [
      'Surti Papdi',
      'Potato',
      'Eggplant',
      'Methi Muthiya',
      'Spices'
    ],
    'combo': [
      'Bajra Rotla',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Ringan Bateta Nu Shaak',
    'price': 140,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152880/ringan_bateta_nu_shaak_jsuxcv.jpg',
    'description': 'Simple and flavorful curry made with eggplant and potatoes.',
    'ingredients': [
      'Eggplant',
      'Potato',
      'Garlic',
      'Spices'
    ],
    'combo': [
      'Phulka Rotli',
      'Gujarati Dal'
    ]
  },

  {
    'name': 'Sev Tamatar Nu Shaak',
    'price': 130,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152887/sev_tameta_nu_shaak_jmbpbn.jpg',
    'description': 'Tangy tomato curry topped with crispy sev, a popular Gujarati dish.',
    'ingredients': [
      'Tomato',
      'Sev',
      'Spices',
      'Garlic'
    ],
    'combo': [
      'Phulka Rotli',
      'Rice'
    ]
  },

  {
    'name': 'Dudhi Na Muthiya',
    'price': 150,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152815/dudhi_na_muthiya_ew5joc.jpg',
    'description': 'Steamed bottle gourd dumplings cooked with spices.',
    'ingredients': [
      'Bottle Gourd',
      'Gram Flour',
      'Spices',
      'Coriander'
    ],
    'combo': [
      'Gujarati Dal',
      'Rotli'
    ]
  },

  {
    'name': 'Turia Bateta Nu Shaak',
    'price': 140,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152905/turia_bateta_nu_shaak_hzh9ry.jpg',
    'description': 'Light curry made with ridge gourd and potatoes.',
    'ingredients': [
      'Ridge Gourd',
      'Potato',
      'Spices'
    ],
    'combo': [
      'Phulka Rotli',
      'Rice'
    ]
  },

  {
    'name': 'Valor Nu Shaak',
    'price': 160,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152929/valor_nu_shaak_fdmhka.jpg',
    'description': 'Traditional Gujarati curry made with valor beans and spices.',
    'ingredients': [
      'Valor Beans',
      'Garlic',
      'Spices'
    ],
    'combo': [
      'Bajra Rotla',
      'Buttermilk'
    ]
  },

  {
    'name': 'Papdi Nu Shaak',
    'price': 150,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152863/papdi_nu_shaak_rrsidr.jpg',
    'description': 'Flavorful curry made with flat beans and traditional spices.',
    'ingredients': [
      'Papdi Beans',
      'Garlic',
      'Spices'
    ],
    'combo': [
      'Rotli',
      'Gujarati Dal'
    ]
  },

  {
    'name': 'Fansi Nu Shaak',
    'price': 130,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152819/fansi_nu_shaak_lg7glf.jpg',
    'description': 'Healthy vegetable dish made with green beans and spices.',
    'ingredients': [
      'Green Beans',
      'Garlic',
      'Spices'
    ],
    'combo': [
      'Rotli',
      'Rice'
    ]
  },

  {
    'name': 'Surati Papdi',
    'price': 140,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152894/surati_papdi_fh1wjg.jpg',
    'description': 'Popular Gujarati dish made with Surti papdi beans.',
    'ingredients': [
      'Surti Papdi',
      'Spices',
      'Garlic'
    ],
    'combo': [
      'Bajra Rotla',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Bhinda Nu Shaak',
    'price': 130,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152799/bhinda_nu_shaak_kgryjn.jpg',
    'description': 'Simple and tasty stir-fried okra cooked with spices.',
    'ingredients': [
      'Okra',
      'Onion',
      'Spices'
    ],
    'combo': [
      'Rotli',
      'Gujarati Dal'
    ]
  },

  {
    'name': 'Karela Nu Shaak',
    'price': 140,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152837/karela_nu_shaak_dsqbv7.jpg',
    'description': 'Traditional bitter gourd curry cooked with spices.',
    'ingredients': [
      'Bitter Gourd',
      'Onion',
      'Spices'
    ],
    'combo': [
      'Rotli',
      'Rice'
    ]
  },

  {
    'name': 'Tendli Nu Shaak',
    'price': 130,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152898/tendli_nu_shaak_kxbawz.jpg',
    'description': 'Ivy gourd vegetable cooked with mild Gujarati spices.',
    'ingredients': [
      'Ivy Gourd',
      'Garlic',
      'Spices'
    ],
    'combo': [
      'Rotli',
      'Gujarati Dal'
    ]
  },

  {
    'name': 'Parval Nu Shaak',
    'price': 140,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152865/parval_nu_shaak_kuthlm.jpg',
    'description': 'Traditional curry made with pointed gourd and spices.',
    'ingredients': [
      'Pointed Gourd',
      'Garlic',
      'Spices'
    ],
    'combo': [
      'Rotli',
      'Rice'
    ]
  },

  {
    'name': 'Guar Nu Shaak',
    'price': 130,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152824/guar_nu_shaak_iqmwij.jpg',
    'description': 'Cluster beans cooked with traditional Gujarati spices.',
    'ingredients': [
      'Cluster Beans',
      'Spices',
      'Garlic'
    ],
    'combo': [
      'Rotli',
      'Gujarati Dal'
    ]
  },

  {
    'name': 'Cholafali Nu Shaak',
    'price': 140,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152801/cholafali_nu_shaak_cx0rlf.jpg',
    'description': 'Traditional Gujarati dish prepared with cholafali and spices.',
    'ingredients': [
      'Cholafali',
      'Spices',
      'Garlic'
    ],
    'combo': [
      'Rotli',
      'Buttermilk'
    ]
  },

  {
    'name': 'Lasaniya Bateta',
    'price': 120,
    'category': 'Sabzi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152845/lasaniya_bateta_a8aiih.jpg',
    'description': 'Spicy garlic potato curry popular in Kathiyawadi cuisine.',
    'ingredients': [
      'Potato',
      'Garlic',
      'Red Chilli',
      'Spices'
    ],
    'combo': [
      'Bajra Rotla',
      'Buttermilk'
    ]
  },
  // Dal
  {
    'name': 'Gujarati Dal',
    'price': 100,
    'category': 'Dal',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152826/gujarati_dal_byb4yy.jpg',
    'description': 'Sweet and tangy lentil soup made with toor dal and traditional Gujarati spices.',
    'ingredients': [
      'Toor Dal',
      'Tomato',
      'Peanuts',
      'Jaggery',
      'Curry Leaves'
    ],
    'combo': [
      'Steamed Rice',
      'Phulka Rotli'
    ]
  },

  {
    'name': 'Kadhi',
    'price': 100,
    'category': 'Dal',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152834/kadhi_tzxgls.jpg',
    'description': 'Creamy yogurt-based curry tempered with mustard seeds and spices.',
    'ingredients': [
      'Curd',
      'Gram Flour',
      'Curry Leaves',
      'Mustard Seeds'
    ],
    'combo': [
      'Khichdi',
      'Rice'
    ]
  },

  {
    'name': 'Mag Ni Dal',
    'price': 110,
    'category': 'Dal',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152846/mag_ni_dal_dyj5ok.jpg',
    'description': 'Light and healthy lentil dish made with split green gram.',
    'ingredients': [
      'Moong Dal',
      'Garlic',
      'Cumin',
      'Spices'
    ],
    'combo': [
      'Phulka Rotli',
      'Rice'
    ]
  },

  {
    'name': 'Toor Dal',
    'price': 100,
    'category': 'Dal',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152902/toor_dal_iplrdv.jpg',
    'description': 'Simple and comforting lentil curry prepared with pigeon peas.',
    'ingredients': [
      'Toor Dal',
      'Tomato',
      'Curry Leaves',
      'Spices'
    ],
    'combo': [
      'Steamed Rice',
      'Rotli'
    ]
  },

  {
    'name': 'Dal Dhokli',
    'price': 140,
    'category': 'Dal',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152809/dal_dhokli_rzgf91.jpg',
    'description': 'Traditional Gujarati dish where wheat dumplings are cooked in spicy dal.',
    'ingredients': [
      'Toor Dal',
      'Wheat Flour',
      'Spices',
      'Garlic'
    ],
    'combo': [
      'Papad',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Dal Vada',
    'price': 120,
    'category': 'Dal',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152810/dal_vada_ujlklf.jpg',
    'description': 'Crispy fritters made from soaked lentils and spices.',
    'ingredients': [
      'Chana Dal',
      'Green Chilli',
      'Coriander',
      'Spices'
    ],
    'combo': [
      'Green Chutney',
      'Masala Chaas'
    ]
  },
  // Rotli (Breads)
  {
    'name': 'Bajra Rotla',
    'price': 40,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152791/bajra_rotla_vvtdq6.jpg',
    'description': 'Traditional thick flatbread made from pearl millet flour, popular in Gujarati cuisine.',
    'ingredients': [
      'Bajra Flour',
      'Water',
      'Salt'
    ],
    'combo': [
      'Lasaniya Bateta',
      'Buttermilk'
    ]
  },

  {
    'name': 'Makai Rotla',
    'price': 40,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152848/makai_rotla_wdd8i1.jpg',
    'description': 'Soft and rustic flatbread made from maize flour, commonly served in Gujarati meals.',
    'ingredients': [
      'Maize Flour',
      'Water',
      'Salt'
    ],
    'combo': [
      'Undhiyu',
      'Buttermilk'
    ]
  },

  {
    'name': 'Jowar Rotla',
    'price': 40,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152831/jowar_rotla_skx6ri.jpg',
    'description': 'Healthy flatbread prepared with sorghum flour and cooked on a hot griddle.',
    'ingredients': [
      'Jowar Flour',
      'Water',
      'Salt'
    ],
    'combo': [
      'Sev Tamatar Nu Shaak',
      'Gujarati Dal'
    ]
  },

  {
    'name': 'Phulka Rotli',
    'price': 30,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152868/phulka_rotli_dg9n16.jpg',
    'description': 'Soft whole wheat flatbread cooked on a griddle and puffed over flame.',
    'ingredients': [
      'Whole Wheat Flour',
      'Water',
      'Salt'
    ],
    'combo': [
      'Gujarati Dal',
      'Sabzi'
    ]
  },

  {
    'name': 'Thepla',
    'price': 50,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152899/thepla_zuf4kj.jpg',
    'description': 'Popular Gujarati flatbread flavored with spices and herbs.',
    'ingredients': [
      'Whole Wheat Flour',
      'Spices',
      'Curd',
      'Coriander'
    ],
    'combo': [
      'Pickle',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Methi Thepla',
    'price': 60,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152855/methi_thepla_unegmr.jpg',
    'description': 'Soft Gujarati flatbread made with fresh fenugreek leaves.',
    'ingredients': [
      'Whole Wheat Flour',
      'Fenugreek Leaves',
      'Spices',
      'Curd'
    ],
    'combo': [
      'Pickle',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Puri',
    'price': 50,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152873/puri_z3thdb.jpg',
    'description': 'Deep fried wheat bread served hot and fluffy.',
    'ingredients': [
      'Wheat Flour',
      'Oil',
      'Salt'
    ],
    'combo': [
      'Gujarati Dal',
      'Sabzi'
    ]
  },

  {
    'name': 'Bhakri',
    'price': 40,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152795/bhakri_dcjpy1.jpg',
    'description': 'Traditional Gujarati crispy flatbread made from wheat flour.',
    'ingredients': [
      'Whole Wheat Flour',
      'Water',
      'Salt'
    ],
    'combo': [
      'Sev Tamatar Nu Shaak',
      'Buttermilk'
    ]
  },

  {
    'name': 'Rotla with Ghee',
    'price': 60,
    'category': 'Rotli',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152881/rotla_with_ghee_igpzt4.jpg',
    'description': 'Bajra rotla served with melted ghee for a rich traditional taste.',
    'ingredients': [
      'Bajra Flour',
      'Ghee',
      'Water',
      'Salt'
    ],
    'combo': [
      'Lasaniya Bateta',
      'Buttermilk'
    ]
  },
  // Rice
  {
    'name': 'Vaghareli Khichdi',
    'price': 120,
    'category': 'Rice',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152912/vaghareli_khichdi_r5ztbx.jpg',
    'description': 'Traditional Gujarati tempered khichdi made with rice, lentils, and spices.',
    'ingredients': [
      'Rice',
      'Moong Dal',
      'Mustard Seeds',
      'Curry Leaves',
      'Spices'
    ],
    'combo': [
      'Kadhi',
      'Papad'
    ]
  },

  {
    'name': 'Masala Khichdi',
    'price': 130,
    'category': 'Rice',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152852/masala_khichdi_ok22wy.jpg',
    'description': 'Spicy Gujarati khichdi cooked with vegetables and aromatic spices.',
    'ingredients': [
      'Rice',
      'Moong Dal',
      'Vegetables',
      'Spices'
    ],
    'combo': [
      'Kadhi',
      'Pickle'
    ]
  },

  {
    'name': 'Plain Khichdi',
    'price': 100,
    'category': 'Rice',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152869/plain_khichdi_ni6vsd.jpg',
    'description': 'Simple comfort food made from rice and lentils.',
    'ingredients': [
      'Rice',
      'Moong Dal',
      'Salt',
      'Turmeric'
    ],
    'combo': [
      'Kadhi',
      'Papad'
    ]
  },

  {
    'name': 'Vagharelo Bhaat',
    'price': 110,
    'category': 'Rice',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152913/vagharelo_bhaat_gkr6eq.jpg',
    'description': 'Leftover rice tempered with spices, mustard seeds, and curry leaves.',
    'ingredients': [
      'Cooked Rice',
      'Mustard Seeds',
      'Curry Leaves',
      'Green Chilli'
    ],
    'combo': [
      'Gujarati Dal',
      'Papad'
    ]
  },

  {
    'name': 'Pulao',
    'price': 140,
    'category': 'Rice',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152871/pulao_gcqi7c.jpg',
    'description': 'Fragrant rice dish cooked with vegetables and aromatic spices.',
    'ingredients': [
      'Basmati Rice',
      'Vegetables',
      'Whole Spices',
      'Ghee'
    ],
    'combo': [
      'Raita',
      'Papad'
    ]
  },

  {
    'name': 'Jeera Rice',
    'price': 120,
    'category': 'Rice',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152830/jeera_rice_e2jy7x.jpg',
    'description': 'Simple rice dish flavored with cumin seeds and ghee.',
    'ingredients': [
      'Basmati Rice',
      'Cumin Seeds',
      'Ghee',
      'Salt'
    ],
    'combo': [
      'Gujarati Dal',
      'Sabzi'
    ]
  },

  //Punjabi Menu

  // Starters
  {
    'name': 'Paneer Tikka',
    'price': 220,
    'category': 'Starters',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153321/paneer_tikka_mvukuk.jpg',
    'description': 'Popular Punjabi starter made with marinated paneer cubes grilled in a tandoor.',
    'ingredients': [
      'Paneer',
      'Yogurt',
      'Red Chilli Powder',
      'Garam Masala',
      'Capsicum',
      'Onion'
    ],
    'combo': [
      'Mint Chutney',
      'Laccha Paratha'
    ]
  },

  {
    'name': 'Tandoori Paneer',
    'price': 240,
    'category': 'Starters',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153366/tandoori_paneer_cwf8os.jpg',
    'description': 'Soft paneer pieces marinated with spices and roasted in a traditional tandoor.',
    'ingredients': [
      'Paneer',
      'Yogurt',
      'Ginger Garlic Paste',
      'Tandoori Masala',
      'Lemon Juice'
    ],
    'combo': [
      'Mint Chutney',
      'Butter Naan'
    ]
  },

  {
    'name': 'Hara Bhara Kabab',
    'price': 180,
    'category': 'Starters',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153004/hara_bhara_kabab_gy0ap5.jpg',
    'description': 'Healthy vegetarian kababs made with spinach, peas, and potatoes.',
    'ingredients': [
      'Spinach',
      'Green Peas',
      'Potato',
      'Garam Masala',
      'Breadcrumbs'
    ],
    'combo': [
      'Mint Chutney',
      'Masala Chaas'
    ]
  },

  {
    'name': 'Tandoori Mushroom',
    'price': 200,
    'category': 'Starters',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153361/tandoori_mushroom_jfbaoj.jpg',
    'description': 'Juicy mushrooms marinated in spicy yogurt mixture and grilled in a tandoor.',
    'ingredients': [
      'Mushroom',
      'Yogurt',
      'Red Chilli Powder',
      'Garam Masala',
      'Lemon Juice'
    ],
    'combo': [
      'Mint Chutney',
      'Butter Naan'
    ]
  },

  {
    'name': 'Tandoori Aloo',
    'price': 160,
    'category': 'Starters',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153357/tandoori_aloo_sobyx9.jpg',
    'description': 'Baby potatoes marinated with spices and roasted in a tandoor for smoky flavor.',
    'ingredients': [
      'Baby Potato',
      'Yogurt',
      'Tandoori Masala',
      'Ginger Garlic Paste',
      'Lemon Juice'
    ],
    'combo': [
      'Mint Chutney',
      'Laccha Paratha'
    ]
  },

  // Veg Main Course
  {
    'name': 'Paneer Butter Masala',
    'price': 240,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153322/paneer_butter_masala_ot7kfb.jpg',
    'description': 'Creamy Punjabi curry made with paneer cubes cooked in buttery tomato gravy.',
    'ingredients': ['Paneer','Tomato','Butter','Fresh Cream','Garam Masala'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Kadai Paneer',
    'price': 240,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153017/kadai_paneer_ezkfk3.jpg',
    'description': 'Spicy paneer dish cooked with capsicum, onion and aromatic kadai masala.',
    'ingredients': ['Paneer','Capsicum','Onion','Tomato','Kadai Masala'],
    'combo': ['Butter Naan','Tandoori Roti']
  },

  {
    'name': 'Palak Paneer',
    'price': 230,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153299/palak_paneer_m2ktmm.jpg',
    'description': 'Paneer cubes cooked in creamy spinach gravy.',
    'ingredients': ['Paneer','Spinach','Garlic','Cream','Spices'],
    'combo': ['Jeera Rice','Butter Naan']
  },

  {
    'name': 'Shahi Paneer',
    'price': 260,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153350/shahi_paneer_juntpp.jpg',
    'description': 'Royal paneer curry cooked with cream, cashews and mild spices.',
    'ingredients': ['Paneer','Cashew Paste','Cream','Tomato','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Paneer Tikka Masala',
    'price': 260,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153318/paneer_tikka_masala_xyrwtk.jpg',
    'description': 'Grilled paneer tikka cooked in rich tomato masala gravy.',
    'ingredients': ['Paneer','Tomato','Cream','Tandoori Masala','Capsicum'],
    'combo': ['Butter Naan','Laccha Paratha']
  },

  {
    'name': 'Paneer Bhurji',
    'price': 220,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153300/paneer_bhurji_zhmxvj.jpg',
    'description': 'Scrambled paneer cooked with onion, tomato and spices.',
    'ingredients': ['Paneer','Onion','Tomato','Green Chilli','Spices'],
    'combo': ['Tandoori Roti','Butter Naan']
  },

  {
    'name': 'Matar Paneer',
    'price': 220,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153033/matar_paneer_qsk6ps.jpg',
    'description': 'Paneer and green peas cooked in spicy tomato gravy.',
    'ingredients': ['Paneer','Green Peas','Tomato','Garam Masala'],
    'combo': ['Jeera Rice','Butter Naan']
  },

  {
    'name': 'Paneer Do Pyaza',
    'price': 240,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153305/paneer_do_pyaza_qdsi5r.jpg',
    'description': 'Paneer curry cooked with lots of onions and spices.',
    'ingredients': ['Paneer','Onion','Tomato','Spices'],
    'combo': ['Butter Naan','Tandoori Roti']
  },

  {
    'name': 'Paneer Lababdar',
    'price': 250,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153310/paneer_lababdar_pcd0wa.jpg',
    'description': 'Rich creamy paneer curry cooked in butter tomato gravy.',
    'ingredients': ['Paneer','Tomato','Butter','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Paneer Pasanda',
    'price': 260,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153317/paneer_pasanda_hkwxdq.jpg',
    'description': 'Stuffed paneer slices cooked in creamy gravy.',
    'ingredients': ['Paneer','Cashews','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Dal Makhani',
    'price': 180,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152985/dal_makhani_kjko0d.jpg',
    'description': 'Slow cooked black lentils with butter and cream.',
    'ingredients': ['Black Lentils','Butter','Cream','Tomato','Spices'],
    'combo': ['Jeera Rice','Butter Naan']
  },

  {
    'name': 'Dal Tadka',
    'price': 150,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152988/dal_tadka_t5ihgx.jpg',
    'description': 'Yellow lentils tempered with garlic, cumin and spices.',
    'ingredients': ['Toor Dal','Garlic','Cumin','Spices'],
    'combo': ['Jeera Rice','Tandoori Roti']
  },

  {
    'name': 'Dal Fry',
    'price': 140,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152984/dal_fry_sdb3ky.jpg',
    'description': 'Lentil curry cooked with onions, tomato and spices.',
    'ingredients': ['Lentils','Onion','Tomato','Spices'],
    'combo': ['Jeera Rice','Butter Naan']
  },

  {
    'name': 'Chana Masala',
    'price': 160,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152953/chana_masala_lshdzq.jpg',
    'description': 'Spicy chickpea curry cooked with onion and tomato gravy.',
    'ingredients': ['Chickpeas','Tomato','Onion','Spices'],
    'combo': ['Bhatura','Jeera Rice']
  },

  {
    'name': 'Chole Bhature',
    'price': 120,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152981/chole_bhature_dyqhhp.jpg',
    'description': 'Popular Punjabi dish of spicy chickpea curry served with fried bread.',
    'ingredients': ['Chickpeas','Bhatura','Spices'],
    'combo': ['Onion Salad','Lassi']
  },

  {
    'name': 'Rajma Masala',
    'price': 160,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153347/rajma_masala_qoudgw.jpg',
    'description': 'Kidney beans cooked in thick tomato gravy.',
    'ingredients': ['Kidney Beans','Tomato','Onion','Spices'],
    'combo': ['Jeera Rice','Butter Naan']
  },

  {
    'name': 'Aloo Gobi',
    'price': 140,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152932/aloo_gobi_yzgmkm.jpg',
    'description': 'Dry curry made with potatoes and cauliflower.',
    'ingredients': ['Potato','Cauliflower','Spices'],
    'combo': ['Tandoori Roti','Dal Fry']
  },

  {
    'name': 'Aloo Matar',
    'price': 130,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152935/aloo_matar_a0t8c0.jpg',
    'description': 'Potatoes and peas cooked in tomato gravy.',
    'ingredients': ['Potato','Green Peas','Tomato','Spices'],
    'combo': ['Jeera Rice','Tandoori Roti']
  },

  {
    'name': 'Aloo Jeera',
    'price': 120,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152932/aloo_gobi_yzgmkm.jpg',
    'description': 'Simple potato dish cooked with cumin seeds and spices.',
    'ingredients': ['Potato','Cumin','Spices'],
    'combo': ['Tandoori Roti','Dal Fry']
  },

  {
    'name': 'Baingan Bharta',
    'price': 160,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152941/baingan_bharta_ovboea.jpg',
    'description': 'Smoky mashed eggplant cooked with onions and spices.',
    'ingredients': ['Eggplant','Onion','Tomato','Spices'],
    'combo': ['Tandoori Roti','Butter Naan']
  },

  {
    'name': 'Bhindi Masala',
    'price': 140,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152945/bhindi_masala_sz7ypb.jpg',
    'description': 'Stir fried okra cooked with onion and spices.',
    'ingredients': ['Okra','Onion','Spices'],
    'combo': ['Tandoori Roti','Dal Fry']
  },

  {
    'name': 'Mix Veg',
    'price': 150,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153274/mix_veg_iij5at.jpg',
    'description': 'Mixed vegetables cooked in spicy gravy.',
    'ingredients': ['Carrot','Beans','Peas','Potato','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Veg Kolhapuri',
    'price': 170,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153378/veg_kolhapuri_uxsoaa.jpg',
    'description': 'Spicy vegetable curry cooked with Kolhapuri masala.',
    'ingredients': ['Mixed Vegetables','Kolhapuri Masala','Tomato','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Mushroom Masala',
    'price': 180,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153274/mushroom_masala_mcwntt.jpg',
    'description': 'Mushrooms cooked in rich tomato onion gravy.',
    'ingredients': ['Mushroom','Onion','Tomato','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Kadai Mushroom',
    'price': 180,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153016/kadai_mushroom_rtjnik.jpg',
    'description': 'Mushrooms cooked with capsicum in spicy kadai masala.',
    'ingredients': ['Mushroom','Capsicum','Onion','Kadai Masala'],
    'combo': ['Tandoori Roti','Butter Naan']
  },

  {
    'name': 'Malai Kofta',
    'price': 200,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153030/malai_kofta_io4lvc.jpg',
    'description': 'Soft paneer potato dumplings cooked in creamy gravy.',
    'ingredients': ['Paneer','Potato','Cream','Cashews','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Veg Kofta',
    'price': 180,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153375/veg_kofta_sjjrnv.jpg',
    'description': 'Vegetable dumplings cooked in flavorful curry.',
    'ingredients': ['Mixed Vegetables','Gram Flour','Spices'],
    'combo': ['Tandoori Roti','Jeera Rice']
  },

  {
    'name': 'Navratan Korma',
    'price': 190,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153288/navratan_korma_e0abum.jpg',
    'description': 'Rich creamy curry made with nine vegetables and dry fruits.',
    'ingredients': ['Mixed Vegetables','Cashews','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Methi Malai Matar',
    'price': 180,
    'category': 'Veg Main Course',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153038/methi_malai_matar_bczxl8.jpg',
    'description': 'Creamy curry made with fenugreek leaves and green peas.',
    'ingredients': ['Fenugreek Leaves','Green Peas','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  // Non-Veg Main Course
  {
    'name': 'Chicken Tikka',
    'price': 280,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152978/chicken_tikka_dlie25.jpg',
    'description': 'Boneless chicken pieces marinated with spices and grilled in a tandoor.',
    'ingredients': ['Chicken','Yogurt','Tandoori Masala','Ginger Garlic','Spices'],
    'combo': ['Mint Chutney','Butter Naan']
  },

  {
    'name': 'Tandoori Chicken (Half)',
    'price': 300,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153359/tandoori_chicken_half_gvjonz.jpg',
    'description': 'Half portion of chicken marinated in yogurt and spices then roasted in a tandoor.',
    'ingredients': ['Chicken','Yogurt','Red Chilli','Ginger Garlic','Spices'],
    'combo': ['Mint Chutney','Onion Salad']
  },

  {
    'name': 'Tandoori Chicken (Full)',
    'price': 550,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153355/tandoori_chicken_full_joasvp.jpg',
    'description': 'Whole chicken marinated with tandoori spices and grilled to perfection.',
    'ingredients': ['Chicken','Yogurt','Tandoori Masala','Garlic','Spices'],
    'combo': ['Mint Chutney','Butter Naan']
  },

  {
    'name': 'Malai Tikka',
    'price': 300,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153031/malai_tikka_cpotjh.jpg',
    'description': 'Creamy chicken tikka made with fresh cream and mild spices.',
    'ingredients': ['Chicken','Cream','Yogurt','Garlic','Spices'],
    'combo': ['Butter Naan','Mint Chutney']
  },

  {
    'name': 'Seekh Kabab',
    'price': 280,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153348/seekh_kabab_rckobi.jpg',
    'description': 'Minced meat kababs cooked in a tandoor with aromatic spices.',
    'ingredients': ['Minced Meat','Onion','Garlic','Spices'],
    'combo': ['Mint Chutney','Onion Salad']
  },

  {
    'name': 'Tandoori Fish',
    'price': 320,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153360/tandoori_fish_stx4e1.jpg',
    'description': 'Fish marinated with spices and grilled in a tandoor.',
    'ingredients': ['Fish','Yogurt','Tandoori Masala','Lemon','Spices'],
    'combo': ['Mint Chutney','Butter Naan']
  },

  {
    'name': 'Fish Tikka',
    'price': 340,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152998/fish_tikka_qxhfqw.jpg',
    'description': 'Boneless fish cubes marinated in spices and grilled.',
    'ingredients': ['Fish','Yogurt','Spices','Garlic'],
    'combo': ['Mint Chutney','Jeera Rice']
  },

  {
    'name': 'Afgani Chicken',
    'price': 320,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152929/afghani_chicken_yd9v1i.jpg',
    'description': 'Creamy chicken dish cooked with cashews and mild spices.',
    'ingredients': ['Chicken','Cream','Cashews','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Tangdi Chicken',
    'price': 300,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153371/tangdi_kabab_efpo0q.jpg',
    'description': 'Chicken drumsticks marinated in spices and grilled.',
    'ingredients': ['Chicken Drumsticks','Yogurt','Tandoori Masala','Spices'],
    'combo': ['Mint Chutney','Onion Salad']
  },

  {
    'name': 'Mutton Seekh Kabab',
    'price': 350,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153287/mutton_seekh_kabab_iohuvf.jpg',
    'description': 'Juicy minced mutton kababs grilled in a tandoor.',
    'ingredients': ['Mutton','Onion','Garlic','Spices'],
    'combo': ['Mint Chutney','Laccha Paratha']
  },

  {
    'name': 'Butter Chicken',
    'price': 280,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152946/butter_chicken_wxxbqo.jpg',
    'description': 'Classic Punjabi chicken curry cooked in rich buttery tomato gravy.',
    'ingredients': ['Chicken','Butter','Tomato','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Chicken Tikka Masala',
    'price': 290,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152976/chicken_tikka_masala_ednvro.jpg',
    'description': 'Grilled chicken pieces cooked in spicy tomato gravy.',
    'ingredients': ['Chicken','Tomato','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Kadai Chicken',
    'price': 280,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153014/kadai_chicken_uxs6dp.jpg',
    'description': 'Chicken cooked with capsicum and kadai spices.',
    'ingredients': ['Chicken','Capsicum','Onion','Kadai Masala'],
    'combo': ['Tandoori Roti','Jeera Rice']
  },

  {
    'name': 'Chicken Curry',
    'price': 260,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152963/chicken_curry_f9u98u.jpg',
    'description': 'Traditional Indian chicken curry cooked with spices.',
    'ingredients': ['Chicken','Onion','Tomato','Spices'],
    'combo': ['Steamed Rice','Butter Naan']
  },

  {
    'name': 'Chicken Korma',
    'price': 280,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152970/chicken_korma_bfqxgq.jpg',
    'description': 'Rich creamy chicken curry made with cashew gravy.',
    'ingredients': ['Chicken','Cashews','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Chicken Do Pyaza',
    'price': 270,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152963/chicken_do_pyaza_vsyti9.jpg',
    'description': 'Chicken cooked with double quantity of onions and spices.',
    'ingredients': ['Chicken','Onion','Tomato','Spices'],
    'combo': ['Tandoori Roti','Jeera Rice']
  },

  {
    'name': 'Chicken Vindaloo',
    'price': 280,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152980/chicken_vindaloo_wq18cx.jpg',
    'description': 'Spicy chicken curry with tangy vinegar flavour.',
    'ingredients': ['Chicken','Vinegar','Garlic','Spices'],
    'combo': ['Steamed Rice','Butter Naan']
  },

  {
    'name': 'Chicken Kolhapuri',
    'price': 290,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152968/chicken_kolhapuri_eyrppt.jpg',
    'description': 'Hot and spicy chicken curry made with Kolhapuri masala.',
    'ingredients': ['Chicken','Kolhapuri Masala','Onion','Tomato'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Chicken Lababdar',
    'price': 290,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152973/chicken_lababdar_ux6zys.jpg',
    'description': 'Rich creamy chicken curry with buttery tomato gravy.',
    'ingredients': ['Chicken','Butter','Cream','Tomato','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Chicken Handi',
    'price': 300,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152965/chicken_handi_nyoabv.jpg',
    'description': 'Traditional chicken curry cooked in a clay pot with spices.',
    'ingredients': ['Chicken','Onion','Tomato','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Chicken Rogan Josh',
    'price': 300,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152973/chicken_rogan_josh_katsgi.jpg',
    'description': 'Aromatic chicken curry with rich Kashmiri spices.',
    'ingredients': ['Chicken','Kashmiri Chilli','Garlic','Spices'],
    'combo': ['Steamed Rice','Butter Naan']
  },

  {
    'name': 'Mutton Korma',
    'price': 380,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153278/mutton_korma_pqae8a.jpg',
    'description': 'Slow cooked mutton curry with creamy cashew gravy.',
    'ingredients': ['Mutton','Cashews','Cream','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Keema Matar',
    'price': 340,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153023/keema_matar_afk5bj.jpg',
    'description': 'Minced meat cooked with green peas and spices.',
    'ingredients': ['Minced Meat','Green Peas','Onion','Spices'],
    'combo': ['Butter Naan','Jeera Rice']
  },

  {
    'name': 'Fish Curry',
    'price': 300,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152994/fish_curry_gwwp2i.jpg',
    'description': 'Fish cooked in spicy onion tomato gravy.',
    'ingredients': ['Fish','Onion','Tomato','Spices'],
    'combo': ['Steamed Rice','Jeera Rice']
  },

  {
    'name': 'Prawn Curry',
    'price': 350,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153336/prawn_curry_kcfmwh.jpg',
    'description': 'Juicy prawns cooked in rich curry sauce.',
    'ingredients': ['Prawns','Onion','Tomato','Spices'],
    'combo': ['Steamed Rice','Butter Naan']
  },

  {
    'name': 'Chicken Biryani',
    'price': 220,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152960/chicken_biryani_zkt03q.jpg',
    'description': 'Aromatic basmati rice cooked with chicken and spices.',
    'ingredients': ['Chicken','Basmati Rice','Whole Spices','Yogurt'],
    'combo': ['Raita','Onion Salad']
  },

  {
    'name': 'Mutton Biryani',
    'price': 300,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153275/mutton_biryani_f89jwp.jpg',
    'description': 'Flavorful biryani cooked with tender mutton and spices.',
    'ingredients': ['Mutton','Basmati Rice','Spices','Yogurt'],
    'combo': ['Raita','Salad']
  },

  {
    'name': 'Egg Biryani',
    'price': 160,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152992/egg_biryani_bisgld.jpg',
    'description': 'Spiced basmati rice cooked with boiled eggs.',
    'ingredients': ['Egg','Basmati Rice','Spices'],
    'combo': ['Raita','Salad']
  },

  {
    'name': 'Hyderabadi Biryani',
    'price': 240,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153008/hyderabadi_biryani_awahty.jpg',
    'description': 'Famous dum cooked biryani with rich spices.',
    'ingredients': ['Chicken','Basmati Rice','Saffron','Spices'],
    'combo': ['Raita','Salad']
  },

  {
    'name': 'Dum Biryani',
    'price': 250,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152989/dum_biryani_oomtyh.jpg',
    'description': 'Traditional dum cooked biryani with aromatic spices.',
    'ingredients': ['Chicken','Basmati Rice','Whole Spices'],
    'combo': ['Raita','Salad']
  },
  {
    'name': 'Fish Masala',
    'price': 320,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152995/fish_masala_l9xjui.jpg',
    'description': 'Fish pieces cooked in thick spicy onion tomato masala gravy.',
    'ingredients': [
      'Fish',
      'Onion',
      'Tomato',
      'Garlic',
      'Garam Masala',
      'Spices'
    ],
    'combo': [
      'Jeera Rice',
      'Butter Naan'
    ]
  },
  {
    'name': 'Keema Naan',
    'price': 180,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153025/keema_naan_bi30em.jpg',
    'description': 'Soft tandoor baked naan stuffed with spiced minced meat filling.',
    'ingredients': [
      'Refined Flour',
      'Minced Meat',
      'Onion',
      'Garlic',
      'Green Chilli',
      'Spices'
    ],
    'combo': [
      'Chicken Curry',
      'Butter Chicken'
    ]
  },

  {
    'name': 'Prawn Masala',
    'price': 360,
    'category': 'Non-Veg Main Course',
    'veg': false,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153340/prawn_masala_jmgyjw.jpg',
    'description': 'Juicy prawns cooked in rich masala gravy with aromatic spices.',
    'ingredients': [
      'Prawns',
      'Onion',
      'Tomato',
      'Garlic',
      'Garam Masala',
      'Spices'
    ],
    'combo': [
      'Steamed Rice',
      'Butter Naan'
    ]
  },

  // Breads
  {
    'name': 'Butter Naan',
    'price': 50,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152949/butter_naan_zalynx.jpg',
    'description': 'Soft naan bread baked in a tandoor and topped with butter.',
    'ingredients': ['Refined Flour','Butter','Yogurt','Salt'],
    'combo': ['Paneer Butter Masala','Dal Makhani']
  },

  {
    'name': 'Plain Naan',
    'price': 40,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153329/plain_naan_kmmvkd.jpg',
    'description': 'Traditional soft naan baked in a clay tandoor.',
    'ingredients': ['Refined Flour','Yogurt','Salt'],
    'combo': ['Kadai Paneer','Butter Chicken']
  },

  {
    'name': 'Garlic Naan',
    'price': 60,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152999/garlic_naan_c3acfa.jpg',
    'description': 'Tandoori naan topped with garlic and butter.',
    'ingredients': ['Refined Flour','Garlic','Butter','Yogurt'],
    'combo': ['Paneer Tikka Masala','Chicken Curry']
  },

  {
    'name': 'Cheese Naan',
    'price': 90,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152954/cheese_naan_ptqfwo.jpg',
    'description': 'Stuffed naan filled with melted cheese.',
    'ingredients': ['Refined Flour','Cheese','Butter'],
    'combo': ['Kadai Paneer','Chicken Tikka Masala']
  },

  {
    'name': 'Paneer Naan',
    'price': 100,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153311/paneer_naan_a3xxb8.jpg',
    'description': 'Soft naan stuffed with spiced paneer filling.',
    'ingredients': ['Refined Flour','Paneer','Spices'],
    'combo': ['Dal Makhani','Palak Paneer']
  },

  {
    'name': 'Kashmiri Naan',
    'price': 120,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153020/kashmiri_naan_slednk.jpg',
    'description': 'Sweet naan stuffed with dry fruits and nuts.',
    'ingredients': ['Refined Flour','Cashews','Raisins','Sugar'],
    'combo': ['Shahi Paneer','Navratan Korma']
  },

  {
    'name': 'Butter Roti',
    'price': 30,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152950/butter_roti_r2qpwg.jpg',
    'description': 'Whole wheat roti brushed with butter.',
    'ingredients': ['Wheat Flour','Butter','Salt'],
    'combo': ['Dal Tadka','Mix Veg']
  },

  {
    'name': 'Plain Roti',
    'price': 20,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153334/plain_roti_r34kfw.jpg',
    'description': 'Simple whole wheat flatbread cooked on tawa.',
    'ingredients': ['Wheat Flour','Water','Salt'],
    'combo': ['Rajma Masala','Chana Masala']
  },

  {
    'name': 'Tandoori Roti',
    'price': 35,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153367/tandoori_roti_xdkepk.jpg',
    'description': 'Whole wheat bread cooked inside a clay tandoor.',
    'ingredients': ['Wheat Flour','Salt','Water'],
    'combo': ['Butter Chicken','Dal Makhani']
  },

  {
    'name': 'Missi Roti',
    'price': 40,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153042/missi_roti_i7wisz.jpg',
    'description': 'Traditional Punjabi roti made with gram flour and spices.',
    'ingredients': ['Gram Flour','Wheat Flour','Spices'],
    'combo': ['Baingan Bharta','Chana Masala']
  },

  {
    'name': 'Laccha Paratha',
    'price': 60,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153027/laccha_paratha_n7zs94.jpg',
    'description': 'Layered crispy paratha cooked with ghee.',
    'ingredients': ['Wheat Flour','Ghee','Salt'],
    'combo': ['Kadai Paneer','Chicken Curry']
  },

  {
    'name': 'Aloo Paratha',
    'price': 80,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152939/aloo_paratha_l6o3pn.jpg',
    'description': 'Stuffed paratha filled with spiced mashed potatoes.',
    'ingredients': ['Wheat Flour','Potato','Spices'],
    'combo': ['Curd','Pickle']
  },

  {
    'name': 'Gobi Paratha',
    'price': 80,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153003/gobi_paratha_ukb8xf.jpg',
    'description': 'Paratha stuffed with grated cauliflower and spices.',
    'ingredients': ['Wheat Flour','Cauliflower','Spices'],
    'combo': ['Curd','Pickle']
  },

  {
    'name': 'Paneer Paratha',
    'price': 90,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153313/paneer_paratha_idsjjd.jpg',
    'description': 'Stuffed paratha filled with spiced paneer mixture.',
    'ingredients': ['Wheat Flour','Paneer','Spices'],
    'combo': ['Curd','Butter']
  },

  {
    'name': 'Mix Paratha',
    'price': 90,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153043/mix_paratha_bib4cr.jpg',
    'description': 'Stuffed paratha filled with mixed vegetables.',
    'ingredients': ['Wheat Flour','Mixed Vegetables','Spices'],
    'combo': ['Curd','Pickle']
  },

  {
    'name': 'Pudina Paratha',
    'price': 70,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153341/pudina_paratha_rwv230.jpg',
    'description': 'Flavored paratha with fresh mint leaves.',
    'ingredients': ['Wheat Flour','Mint Leaves','Spices'],
    'combo': ['Chicken Curry','Dal Makhani']
  },

  {
    'name': 'Onion Kulcha',
    'price': 80,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153293/onion_kulcha_alkrcg.jpg',
    'description': 'Stuffed paratha filled with spicy onion mixture.',
    'ingredients': ['Wheat Flour','Onion','Spices'],
    'combo': ['Curd','Pickle']
  },

  {
    'name': 'Paneer Kulcha',
    'price': 100,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153307/paneer_kulcha_zj5ykd.jpg',
    'description': 'Soft kulcha stuffed with paneer filling and baked in tandoor.',
    'ingredients': ['Refined Flour','Paneer','Spices'],
    'combo': ['Chole','Butter']
  },

  {
    'name': 'Bhatura',
    'price': 60,
    'category': 'Bread',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152941/bhatura_ziilds.jpg',
    'description': 'Deep fried fluffy bread served hot.',
    'ingredients': ['Refined Flour','Yogurt','Salt'],
    'combo': ['Chole','Onion Salad']
  },

  // Rice & Biryani
  {
    'name': 'Veg Biryani',
    'price': 180,
    'category': 'Rice & Biryani',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153374/veg_biryani_ekdu2s.jpg',
    'description': 'Aromatic basmati rice cooked with mixed vegetables and traditional biryani spices.',
    'ingredients': [
      'Basmati Rice',
      'Mixed Vegetables',
      'Biryani Masala',
      'Yogurt',
      'Whole Spices'
    ],
    'combo': [
      'Raita',
      'Onion Salad'
    ]
  },

  {
    'name': 'Paneer Biryani',
    'price': 220,
    'category': 'Rice & Biryani',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153304/paneer_biryani_dze5sp.jpg',
    'description': 'Flavorful biryani made with paneer cubes and aromatic spices.',
    'ingredients': [
      'Basmati Rice',
      'Paneer',
      'Yogurt',
      'Biryani Masala',
      'Spices'
    ],
    'combo': [
      'Boondi Raita',
      'Salad'
    ]
  },

  {
    'name': 'Jeera Rice',
    'price': 120,
    'category': 'Rice & Biryani',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153009/jeera_rice_insbpu.jpg',
    'description': 'Simple basmati rice flavored with cumin seeds and ghee.',
    'ingredients': [
      'Basmati Rice',
      'Cumin Seeds',
      'Ghee',
      'Salt'
    ],
    'combo': [
      'Dal Tadka',
      'Paneer Butter Masala'
    ]
  },

  {
    'name': 'Plain Rice',
    'price': 90,
    'category': 'Rice & Biryani',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153334/plain_rice_p4dxsr.jpg',
    'description': 'Steamed basmati rice served hot.',
    'ingredients': [
      'Basmati Rice',
      'Water',
      'Salt'
    ],
    'combo': [
      'Dal Fry',
      'Rajma Masala'
    ]
  },

  {
    'name': 'Veg Pulao',
    'price': 160,
    'category': 'Rice & Biryani',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153381/veg_pulao_c0k6hq.jpg',
    'description': 'Fragrant rice cooked with mixed vegetables and mild spices.',
    'ingredients': [
      'Basmati Rice',
      'Carrot',
      'Peas',
      'Beans',
      'Whole Spices'
    ],
    'combo': [
      'Raita',
      'Papad'
    ]
  },

  {
    'name': 'Kashmiri Pulao',
    'price': 200,
    'category': 'Rice & Biryani',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153021/kashmiri_pulao_uvmbjv.jpg',
    'description': 'Sweet and flavorful pulao cooked with dry fruits and nuts.',
    'ingredients': [
      'Basmati Rice',
      'Cashews',
      'Raisins',
      'Saffron',
      'Dry Fruits'
    ],
    'combo': [
      'Raita',
      'Paneer Butter Masala'
    ]
  },

  {
    'name': 'Peas Pulao',
    'price': 150,
    'category': 'Rice & Biryani',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153325/peas_pulao_kb5yo0.jpg',
    'description': 'Simple and tasty rice dish cooked with green peas and mild spices.',
    'ingredients': [
      'Basmati Rice',
      'Green Peas',
      'Cumin Seeds',
      'Ghee'
    ],
    'combo': [
      'Dal Makhani',
      'Paneer Curry'
    ]
  },

  // Raita & Salad
  {
    'name': 'Plain Raita',
    'price': 60,
    'category': 'Raita & Salad',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153331/plain_raita_yryaxa.jpg',
    'description': 'Refreshing yogurt dish lightly seasoned with salt and roasted cumin powder.',
    'ingredients': [
      'Curd',
      'Salt',
      'Roasted Cumin Powder'
    ],
    'combo': [
      'Veg Biryani',
      'Paneer Biryani'
    ]
  },

  {
    'name': 'Boondi Raita',
    'price': 70,
    'category': 'Raita & Salad',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152946/boondi_raita_gkvp65.jpg',
    'description': 'Creamy yogurt mixed with crispy boondi and mild spices.',
    'ingredients': [
      'Curd',
      'Boondi',
      'Roasted Cumin Powder',
      'Salt'
    ],
    'combo': [
      'Veg Biryani',
      'Chicken Biryani'
    ]
  },

  {
    'name': 'Mix Veg Raita',
    'price': 80,
    'category': 'Raita & Salad',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153274/mix_veg_raita_bede6v.jpg',
    'description': 'Curd mixed with finely chopped vegetables and mild spices.',
    'ingredients': [
      'Curd',
      'Cucumber',
      'Carrot',
      'Onion',
      'Spices'
    ],
    'combo': [
      'Veg Pulao',
      'Jeera Rice'
    ]
  },

  {
    'name': 'Pineapple Raita',
    'price': 90,
    'category': 'Raita & Salad',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153332/pineapple_raita_e2jp7b.jpg',
    'description': 'Sweet and tangy yogurt dish made with pineapple pieces.',
    'ingredients': [
      'Curd',
      'Pineapple',
      'Sugar',
      'Salt'
    ],
    'combo': [
      'Kashmiri Pulao',
      'Veg Biryani'
    ]
  },

  {
    'name': 'Green Salad',
    'price': 60,
    'category': 'Raita & Salad',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153004/green_salad_aeinm4.jpg',
    'description': 'Fresh healthy salad made with cucumber, tomato and carrot slices.',
    'ingredients': [
      'Cucumber',
      'Tomato',
      'Carrot',
      'Lemon'
    ],
    'combo': [
      'Paneer Butter Masala',
      'Dal Makhani'
    ]
  },

  {
    'name': 'Kachumber Salad',
    'price': 70,
    'category': 'Raita & Salad',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153010/kachumber_salad_cplc6h.jpg',
    'description': 'Traditional Indian salad made with chopped onions, tomatoes and cucumber.',
    'ingredients': [
      'Onion',
      'Tomato',
      'Cucumber',
      'Lemon',
      'Salt'
    ],
    'combo': [
      'Chicken Curry',
      'Mutton Curry'
    ]
  },

  {
    'name': 'Onion Salad',
    'price': 50,
    'category': 'Raita & Salad',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773153294/onion_salad_dp9s32.jpg',
    'description': 'Simple sliced onion salad served with lemon and spices.',
    'ingredients': [
      'Onion',
      'Lemon',
      'Salt'
    ],
    'combo': [
      'Tandoori Chicken',
      'Chicken Tikka'
    ]
  },

  //Desert

  // Indian Traditional Sweets
  {
    'name': 'Gulab Jamun (2 pcs)',
    'price': 80,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152656/gulab_jamun_slse5e.jpg',
    'description': 'Soft deep-fried milk dumplings soaked in sweet sugar syrup.',
    'ingredients': ['Milk Powder','Flour','Sugar Syrup','Cardamom'],
    'combo': ['Vanilla Ice Cream','Rabri']
  },

  {
    'name': 'Rasamalai (2 pcs)',
    'price': 120,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152712/rasamalai_aojkrl.jpg',
    'description': 'Soft paneer discs soaked in creamy saffron flavored milk.',
    'ingredients': ['Paneer','Milk','Sugar','Saffron','Pistachio'],
    'combo': ['Rabri']
  },

  {
    'name': 'Rasgulla (2 pcs)',
    'price': 90,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152713/rasgulla_nxugwk.jpg',
    'description': 'Spongy cottage cheese balls soaked in light sugar syrup.',
    'ingredients': ['Paneer','Sugar Syrup','Cardamom'],
    'combo': ['Rabri']
  },

  {
    'name': 'Kala Jamun',
    'price': 90,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152665/kala_jamun_xfmest.jpg',
    'description': 'Dark fried jamun balls soaked in sugar syrup.',
    'ingredients': ['Milk Solids','Sugar Syrup','Cardamom'],
    'combo': ['Vanilla Ice Cream']
  },

  {
    'name': 'Jalebi',
    'price': 70,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152661/jalebi_j0ohei.jpg',
    'description': 'Crispy spiral shaped sweet soaked in sugar syrup.',
    'ingredients': ['Flour','Sugar Syrup','Saffron'],
    'combo': ['Rabri','Masala Milk']
  },

  {
    'name': 'Imarti',
    'price': 80,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152660/imarti_r4nxog.jpg',
    'description': 'Traditional sweet made from urad dal batter soaked in syrup.',
    'ingredients': ['Urad Dal','Sugar Syrup','Cardamom'],
    'combo': ['Rabri']
  },

  {
    'name': 'Rabri',
    'price': 120,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152710/rabri_a4jqgd.jpg',
    'description': 'Thick condensed sweet milk flavored with saffron and nuts.',
    'ingredients': ['Milk','Sugar','Dry Fruits','Cardamom'],
    'combo': ['Jalebi','Malpua']
  },

  {
    'name': 'Shrikhand',
    'price': 110,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152721/shrikhand_ifieaw.jpg',
    'description': 'Sweet yogurt desert flavored with saffron and cardamom.',
    'ingredients': ['Curd','Sugar','Cardamom','Dry Fruits'],
    'combo': ['Puri']
  },

  {
    'name': 'Mango Shrikhand',
    'price': 120,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152686/mango_shrikhand_ndwr4l.jpg',
    'description': 'Shrikhand flavored with fresh mango pulp.',
    'ingredients': ['Curd','Mango','Sugar','Cardamom'],
    'combo': ['Puri']
  },

  {
    'name': 'Basundi',
    'price': 130,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152599/basundi_w7dy4f.jpg',
    'description': 'Rich sweetened thick milk desert with dry fruits.',
    'ingredients': ['Milk','Sugar','Cardamom','Dry Fruits'],
    'combo': ['Puri','Jalebi']
  },

  {
    'name': 'Kheer',
    'price': 100,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152672/kheer_rxmaip.jpg',
    'description': 'Traditional rice pudding cooked with milk and sugar.',
    'ingredients': ['Rice','Milk','Sugar','Cardamom'],
    'combo': ['Puri']
  },

  {
    'name': 'Phirni',
    'price': 110,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152701/phirni_s36iog.jpg',
    'description': 'Creamy ground rice pudding served chilled.',
    'ingredients': ['Rice','Milk','Sugar','Saffron'],
    'combo': ['Gulab Jamun']
  },

  {
    'name': 'Seviyan',
    'price': 100,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152720/seviyan_nblksc.jpg',
    'description': 'Sweet vermicelli pudding cooked with milk.',
    'ingredients': ['Vermicelli','Milk','Sugar','Dry Fruits'],
    'combo': ['Puri']
  },

  {
    'name': 'Malpua',
    'price': 120,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152678/malpua_kgc0xx.jpg',
    'description': 'Sweet pancake soaked in sugar syrup.',
    'ingredients': ['Flour','Milk','Sugar Syrup','Cardamom'],
    'combo': ['Rabri']
  },

  {
    'name': 'Ghevar',
    'price': 140,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152652/ghevar_xupgfo.jpg',
    'description': 'Traditional Rajasthani honeycomb sweet soaked in sugar syrup.',
    'ingredients': ['Flour','Sugar Syrup','Ghee'],
    'combo': ['Rabri']
  },

  {
    'name': 'Sohan Papdi',
    'price': 80,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152725/sohan_papdi_mf3c1q.jpg',
    'description': 'Flaky sweet made with gram flour and sugar.',
    'ingredients': ['Gram Flour','Sugar','Ghee','Cardamom'],
    'combo': ['Tea']
  },

  {
    'name': 'Kaju Katli',
    'price': 180,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152664/kaju_katli_wl6v8n.jpg',
    'description': 'Premium cashew fudge sweet.',
    'ingredients': ['Cashews','Sugar','Cardamom'],
    'combo': ['Rabri']
  },

  {
    'name': 'Besan Ladoo',
    'price': 90,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152604/besan_ladoo_qvhwd4.jpg',
    'description': 'Sweet balls made from roasted gram flour and ghee.',
    'ingredients': ['Gram Flour','Ghee','Sugar'],
    'combo': ['Milk']
  },

  {
    'name': 'Motichoor Ladoo',
    'price': 90,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152692/motichoor_ladoo_flvpbq.jpg',
    'description': 'Soft ladoos made with tiny boondi pearls.',
    'ingredients': ['Gram Flour','Sugar Syrup','Ghee'],
    'combo': ['Rabri']
  },

  {
    'name': 'Boondi Ladoo',
    'price': 80,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152609/boondi_ladoo_yu0cmh.jpg',
    'description': 'Traditional sweet balls made with boondi.',
    'ingredients': ['Gram Flour','Sugar Syrup','Ghee'],
    'combo': ['Milk']
  },

  {
    'name': 'Rava Ladoo',
    'price': 80,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152716/rava_ladoo_w3uo4c.jpg',
    'description': 'Sweet semolina balls flavored with cardamom.',
    'ingredients': ['Semolina','Sugar','Ghee','Cardamom'],
    'combo': ['Milk']
  },

  {
    'name': 'Coconut Ladoo',
    'price': 90,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152640/coconut_ladoo_wdrvp7.jpg',
    'description': 'Sweet balls made with coconut and condensed milk.',
    'ingredients': ['Coconut','Sugar','Milk'],
    'combo': ['Milk']
  },

  {
    'name': 'Mohanthal',
    'price': 120,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152689/mohanthal_vzvavw.jpg',
    'description': 'Traditional Gujarati sweet made with gram flour and ghee.',
    'ingredients': ['Gram Flour','Ghee','Sugar','Cardamom'],
    'combo': ['Tea']
  },

  {
    'name': 'Mysore Pak',
    'price': 120,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152693/mysore_pak_umlwhx.jpg',
    'description': 'Soft sweet made from gram flour, sugar and ghee.',
    'ingredients': ['Gram Flour','Ghee','Sugar'],
    'combo': ['Milk']
  },

  {
    'name': 'Peda',
    'price': 90,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152699/peda_sr4spk.jpg',
    'description': 'Traditional milk sweet flavored with cardamom.',
    'ingredients': ['Milk Solids','Sugar','Cardamom'],
    'combo': ['Tea']
  },

  {
    'name': 'Barfi (Milk)',
    'price': 110,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152598/barfi_milk_t2mkfb.jpg',
    'description': 'Classic milk fudge sweet.',
    'ingredients': ['Milk','Sugar','Ghee'],
    'combo': ['Tea']
  },

  {
    'name': 'Kesar Pista Barfi',
    'price': 140,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152668/kesar_pista_barfi_f3d7y8.jpg',
    'description': 'Rich barfi flavored with saffron and pistachios.',
    'ingredients': ['Milk','Sugar','Saffron','Pistachio'],
    'combo': ['Rabri']
  },

  {
    'name': 'Chocolate Barfi',
    'price': 130,
    'category': 'Indian Traditional Sweets',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152626/chocolate_barfi_ndvyhc.jpg',
    'description': 'Fusion sweet made with chocolate and milk solids.',
    'ingredients': ['Chocolate','Milk','Sugar'],
    'combo': ['Ice Cream']
  },

  // Halwa Varieties
  {
    'name': 'Gajar Halwa',
    'price': 120,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152651/gajar_halwa_lmf276.jpg',
    'description': 'Traditional Indian sweet made with grated carrots cooked in milk and ghee.',
    'ingredients': [
      'Carrot',
      'Milk',
      'Sugar',
      'Ghee',
      'Dry Fruits'
    ],
    'combo': [
      'Vanilla Ice Cream',
      'Rabri'
    ]
  },

  {
    'name': 'Moong Dal Halwa',
    'price': 140,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152691/moong_dal_halwa_zhuoph.jpg',
    'description': 'Rich halwa made from yellow moong dal cooked with ghee and sugar.',
    'ingredients': [
      'Moong Dal',
      'Ghee',
      'Sugar',
      'Cardamom',
      'Dry Fruits'
    ],
    'combo': [
      'Rabri'
    ]
  },

  {
    'name': 'Suji Halwa',
    'price': 100,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152731/suji_halwa_ccs0tx.jpg',
    'description': 'Classic semolina sweet cooked with ghee, sugar and cardamom.',
    'ingredients': [
      'Semolina',
      'Ghee',
      'Sugar',
      'Cardamom'
    ],
    'combo': [
      'Puri'
    ]
  },

  {
    'name': 'Badam Halwa',
    'price': 160,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152594/badam_halwa_wwyw10.jpg',
    'description': 'Premium desert made with almonds cooked in ghee and milk.',
    'ingredients': [
      'Almonds',
      'Milk',
      'Ghee',
      'Sugar',
      'Cardamom'
    ],
    'combo': [
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Pineapple Halwa',
    'price': 120,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152703/pineapple_halwa_tnmlqv.jpg',
    'description': 'Sweet halwa made with pineapple pulp and semolina.',
    'ingredients': [
      'Pineapple',
      'Semolina',
      'Sugar',
      'Ghee'
    ],
    'combo': [
      'Ice Cream'
    ]
  },

  {
    'name': 'Bottle Gourd Halwa',
    'price': 120,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152610/bottle_gourd_halwa_zksql5.jpg',
    'description': 'Healthy halwa made from grated bottle gourd cooked with milk.',
    'ingredients': [
      'Bottle Gourd',
      'Milk',
      'Sugar',
      'Ghee'
    ],
    'combo': [
      'Rabri'
    ]
  },

  {
    'name': 'Beetroot Halwa',
    'price': 120,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152601/beetroot_halwa_hptpni.jpg',
    'description': 'Nutritious sweet made with beetroot cooked in milk and sugar.',
    'ingredients': [
      'Beetroot',
      'Milk',
      'Sugar',
      'Ghee'
    ],
    'combo': [
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Apple Halwa',
    'price': 130,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152592/apple_halwa_oswxvy.jpg',
    'description': 'Delicious halwa made with grated apples and dry fruits.',
    'ingredients': [
      'Apple',
      'Sugar',
      'Ghee',
      'Dry Fruits'
    ],
    'combo': [
      'Ice Cream'
    ]
  },

  {
    'name': 'Kaju Halwa',
    'price': 180,
    'category': 'Halwa',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152663/kaju_halwa_fonbzv.jpg',
    'description': 'Rich halwa prepared from cashews cooked in ghee and sugar.',
    'ingredients': [
      'Cashews',
      'Sugar',
      'Ghee',
      'Cardamom'
    ],
    'combo': [
      'Rabri'
    ]
  },

  // Ice Cream & Kulfi
  {
    'name': 'Vanilla Ice Cream',
    'price': 80,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152738/vanilla_ice_cream_kitn5s.jpg',
    'description': 'Classic creamy vanilla flavored ice cream.',
    'ingredients': [
      'Milk',
      'Cream',
      'Sugar',
      'Vanilla'
    ],
    'combo': [
      'Brownie',
      'Gulab Jamun'
    ]
  },

  {
    'name': 'Chocolate Ice Cream',
    'price': 90,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152631/chocolate_ice_cream_ncerhs.jpg',
    'description': 'Rich chocolate flavored creamy ice cream.',
    'ingredients': [
      'Milk',
      'Chocolate',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Brownie'
    ]
  },

  {
    'name': 'Strawberry Ice Cream',
    'price': 90,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152726/strawberry_ice_cream_pzbppw.jpg',
    'description': 'Refreshing strawberry flavored ice cream.',
    'ingredients': [
      'Milk',
      'Strawberry',
      'Sugar',
      'Cream'
    ],
    'combo': [
      'Ice Cream Sundae'
    ]
  },

  {
    'name': 'Butterscotch Ice Cream',
    'price': 100,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152617/butterscotch_ice_cream_xdiyxo.jpg',
    'description': 'Creamy butterscotch ice cream with crunchy caramel bits.',
    'ingredients': [
      'Milk',
      'Caramel',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Ice Cream Sundae'
    ]
  },

  {
    'name': 'Mango Ice Cream',
    'price': 90,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152679/mango_ice_cream_pshuyv.jpg',
    'description': 'Sweet and creamy mango flavored ice cream.',
    'ingredients': [
      'Milk',
      'Mango Pulp',
      'Sugar',
      'Cream'
    ],
    'combo': [
      'Mango Kulfi'
    ]
  },

  {
    'name': 'Pista Ice Cream',
    'price': 100,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152707/pista_ice_cream_zkmlwp.jpg',
    'description': 'Rich pistachio flavored ice cream.',
    'ingredients': [
      'Milk',
      'Pistachio',
      'Sugar',
      'Cream'
    ],
    'combo': [
      'Rabri'
    ]
  },

  {
    'name': 'Kesar Pista Ice Cream',
    'price': 110,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152671/kesar_pista_ice_cream_svougb.jpg',
    'description': 'Ice cream flavored with saffron and pistachios.',
    'ingredients': [
      'Milk',
      'Saffron',
      'Pistachio',
      'Sugar'
    ],
    'combo': [
      'Rabri'
    ]
  },

  {
    'name': 'Belgium Chocolate Ice Cream',
    'price': 120,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152601/belgium_chocolate_ice_cream_rurtv0.jpg',
    'description': 'Premium dark Belgian chocolate ice cream.',
    'ingredients': [
      'Belgian Chocolate',
      'Milk',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Brownie'
    ]
  },

  {
    'name': 'Tender Coconut Ice Cream',
    'price': 120,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152734/tender_coconut_ice_cream_qrn8uw.jpg',
    'description': 'Unique ice cream made with tender coconut pulp.',
    'ingredients': [
      'Tender Coconut',
      'Milk',
      'Sugar',
      'Cream'
    ],
    'combo': [
      'Kulfi Faluda'
    ]
  },

  {
    'name': 'Kulfi Faluda',
    'price': 150,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152674/kulfi_faluda_ema29g.jpg',
    'description': 'Traditional kulfi served with falooda vermicelli and rose syrup.',
    'ingredients': [
      'Kulfi',
      'Falooda Sev',
      'Rose Syrup',
      'Milk'
    ],
    'combo': [
      'Malai Kulfi'
    ]
  },

  {
    'name': 'Malai Kulfi',
    'price': 90,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152675/malai_kulfi_bym4yo.jpg',
    'description': 'Classic creamy kulfi made with thickened milk.',
    'ingredients': [
      'Milk',
      'Sugar',
      'Cardamom',
      'Dry Fruits'
    ],
    'combo': [
      'Faluda'
    ]
  },

  {
    'name': 'Mango Kulfi',
    'price': 100,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152681/mango_kulfi_ddfvhq.jpg',
    'description': 'Traditional kulfi flavored with mango pulp.',
    'ingredients': [
      'Milk',
      'Mango',
      'Sugar',
      'Dry Fruits'
    ],
    'combo': [
      'Faluda'
    ]
  },

  {
    'name': 'Pista Kulfi',
    'price': 110,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152708/pista_kulfi_hg6btj.jpg',
    'description': 'Kulfi enriched with pistachio flavor.',
    'ingredients': [
      'Milk',
      'Pistachio',
      'Sugar',
      'Cardamom'
    ],
    'combo': [
      'Faluda'
    ]
  },

  {
    'name': 'Rabri Kulfi',
    'price': 130,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152709/rabri_kulfi_oflsn7.jpg',
    'description': 'Kulfi served with rich rabri topping.',
    'ingredients': [
      'Milk',
      'Rabri',
      'Sugar',
      'Dry Fruits'
    ],
    'combo': [
      'Jalebi'
    ]
  },

  {
    'name': 'Ice Cream Sundae',
    'price': 150,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152658/ice_cream_sundae_wb0fjv.jpg',
    'description': 'Ice cream served with chocolate syrup and toppings.',
    'ingredients': [
      'Ice Cream',
      'Chocolate Syrup',
      'Dry Fruits',
      'Cream'
    ],
    'combo': [
      'Brownie'
    ]
  },

  {
    'name': 'Hot Chocolate Fudge',
    'price': 170,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152657/hot_chocolate_fudge_fnmyyg.jpg',
    'description': 'Vanilla ice cream served with hot chocolate fudge sauce.',
    'ingredients': [
      'Vanilla Ice Cream',
      'Chocolate Sauce',
      'Dry Fruits'
    ],
    'combo': [
      'Brownie'
    ]
  },

  {
    'name': 'Brownie with Ice Cream',
    'price': 160,
    'category': 'Ice Cream & Kulfi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152615/brownie_with_ice_cream_kkeitw.jpg',
    'description': 'Warm chocolate brownie served with vanilla ice cream.',
    'ingredients': [
      'Chocolate',
      'Flour',
      'Sugar',
      'Ice Cream'
    ],
    'combo': [
      'Hot Chocolate Fudge'
    ]
  },

  // Cakes & Pastries
  {
    'name': 'Black Forest Pastry',
    'price': 90,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152605/black_forest_pastry_ehybiv.jpg',
    'description': 'Chocolate sponge pastry layered with whipped cream and cherries.',
    'ingredients': [
      'Chocolate Cake',
      'Whipped Cream',
      'Cherries',
      'Chocolate Shavings'
    ],
    'combo': [
      'Cold Coffee',
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Chocolate Truffle Pastry',
    'price': 100,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152637/chocolate_truffle_pastry_h2q5lo.jpg',
    'description': 'Rich chocolate pastry made with smooth chocolate ganache.',
    'ingredients': [
      'Chocolate Cake',
      'Chocolate Ganache',
      'Cream'
    ],
    'combo': [
      'Hot Chocolate'
    ]
  },

  {
    'name': 'Red Velvet Pastry',
    'price': 110,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152716/red_velvet_pastry_j4736j.jpg',
    'description': 'Classic red velvet pastry layered with cream cheese frosting.',
    'ingredients': [
      'Red Velvet Cake',
      'Cream Cheese',
      'Sugar',
      'Butter'
    ],
    'combo': [
      'Coffee'
    ]
  },

  {
    'name': 'Butterscotch Pastry',
    'price': 90,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152618/butterscotch_pastry_vk7t29.jpg',
    'description': 'Creamy pastry with butterscotch flavor and crunchy praline.',
    'ingredients': [
      'Cake',
      'Butterscotch Cream',
      'Caramel',
      'Sugar'
    ],
    'combo': [
      'Butterscotch Ice Cream'
    ]
  },

  {
    'name': 'Strawberry Pastry',
    'price': 90,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152727/strawberry_pastry_kqhi7f.jpg',
    'description': 'Soft cake pastry topped with fresh strawberry cream.',
    'ingredients': [
      'Cake',
      'Strawberry',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Strawberry Ice Cream'
    ]
  },

  {
    'name': 'Pineapple Pastry',
    'price': 85,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152704/pineapple_pastry_hlqud2.jpg',
    'description': 'Classic pineapple flavored pastry with whipped cream.',
    'ingredients': [
      'Cake',
      'Pineapple',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Pineapple Juice'
    ]
  },

  {
    'name': 'White Forest Pastry',
    'price': 100,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152749/white_forest_pastry_eyt1gt.jpg',
    'description': 'White chocolate pastry with whipped cream and cherries.',
    'ingredients': [
      'Vanilla Cake',
      'White Chocolate',
      'Cream',
      'Cherries'
    ],
    'combo': [
      'Cold Coffee'
    ]
  },

  {
    'name': 'Vanilla Pastry',
    'price': 80,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152739/vanilla_pastry_mdytlk.jpg',
    'description': 'Soft vanilla sponge cake layered with fresh cream.',
    'ingredients': [
      'Vanilla Cake',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Chocolate Sauce'
    ]
  },

  {
    'name': 'Blueberry Pastry',
    'price': 100,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152608/blueberry_pastry_ibw8nd.jpg',
    'description': 'Pastry topped with blueberry glaze and whipped cream.',
    'ingredients': [
      'Cake',
      'Blueberry',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Blueberry Cheesecake'
    ]
  },

  {
    'name': 'Mango Pastry',
    'price': 95,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152681/mango_pastry_gdcu6c.jpg',
    'description': 'Light sponge pastry topped with mango cream.',
    'ingredients': [
      'Cake',
      'Mango',
      'Cream',
      'Sugar'
    ],
    'combo': [
      'Mango Ice Cream'
    ]
  },

  {
    'name': 'Choco Lava Cake',
    'price': 120,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152626/choco_lava_cake_rsytuu.jpg',
    'description': 'Warm chocolate cake with molten chocolate filling.',
    'ingredients': [
      'Chocolate',
      'Flour',
      'Sugar',
      'Butter'
    ],
    'combo': [
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Brownie',
    'price': 100,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152616/brownie_degl6n.jpg',
    'description': 'Classic chocolate brownie with soft and fudgy texture.',
    'ingredients': [
      'Chocolate',
      'Flour',
      'Sugar',
      'Butter'
    ],
    'combo': [
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Chocolate Brownie',
    'price': 110,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152628/chocolate_brownie_jjvq4m.jpg',
    'description': 'Rich chocolate brownie with extra chocolate flavor.',
    'ingredients': [
      'Chocolate',
      'Cocoa Powder',
      'Flour',
      'Sugar'
    ],
    'combo': [
      'Hot Chocolate Fudge'
    ]
  },


  {
    'name': 'Cheesecake Slice',
    'price': 140,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152624/cheesecake_slice_mfvb0j.jpg',
    'description': 'Creamy cheesecake slice with biscuit base.',
    'ingredients': [
      'Cream Cheese',
      'Sugar',
      'Biscuit Base'
    ],
    'combo': [
      'Coffee'
    ]
  },

  {
    'name': 'Blueberry Cheesecake',
    'price': 160,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152607/blueberry_cheesecake_uk5s6b.jpg',
    'description': 'Classic cheesecake topped with blueberry compote.',
    'ingredients': [
      'Cream Cheese',
      'Blueberry',
      'Sugar',
      'Biscuit Base'
    ],
    'combo': [
      'Cold Coffee'
    ]
  },

  {
    'name': 'Tiramisu',
    'price': 170,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152735/tiramisu_j5vscy.jpg',
    'description': 'Italian desert layered with coffee soaked biscuits and mascarpone cream.',
    'ingredients': [
      'Mascarpone',
      'Coffee',
      'Cocoa Powder',
      'Sugar'
    ],
    'combo': [
      'Espresso'
    ]
  },

  {
    'name': 'Fruit Tart',
    'price': 130,
    'category': 'Cakes & Pastries',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152648/fruit_tart_c1yejr.jpg',
    'description': 'Crispy tart base filled with custard and fresh fruits.',
    'ingredients': [
      'Flour',
      'Custard',
      'Fresh Fruits',
      'Sugar'
    ],
    'combo': [
      'Ice Cream'
    ]
  },

  // Shakes & Smoothies
  {
    'name': 'Chocolate Shake',
    'price': 120,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152634/chocolate_shake_qmp9my.jpg',
    'description': 'Creamy milkshake blended with rich chocolate flavor.',
    'ingredients': [
      'Milk',
      'Chocolate Syrup',
      'Ice Cream',
      'Sugar'
    ],
    'combo': [
      'Chocolate Brownie'
    ]
  },

  {
    'name': 'Vanilla Shake',
    'price': 110,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152744/vanilla_shake_sxszbf.jpg',
    'description': 'Classic milkshake made with vanilla ice cream.',
    'ingredients': [
      'Milk',
      'Vanilla Ice Cream',
      'Sugar'
    ],
    'combo': [
      'Brownie'
    ]
  },

  {
    'name': 'Strawberry Shake',
    'price': 120,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152729/strawberry_shake_aq9cvy.jpg',
    'description': 'Sweet and refreshing milkshake blended with strawberries.',
    'ingredients': [
      'Milk',
      'Strawberry',
      'Ice Cream',
      'Sugar'
    ],
    'combo': [
      'Strawberry Pastry'
    ]
  },

  {
    'name': 'Mango Shake',
    'price': 130,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152685/mango_shake_jjqhti.jpg',
    'description': 'Thick and creamy mango milkshake made with fresh mango pulp.',
    'ingredients': [
      'Milk',
      'Mango Pulp',
      'Ice Cream',
      'Sugar'
    ],
    'combo': [
      'Mango Pastry'
    ]
  },

  {
    'name': 'Banana Shake',
    'price': 110,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152595/banana_shake_othb1d.jpg',
    'description': 'Smooth milkshake made with ripe bananas.',
    'ingredients': [
      'Milk',
      'Banana',
      'Sugar',
      'Ice Cream'
    ],
    'combo': [
      'Walnut Brownie'
    ]
  },

  {
    'name': 'Butterscotch Shake',
    'price': 120,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152620/butterscotch_shake_bpvfop.jpg',
    'description': 'Milkshake blended with butterscotch syrup and crunchy caramel.',
    'ingredients': [
      'Milk',
      'Butterscotch Syrup',
      'Ice Cream',
      'Sugar'
    ],
    'combo': [
      'Butterscotch Pastry'
    ]
  },

  {
    'name': 'Oreo Shake',
    'price': 140,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152696/oreo_shake_myspfm.jpg',
    'description': 'Creamy shake blended with Oreo biscuits.',
    'ingredients': [
      'Milk',
      'Oreo Cookies',
      'Ice Cream',
      'Chocolate Syrup'
    ],
    'combo': [
      'Choco Lava Cake'
    ]
  },

  {
    'name': 'KitKat Shake',
    'price': 150,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152673/kitkat_shake_wnl6mb.jpg',
    'description': 'Delicious shake blended with KitKat chocolate.',
    'ingredients': [
      'Milk',
      'KitKat',
      'Ice Cream',
      'Chocolate Syrup'
    ],
    'combo': [
      'Chocolate Brownie'
    ]
  },

  {
    'name': 'Brownie Shake',
    'price': 150,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152613/brownie_shake_yagrjs.jpg',
    'description': 'Chocolate milkshake blended with brownie pieces.',
    'ingredients': [
      'Milk',
      'Brownie',
      'Chocolate Syrup',
      'Ice Cream'
    ],
    'combo': [
      'Chocolate Brownie'
    ]
  },

  {
    'name': 'Cold Coffee',
    'price': 110,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152643/cold_coffee_tcgcko.jpg',
    'description': 'Chilled coffee blended with milk and ice.',
    'ingredients': [
      'Coffee',
      'Milk',
      'Sugar',
      'Ice'
    ],
    'combo': [
      'Chocolate Pastry'
    ]
  },

  {
    'name': 'Cold Coffee with Ice Cream',
    'price': 140,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152641/cold_coffee_with_ice_cream_phwpmo.jpg',
    'description': 'Cold coffee topped with creamy vanilla ice cream.',
    'ingredients': [
      'Coffee',
      'Milk',
      'Vanilla Ice Cream',
      'Sugar'
    ],
    'combo': [
      'Brownie'
    ]
  },

  {
    'name': 'Mango Smoothie',
    'price': 130,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152688/mango_smoothie_a5jjdp.jpg',
    'description': 'Healthy smoothie blended with fresh mango and yogurt.',
    'ingredients': [
      'Mango',
      'Yogurt',
      'Honey'
    ],
    'combo': [
      'Fruit Tart'
    ]
  },

  {
    'name': 'Berry Smoothie',
    'price': 140,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152603/berry_smoothie_ukqsht.jpg',
    'description': 'Refreshing smoothie made with mixed berries.',
    'ingredients': [
      'Strawberry',
      'Blueberry',
      'Yogurt',
      'Honey'
    ],
    'combo': [
      'Cheesecake'
    ]
  },

  {
    'name': 'Banana Smoothie',
    'price': 120,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152596/banana_smoothie_x9mobf.jpg',
    'description': 'Healthy smoothie blended with banana and milk.',
    'ingredients': [
      'Banana',
      'Milk',
      'Honey'
    ],
    'combo': [
      'Walnut Brownie'
    ]
  },

  {
    'name': 'Green Smoothie',
    'price': 140,
    'category': 'Shakes & Smoothies',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152654/green_smoothie_vrumsf.jpg',
    'description': 'Nutritious smoothie made with spinach, apple and banana.',
    'ingredients': [
      'Spinach',
      'Apple',
      'Banana',
      'Honey'
    ],
    'combo': [
      'Fruit Tart'
    ]
  },

  //Puddings
  {
    'name': 'Caramel Custard',
    'price': 110,
    'category': 'Puddings',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152622/caramel_custard_ytsoqh.jpg',
    'description': 'Smooth creamy custard topped with rich caramel sauce.',
    'ingredients': [
      'Milk',
      'Egg/Custard Powder',
      'Sugar',
      'Caramel Syrup'
    ],
    'combo': [
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Vanilla Custard',
    'price': 90,
    'category': 'Puddings',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152737/vanilla_custard_pnyoav.jpg',
    'description': 'Classic vanilla flavored custard served chilled.',
    'ingredients': [
      'Milk',
      'Custard Powder',
      'Sugar',
      'Vanilla'
    ],
    'combo': [
      'Fruit Salad'
    ]
  },

  {
    'name': 'Fruit Custard',
    'price': 120,
    'category': 'Puddings',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152647/fruit_custard_q9r9ay.jpg',
    'description': 'Creamy custard mixed with fresh seasonal fruits.',
    'ingredients': [
      'Milk',
      'Custard Powder',
      'Mixed Fruits',
      'Sugar'
    ],
    'combo': [
      'Ice Cream'
    ]
  },

  {
    'name': 'Chocolate Pudding',
    'price': 110,
    'category': 'Puddings',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152632/chocolate_pudding_upmaqx.jpg',
    'description': 'Rich chocolate pudding with smooth creamy texture.',
    'ingredients': [
      'Milk',
      'Chocolate',
      'Sugar',
      'Cornflour'
    ],
    'combo': [
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Bread Pudding',
    'price': 120,
    'category': 'Puddings',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152612/bread_pudding_wss1qv.jpg',
    'description': 'Soft baked desert made with bread, milk and dry fruits.',
    'ingredients': [
      'Bread',
      'Milk',
      'Sugar',
      'Dry Fruits'
    ],
    'combo': [
      'Caramel Sauce'
    ]
  },

  {
    'name': 'Rice Pudding',
    'price': 100,
    'category': 'Puddings',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152717/rice_pudding_fbrhuu.jpg',
    'description': 'Creamy desert made from rice cooked in sweet milk.',
    'ingredients': [
      'Rice',
      'Milk',
      'Sugar',
      'Cardamom'
    ],
    'combo': [
      'Dry Fruits'
    ]
  },

  {
    'name': 'Mango Pudding',
    'price': 120,
    'category': 'Puddings',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152682/mango_pudding_simyqa.jpg',
    'description': 'Refreshing pudding made with mango puree and cream.',
    'ingredients': [
      'Mango',
      'Milk',
      'Sugar',
      'Gelatin'
    ],
    'combo': [
      'Mango Ice Cream'
    ]
  },

  // Sundaes & Special Deserts
  {
    'name': 'Chocolate Sundae',
    'price': 150,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152636/chocolate_sundae_cxjojf.jpg',
    'description': 'Classic ice cream sundae topped with rich chocolate syrup and nuts.',
    'ingredients': [
      'Vanilla Ice Cream',
      'Chocolate Syrup',
      'Dry Fruits',
      'Whipped Cream'
    ],
    'combo': [
      'Brownie'
    ]
  },

  {
    'name': 'Strawberry Sundae',
    'price': 150,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152730/strawberry_sundae_o8ymau.jpg',
    'description': 'Ice cream sundae topped with strawberry sauce and whipped cream.',
    'ingredients': [
      'Vanilla Ice Cream',
      'Strawberry Syrup',
      'Whipped Cream',
      'Cherry'
    ],
    'combo': [
      'Strawberry Pastry'
    ]
  },

  {
    'name': 'Butterscotch Sundae',
    'price': 160,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152621/butterscotch_sundae_aqdwxm.jpg',
    'description': 'Ice cream sundae topped with butterscotch sauce and crunchy caramel bits.',
    'ingredients': [
      'Vanilla Ice Cream',
      'Butterscotch Syrup',
      'Caramel Bits',
      'Whipped Cream'
    ],
    'combo': [
      'Butterscotch Pastry'
    ]
  },

  {
    'name': 'Death by Chocolate',
    'price': 180,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152646/death_by_chocolate_qkj1en.jpg',
    'description': 'Ultimate chocolate desert with brownie, ice cream and chocolate sauce.',
    'ingredients': [
      'Chocolate Brownie',
      'Chocolate Ice Cream',
      'Chocolate Syrup',
      'Whipped Cream'
    ],
    'combo': [
      'Cold Coffee'
    ]
  },

  {
    'name': 'Sizzling Brownie',
    'price': 170,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152722/sizzling_brownie_rvczfy.jpg',
    'description': 'Hot brownie served on sizzling plate with vanilla ice cream.',
    'ingredients': [
      'Brownie',
      'Vanilla Ice Cream',
      'Chocolate Sauce'
    ],
    'combo': [
      'Cold Coffee'
    ]
  },

  {
    'name': 'Fruit Salad with Ice Cream',
    'price': 140,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152649/fruit_salad_with_ice_cream_achg1o.jpg',
    'description': 'Fresh fruit salad served with a scoop of vanilla ice cream.',
    'ingredients': [
      'Mixed Fruits',
      'Vanilla Ice Cream',
      'Honey'
    ],
    'combo': [
      'Fruit Custard'
    ]
  },

  {
    'name': 'Waffle with Ice Cream',
    'price': 180,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152745/waffle_with_ice_cream_mtjmjz.jpg',
    'description': 'Crispy waffle served with ice cream and chocolate syrup.',
    'ingredients': [
      'Waffle',
      'Ice Cream',
      'Chocolate Syrup'
    ],
    'combo': [
      'Chocolate Shake'
    ]
  },

  {
    'name': 'Pancakes with Chocolate',
    'price': 160,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152698/pancakes_with_chocolate_hhehce.jpg',
    'description': 'Soft pancakes topped with chocolate sauce.',
    'ingredients': [
      'Flour',
      'Milk',
      'Chocolate Syrup',
      'Butter'
    ],
    'combo': [
      'Cold Coffee'
    ]
  },

  {
    'name': 'Churros with Chocolate Sauce',
    'price': 150,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152638/churros_with_chocolate_sauce_fqkkmd.jpg',
    'description': 'Crispy fried churros served with chocolate dipping sauce.',
    'ingredients': [
      'Flour',
      'Sugar',
      'Cinnamon',
      'Chocolate Sauce'
    ],
    'combo': [
      'Chocolate Shake'
    ]
  },

  {
    'name': 'Apple Pie',
    'price': 170,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152594/apple_pie_wro15i.jpg',
    'description': 'Classic baked apple pie served warm.',
    'ingredients': [
      'Apple',
      'Flour',
      'Sugar',
      'Butter'
    ],
    'combo': [
      'Vanilla Ice Cream'
    ]
  },

  {
    'name': 'Banana Split',
    'price': 180,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152597/banana_split_navbpm.jpg',
    'description': 'Banana desert topped with three flavors of ice cream and sauces.',
    'ingredients': [
      'Banana',
      'Vanilla Ice Cream',
      'Chocolate Ice Cream',
      'Strawberry Ice Cream'
    ],
    'combo': [
      'Chocolate Sundae'
    ]
  },

  {
    'name': 'Cookie Dough Sundae',
    'price': 190,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152644/cookie_dough_sundae_zljrag.jpg',
    'description': 'Ice cream sundae topped with cookie dough chunks and chocolate sauce.',
    'ingredients': [
      'Vanilla Ice Cream',
      'Cookie Dough',
      'Chocolate Syrup'
    ],
    'combo': [
      'Cold Coffee'
    ]
  },

  {
    'name': 'Nutella Waffle',
    'price': 190,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152695/nutella_waffle_jbpbqy.jpg',
    'description': 'Fresh waffle topped with Nutella chocolate spread.',
    'ingredients': [
      'Waffle',
      'Nutella',
      'Sugar'
    ],
    'combo': [
      'Chocolate Shake'
    ]
  },

  {
    'name': 'Chocolate Fondue',
    'price': 220,
    'category': 'Special Deserts',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152630/chocolate_fondue_niw81g.jpg',
    'description': 'Melted chocolate served with fruits and marshmallows for dipping.',
    'ingredients': [
      'Chocolate',
      'Strawberry',
      'Banana',
      'Marshmallow'
    ],
    'combo': [
      'Fruit Salad'
    ]
  },

  //Drinks
  {
    'name': 'Coca Cola',
    'price': 40,
    'category': 'Cold Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152753/coca_cola_cx8fqf.jpg',
    'description': 'Classic chilled Coca Cola with refreshing cola flavor and fizzy bubbles.',
    'combo': [
      'Veg Burger',
      'French Fries'
    ]
  },
  {
    'name': 'Pepsi',
    'price': 40,
    'category': 'Cold Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152772/pepsi_dxeb7e.jpg',
    'description': 'Popular cola drink with a sweet and refreshing taste served chilled.',
    'combo': [
      'Pizza',
      'Paneer Sandwich'
    ]
  },
  {
    'name': 'Sprite',
    'price': 40,
    'category': 'Cold Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152779/sprite_nh8bxh.jpg',
    'description': 'Lemon-lime flavored soft drink that is crisp, clean, and refreshing.',
    'combo': [
      'Veg Sandwich',
      'Paneer Roll'
    ]
  },
  {
    'name': 'Fanta',
    'price': 40,
    'category': 'Cold Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152754/fanta_cwgcs0.jpg',
    'description': 'Sweet and fruity orange flavored soft drink served ice cold.',
    'combo': [
      'Veg Burger',
      'French Fries'
    ]
  },
  {
    'name': 'Thums Up',
    'price': 40,
    'category': 'Cold Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152785/thums_up_imkzng.jpg',
    'description': 'Strong cola taste with intense fizz and bold flavor.',
    'combo': [
      'Paneer Tikka',
      'Veg Burger'
    ]
  },
  {
    'name': 'Plain Chaas',
    'price': 25,
    'category': 'Buttermilk & Lassi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152776/plain_chaas_zzfpdw.jpg',
    'description': 'Simple and refreshing plain buttermilk served chilled.',
    'combo': [
      'Khichdi',
      'Thepla'
    ]
  },
  {
    'name': 'Masala Chaas',
    'price': 30,
    'category': 'Buttermilk & Lassi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152768/masala_chaas_fdgj3b.jpg',
    'description': 'Refreshing spiced buttermilk flavored with roasted cumin and fresh herbs.',
    'combo': [
      'Gujarati Thali',
      'Dhokla'
    ]
  },
  {
    'name': 'Mango Lassi',
    'price': 70,
    'category': 'Buttermilk & Lassi',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152766/mango_lassi_wk3ep7.jpg',
    'description': 'Sweet and creamy yogurt drink blended with fresh mango pulp.',
    'combo': [
      'Paneer Tikka',
      'Veg Biryani'
    ]
  },
  {
    'name': 'Orange Juice',
    'price': 70,
    'category': 'Fresh Juices',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152770/orange_juice_m8id4l.jpg',
    'description': 'Freshly squeezed orange juice rich in vitamin C and refreshing citrus flavor.',

    'combo': [
      'Veg Burger',
      'French Fries'
    ]
  },
  {
    'name': 'Watermelon Juice',
    'price': 60,
    'category': 'Fresh Juices',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152787/watermelon_juice_eppqj2.jpg',
    'description': 'Cool and refreshing watermelon juice perfect for hot days.',

    'combo': [
      'Veg Sandwich',
      'Paneer Roll'
    ]
  },
  {
    'name': 'Pineapple Juice',
    'price': 70,
    'category': 'Fresh Juices',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152773/pineapple_juice_iacnjm.jpg',
    'description': 'Sweet and tangy pineapple juice made from fresh ripe pineapples.',

    'combo': [
      'Veg Burger',
      'French Fries'
    ]
  },
  {
    'name': 'Sugarcane Juice',
    'price': 50,
    'category': 'Fresh Juices',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152780/sugarcane_juice_w3enwo.jpg',
    'description': 'Natural and refreshing sugarcane juice with a hint of lemon and ginger.',

    'combo': [
      'Samosa',
      'Kachori'
    ]
  },
  {
    'name': 'Masala Chai',
    'price': 25,
    'category': 'Hot Beverages',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152769/masala_chai_xno9n7.jpg',
    'description': 'Traditional Indian tea brewed with milk, tea leaves, and aromatic spices.',

    'combo': [
      'Samosa',
      'Kachori'
    ]
  },
  {
    'name': 'Filter Coffee',
    'price': 35,
    'category': 'Hot Beverages',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152755/filter_coffee_b8vmw4.jpg',
    'description': 'South Indian style strong coffee brewed with freshly ground coffee beans and milk.',

    'combo': [
      'Butter Toast',
      'Veg Sandwich'
    ]
  },
  {
    'name': 'Green Tea',
    'price': 30,
    'category': 'Hot Beverages',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152758/green_tea_fjq1qd.jpg',
    'description': 'Light and healthy tea made from fresh green tea leaves with a soothing flavor.',

    'combo': [
      'Fruit Salad',
      'Healthy Sandwich'
    ]
  },
  {
    'name': 'Hot Chocolate',
    'price': 50,
    'category': 'Hot Beverages',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152759/hot_chocolate_j7grlg.jpg',
    'description': 'Rich and creamy hot chocolate drink made with milk and cocoa.',
    'combo': [
      'Chocolate Cake',
      'Brownie'
    ]
  },

  //Special  Drinks
  {
    'name': 'Jaljeera',
    'price': 35,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152760/jaljeera_cbotcg.jpg',
    'description': 'Refreshing Indian summer drink made with cumin, mint, and tangy spices.',

    'combo': [
      'Samosa',
      'Kachori'
    ]
  },
  {
    'name': 'Aam Panna',
    'price': 50,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152750/aam_panna_yxcwai.jpg',
    'description': 'Traditional summer drink made from raw mango pulp with spices and mint.',
    'combo': [
      'Dhokla',
      'Thepla'
    ]
  },
  {
    'name': 'Badam Milk',
    'price': 70,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152751/badam_milk_etlaqd.jpg',
    'description': 'Rich and creamy milk flavored with almonds, saffron, and cardamom.',

    'combo': [
      'Gulab Jamun',
      'Pista Barfi'
    ]
  },
  {
    'name': 'Lassi (Sweet)',
    'price': 60,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152765/lassi_sweet_l23l92.jpg',
    'description': 'Traditional Punjabi sweet lassi made with thick yogurt and sugar.',

    'combo': [
      'Paneer Butter Masala',
      'Veg Biryani'
    ]
  },
  {
    'name': 'Lassi (Salted)',
    'price': 55,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152763/lassi_salted_ewzim8.jpg',
    'description': 'Refreshing salted yogurt drink served chilled with mild spices.',

    'combo': [
      'Paratha',
      'Paneer Tikka'
    ]
  },
  {
    'name': 'Rose Milk',
    'price': 50,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152776/rose_milk_rxznwy.jpg',
    'description': 'Chilled milk flavored with sweet rose syrup for a refreshing taste.',

    'combo': [
      'Chocolate Cake',
      'Pastry'
    ]
  },
  {
    'name': 'Kokum Sharbat',
    'price': 45,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152762/kokum_sharbat_nmomez.jpg',
    'description': 'Cooling drink made from kokum fruit with a tangy and slightly sweet flavor.',

    'combo': [
      'Gujarati Thali',
      'Khichdi'
    ]
  },
  {
    'name': 'Thandai',
    'price': 80,
    'category': 'Special Drinks',
    'veg': true,
    'image': 'https://res.cloudinary.com/dkay8rouh/image/upload/v1773152784/thandai_mb5xvc.jpg',
    'description': 'Traditional festive milk drink made with nuts, saffron, and aromatic spices.',

    'combo': [
      'Gulab Jamun',
      'Pista Barfi'
    ]
  },
];