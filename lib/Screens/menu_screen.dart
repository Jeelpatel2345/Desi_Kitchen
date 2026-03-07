import 'package:flutter/material.dart';
import 'cart_provider.dart';
import 'cart_screen.dart';
import 'package:provider/provider.dart';
import 'cart_data.dart';




class MenuScreen extends StatefulWidget {
  final int initialIndex;

  const MenuScreen({super.key, this.initialIndex = 0});

  @override

  State<MenuScreen> createState() => _MenuScreenState();
}




class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {

  late List<Map<String, dynamic>> allMenus;

  late TabController _tabController;

  String searchQuery = '';

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: widget.initialIndex,
    );

    // 🔥 Combine all menus into one list
    allMenus = [
      ...gujaratiMenu,
      ...punjabiMenu,
      ...dessertsMenu,
      ...drinkMenu,
    ];
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  // Gujarati Menu Items (100+ items)
  final List<Map<String, dynamic>> gujaratiMenu = [
    // Snacks
    {'name': 'Dhokla', 'price': 80, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/dhokla.jpg'},
    {'name': 'Khandvi', 'price': 90, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/khandvi.jpg'},
    {'name': 'Fafda', 'price': 70, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/fafda.jpg'},
    {'name': 'Jalebi', 'price': 60, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/jalebi.jpg'},
    {
      'name': 'Fafda Jalebi Combo',
      'price': 120,
      'category': 'Snacks',
      'veg': true,
      'image':'assets/gujarati/fafda jalebi combo.jpg'
    },
    {'name': 'Khaman Dhokla', 'price': 80, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/khaman dhokla.jpg'},
    {'name': 'Rava Dhokla', 'price': 90, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/rava dhokla.jpg'},
    {'name': 'Methi Na Gota', 'price': 80, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/methi na gota.jpg'},
    {
      'name': 'Bhajiya (Pakoda)',
      'price': 70,
      'category': 'Snacks',
      'veg': true,
      'image':'assets/gujarati/bhajiya(pakoda).jpg'
    },
    {'name': 'Kachori', 'price': 60, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/kachori.jpg'},
    {'name': 'Samosa', 'price': 50, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/samosa.jpg'},
    {'name': 'Dabeli', 'price': 40, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/dabeli.jpeg'},
    {'name': 'Vada Pav', 'price': 40, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/vada pav.jpg'},
    {'name': 'Pav Bhaji', 'price': 120, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/pav bhaji.jpg'},
    {'name': 'Sev Usal', 'price': 90, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/sev usal.jpg'},
    {'name': 'Pani Puri', 'price': 60, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/pani puri.jpg'},
    {'name': 'Sev Puri', 'price': 70, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/sev puri.jpg'},
    {'name': 'Dahi Puri', 'price': 80, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/dahi puri.jpg'},
    {'name': 'Bhel Puri', 'price': 70, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/bhel puri.jpg'},
    {'name': 'Ragda Pattice', 'price': 90, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/ragda pattice.jpg'},
    {'name': 'Aloo Tikki', 'price': 80, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/aloo tikki.jpg'},
    {'name': 'Papdi Chaat', 'price': 80, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/papdi chaat.jpg'},
    {'name': 'Dahi Vada', 'price': 90, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/dahi vada.jpg'},
    {'name': 'Raj Kachori', 'price': 100, 'category': 'Snacks', 'veg': true,'image':'assets/gujarati/raj kachori.jpg'},

    // Thali
    {'name': 'Gujarati Thali', 'price': 250, 'category': 'Thali', 'veg': true,'image':'assets/gujarati/gujarati thali.jpg'},
    {
      'name': 'Mini Gujarati Thali',
      'price': 180,
      'category': 'Thali',
      'veg': true,
      'image':'assets/gujarati/mini gujarati thali.jpg'
    },
    {
      'name': 'Special Gujarati Thali',
      'price': 350,
      'category': 'Thali',
      'veg': true,
      'image':'assets/gujarati/special gujarati thali.jpg'
    },
    {
      'name': 'Kathiyawadi Thali',
      'price': 280,
      'category': 'Thali',
      'veg': true,
      'image':'assets/gujarati/kathiyavadi thali.jpg'
    },
    {'name': 'Unlimited Thali', 'price': 400, 'category': 'Thali', 'veg': true,'image':'assets/gujarati/unlimited thali.jpg'},

    // Sabzi (Vegetables)
    {'name': 'Undhiyu', 'price': 180, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/undhiyu.jpg',},
    {
      'name': 'Ringan Bateta Nu Shaak',
      'price': 140,
      'category': 'Sabzi',
      'veg': true,
      'image':'assets/gujarati/ringan bateta nu shaak.jpg'
    },
    {
      'name': 'Sev Tamatar Nu Shaak',
      'price': 130,
      'category': 'Sabzi',
      'veg': true,
      'image':'assets/gujarati/sev tameta nu shaak.jpg'
    },
    {
      'name': 'Dudhi Na Muthiya',
      'price': 150,
      'category': 'Sabzi',
      'veg': true,
      'image':'assets/gujarati/dudhi na muthiya.jpg'
    },
    {
      'name': 'Turia Bateta Nu Shaak',
      'price': 140,
      'category': 'Sabzi',
      'veg': true,
      'image':'assets/gujarati/turia bateta nu shaak.jpg'
    },
    {'name': 'Valor Nu Shaak', 'price': 160, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/valor nu shaak.jpg'},
    {'name': 'Papdi Nu Shaak', 'price': 150, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/papdi_nu_shaak.jpg'},
    {'name': 'Fansi Nu Shaak', 'price': 130, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/fansi_nu_shaak.jpg'},
    {'name': 'Surati Papdi', 'price': 140, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/surati papdi.jpg'},
    {'name': 'Bhinda Nu Shaak', 'price': 130, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/bhinda nu shaak.jpg'},
    {'name': 'Karela Nu Shaak', 'price': 140, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/karela nu shaak.jpg'},
    {'name': 'Tendli Nu Shaak', 'price': 130, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/tendli_nu_shaak.jpg'},
    {'name': 'Parval Nu Shaak', 'price': 140, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/parval nu shaak.jpg'},
    {'name': 'Guar Nu Shaak', 'price': 130, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/guar nu shaak.jpg'},
    {
      'name': 'Cholafali Nu Shaak',
      'price': 140,
      'category': 'Sabzi',
      'veg': true,
      'image':'assets/gujarati/cholafali nu shaak.jpg'
    },
    {'name': 'Lasaniya Bateta', 'price': 120, 'category': 'Sabzi', 'veg': true,'image':'assets/gujarati/lasaniya bateta.jpg'},

    // Dal
    {'name': 'Gujarati Dal', 'price': 100, 'category': 'Dal', 'veg': true,'image':'assets/gujarati/gujarati dal.jpg'},
    {'name': 'Kadhi', 'price': 100, 'category': 'Dal', 'veg': true,'image':'assets/gujarati/kadhi.jpg'},
    {'name': 'Mag Ni Dal', 'price': 110, 'category': 'Dal', 'veg': true,'image':'assets/gujarati/mag ni dal.jpg'},
    {'name': 'Toor Dal', 'price': 100, 'category': 'Dal', 'veg': true,'image':'assets/gujarati/toor dal.jpg'},
    {'name': 'Dal Dhokli', 'price': 140, 'category': 'Dal', 'veg': true,'image':'assets/gujarati/dal dhokli.jpg'},
    {'name': 'Dal Vada', 'price': 120, 'category': 'Dal', 'veg': true,'image':'assets/gujarati/dal vada.jpg'},

    // Rotli (Breads)
    {'name': 'Bajra Rotla', 'price': 40, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/bajra rotla.jpg'},
    {'name': 'Makkai Rotla', 'price': 40, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/makai rotla.jpg'},
    {'name': 'Jowar Rotla', 'price': 40, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/jowar_rotla.jpg'},
    {'name': 'Phulka Rotli', 'price': 30, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/phulka rotli.jpg'},
    {'name': 'Thepla', 'price': 50, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/thepla.jpg'},
    {'name': 'Methi Thepla', 'price': 60, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/methi thepla.jpg'},
    {'name': 'Puri', 'price': 50, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/puri.jpg'},
    {'name': 'Bhakri', 'price': 40, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/bhakri.jpg'},
    {'name': 'Rotla with Ghee', 'price': 60, 'category': 'Rotli', 'veg': true,'image':'assets/gujarati/rotla_with_ghee.jpg'},

    // Rice
    {
      'name': 'Vaghareli Khichdi',
      'price': 120,
      'category': 'Rice',
      'veg': true,
      'image':'assets/gujarati/vaghareli khichdi.jpg'
    },
    {'name': 'Masala Khichdi', 'price': 130, 'category': 'Rice', 'veg': true,'image':'assets/gujarati/masala khichdi.jpg'},
    {'name': 'Plain Khichdi', 'price': 100, 'category': 'Rice', 'veg': true,'image':'assets/gujarati/plain khichdi.jpg'},
    {'name': 'Vagharelo Bhaat', 'price': 110, 'category': 'Rice', 'veg': true,'image':'assets/gujarati/vagharelo bhaat.jpg'},
    {'name': 'Pulao', 'price': 140, 'category': 'Rice', 'veg': true,'image':'assets/gujarati/pulao.jpg'},
    {'name': 'Jeera Rice', 'price': 120, 'category': 'Rice', 'veg': true,'image':'assets/gujarati/jeera rice.jpg'},
  ];

  // Punjabi Menu Items (100+ items)
  final List<Map<String, dynamic>> punjabiMenu = [
    // Starters
    {'name': 'Paneer Tikka', 'price': 220, 'category': 'Starters', 'veg': true, 'image':'assets/punjabi/paneer tikka.jpg'},
    {
      'name': 'Tandoori Paneer',
      'price': 240,
      'category': 'Starters',
      'veg': true,
      'image':'assets/punjabi/tandoori paneer.jpg'
    },
    {
      'name': 'Chicken Tikka',
      'price': 280,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/chicken tikka.jpg'},
    {
      'name': 'Tandoori Chicken (Half)',
      'price': 300,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/tandoori chicken(half).jpg'
    },
    {
      'name': 'Tandoori Chicken (Full)',
      'price': 550,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/tandoori chicken(full).jpg'
    },
    {'name': 'Malai Tikka', 'price': 300, 'category': 'Starters', 'veg': false,'image':'assets/punjabi/malai tikka.jpg'},
    {'name': 'Seekh Kabab', 'price': 280, 'category': 'Starters', 'veg': false,'image':'assets/punjabi/seekh kabab.jpg'},
    {
      'name': 'Hara Bhara Kabab',
      'price': 180,
      'category': 'Starters',
      'veg': true,
      'image':'assets/punjabi/hara bhara kabab.jpg'
    },
    {
      'name': 'Tandoori Mushroom',
      'price': 200,
      'category': 'Starters',
      'veg': true,
      'image':'assets/punjabi/tandoori mushroom.jpg'
    },
    {
      'name': 'Tandoori Aloo',
      'price': 160,
      'category': 'Starters',
      'veg': true,
      'image':'assets/punjabi/tandoori aloo.jpg'
    },
    {
      'name': 'Tandoori Fish',
      'price': 320,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/tandoori fish.jpg'
    },
    {'name': 'Fish Tikka', 'price': 340, 'category': 'Starters', 'veg': false,'image':'assets/punjabi/fish tikka.jpg'},
    {
      'name': 'Afgani Chicken',
      'price': 320,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/afghani chicken.jpg'
    },
    {
      'name': 'Tangdi Kabab',
      'price': 300,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/tangdi kabab.jpg'
    },
    {
      'name': 'Mutton Seekh Kabab',
      'price': 350,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/mutton seekh kabab.jpg'
    },
    {
      'name': 'Achari Tikka',
      'price': 290,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/achari tikka.jpg'
    },
    {
      'name': 'Pudina Tikka',
      'price': 280,
      'category': 'Starters',
      'veg': false,
      'image':'assets/punjabi/pudina tikka.jpg'
    },

    // Veg Main Course
    {
      'name': 'Paneer Butter Masala',
      'price': 240,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/paneer_butter_masala.jpg'
    },
    {
      'name': 'Kadai Paneer',
      'price': 240,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/kadai paneer.jpg'
    },
    {
      'name': 'Palak Paneer',
      'price': 230,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/palak paneer.jpg'
    },
    {
      'name': 'Shahi Paneer',
      'price': 260,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/shahi paneer.jpg'
    },
    {
      'name': 'Paneer Tikka Masala',
      'price': 260,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/paneer tikka masala.jpg'
    },
    {
      'name': 'Paneer Bhurji',
      'price': 220,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/paneer bhurji.jpg'
    },
    {
      'name': 'Matar Paneer',
      'price': 220,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/matar paneer.jpg'
    },
    {
      'name': 'Paneer Do Pyaza',
      'price': 240,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/paneer do pyaza.jpg'
    },
    {
      'name': 'Paneer Lababdar',
      'price': 250,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/paneer lababdar.jpg'
    },
    {
      'name': 'Paneer Pasanda',
      'price': 260,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/paneer pasanda.jpg'
    },
    {
      'name': 'Dal Makhani',
      'price': 180,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/dal makhani.jpg'
    },
    {
      'name': 'Dal Tadka',
      'price': 150,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/dal tadka.jpg'
    },
    {
      'name': 'Dal Fry',
      'price': 140,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/dal fry.jpg'
    },
    {
      'name': 'Chana Masala',
      'price': 160,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/chana masala.jpg'
    },
    {
      'name': 'Chole Bhature',
      'price': 120,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/chole bhature.jpg'
    },
    {
      'name': 'Rajma Masala',
      'price': 160,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/rajma masala.jpg'
    },
    {
      'name': 'Aloo Gobi',
      'price': 140,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/aloo gobi.jpg'
    },
    {
      'name': 'Aloo Matar',
      'price': 130,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/aloo matar.jpg'
    },
    {
      'name': 'Aloo Jeera',
      'price': 120,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/aloo jeera.jpg'
    },
    {
      'name': 'Aloo Palak',
      'price': 140,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/aloo palak.jpg'
    },
    {
      'name': 'Baingan Bharta',
      'price': 160,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/baingan bharta.jpg'
    },
    {
      'name': 'Bhindi Masala',
      'price': 140,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/bhindi masala.jpg'
    },
    {
      'name': 'Mix Veg',
      'price': 150,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/mix veg.jpg'
    },
    {
      'name': 'Veg Kolhapuri',
      'price': 170,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/veg kolhapuri.jpg'
    },
    {
      'name': 'Mushroom Masala',
      'price': 180,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/mushroom masala.jpg'
    },
    {
      'name': 'Kadai Mushroom',
      'price': 180,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/kadai mushroom.jpg'
    },
    {
      'name': 'Malai Kofta',
      'price': 200,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/malai kofta.jpg'
    },
    {
      'name': 'Veg Kofta',
      'price': 180,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/veg kofta.jpg'
    },
    {
      'name': 'Navratan Korma',
      'price': 190,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/navratan korma.jpg'
    },
    {
      'name': 'Methi Malai Matar',
      'price': 180,
      'category': 'Veg Main Course',
      'veg': true,
      'image':'assets/punjabi/methi malai matar.jpg'
    },

    // Non-Veg Main Course
    {
      'name': 'Butter Chicken',
      'price': 280,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/butter chicken.jpg'
    },
    {
      'name': 'Chicken Tikka Masala',
      'price': 290,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken tikka masala.jpg'
    },
    {
      'name': 'Kadai Chicken',
      'price': 280,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/kadai chicken.jpg'
    },
    {
      'name': 'Chicken Curry',
      'price': 260,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken curry.jpg'
    },
    {
      'name': 'Chicken Korma',
      'price': 280,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken korma.jpg'
    },
    {
      'name': 'Chicken Do Pyaza',
      'price': 270,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken do pyaza.jpg'
    },
    {
      'name': 'Chicken Vindaloo',
      'price': 280,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken vindaloo.jpg'
    },
    {
      'name': 'Chicken Kolhapuri',
      'price': 290,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken kolhapuri.jpg'
    },
    {
      'name': 'Chicken Bhuna',
      'price': 280,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken bhuna.jpg'
    },
    {
      'name': 'Chicken Lababdar',
      'price': 290,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken lababdar.jpg'
    },
    {
      'name': 'Palak Chicken',
      'price': 270,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/palak chicken.jpg'
    },
    {
      'name': 'Methi Chicken',
      'price': 270,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/methi chicken.jpg'
    },
    {
      'name': 'Chicken Handi',
      'price': 300,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken handi.jpg'
    },
    {
      'name': 'Chicken Rogan Josh',
      'price': 300,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/chicken rogan josh.jpg'
    },
    {
      'name': 'Mutton Curry',
      'price': 350,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/mutton curry.jpg'
    },
    {
      'name': 'Mutton Rogan Josh',
      'price': 380,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/mutton rogan josh.jpg'
    },
    {
      'name': 'Mutton Korma',
      'price': 380,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/mutton korma.jpg'
    },
    {
      'name': 'Mutton Do Pyaza',
      'price': 370,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/mutton do pyaza.jpg'
    },
    {
      'name': 'Keema Matar',
      'price': 340,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/keema matar.jpg'
    },
    {
      'name': 'Fish Curry',
      'price': 300,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/fish curry.jpg'
    },
    {
      'name': 'Fish Masala',
      'price': 320,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/fish masala.jpg'
    },
    {
      'name': 'Prawn Curry',
      'price': 350,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/prawn curry.jpg'
    },
    {
      'name': 'Prawn Masala',
      'price': 370,
      'category': 'Non-Veg Main Course',
      'veg': false,
      'image':'assets/punjabi/prawn masala.jpg'
    },

    // Breads
    {'name': 'Butter Naan', 'price': 50, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/butter naan.jpg'},
    {'name': 'Plain Naan', 'price': 40, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/plain naan.jpg'},
    {'name': 'Garlic Naan', 'price': 60, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/garlic naan.jpg'},
    {'name': 'Cheese Naan', 'price': 80, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/cheese naan.jpg'},
    {'name': 'Paneer Naan', 'price': 90, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/paneer naan.jpg'},
    {'name': 'Kashmiri Naan', 'price': 90, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/kashmiri naan.jpg'},
    {'name': 'Keema Naan', 'price': 120, 'category': 'Breads', 'veg': false,'image':'assets/punjabi/keema naan.jpg'},
    {'name': 'Butter Roti', 'price': 30, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/butter roti.jpg'},
    {'name': 'Plain Roti', 'price': 20, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/plain roti.jpg'},
    {'name': 'Tandoori Roti', 'price': 30, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/tandoori roti.jpg'},
    {'name': 'Missi Roti', 'price': 40, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/missi roti.jpg'},
    {'name': 'Laccha Paratha', 'price': 50, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/laccha paratha.jpg'},
    {'name': 'Aloo Paratha', 'price': 60, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/aloo paratha.jpg'},
    {'name': 'Gobi Paratha', 'price': 70, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/gobi paratha.jpg'},
    {'name': 'Paneer Paratha', 'price': 80, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/paneer paratha.jpg'},
    {'name': 'Mix Paratha', 'price': 80, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/mix paratha.jpg'},
    {'name': 'Pudina Paratha', 'price': 60, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/pudina paratha.jpg'},
    {'name': 'Onion Kulcha', 'price': 60, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/onion kulcha.jpg'},
    {'name': 'Paneer Kulcha', 'price': 80, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/paneer kulcha.jpg'},
    {'name': 'Bhatura', 'price': 40, 'category': 'Breads', 'veg': true,'image':'assets/punjabi/bhatura.jpg'},

    // Rice & Biryani
    {
      'name': 'Veg Biryani',
      'price': 180,
      'category': 'Rice & Biryani',
      'veg': true,
      'image':'assets/punjabi/veg biryani.jpg'
    },
    {
      'name': 'Chicken Biryani',
      'price': 220,
      'category': 'Rice & Biryani',
      'veg': false,
      'image':'assets/punjabi/chicken biryani.jpg'
    },
    {
      'name': 'Mutton Biryani',
      'price': 300,
      'category': 'Rice & Biryani',
      'veg': false,
      'image':'assets/punjabi/mutton biryani.jpg'
    },
    {
      'name': 'Egg Biryani',
      'price': 160,
      'category': 'Rice & Biryani',
      'veg': false,
      'image':'assets/punjabi/egg biryani.jpg'
    },
    {
      'name': 'Paneer Biryani',
      'price': 200,
      'category': 'Rice & Biryani',
      'veg': true,
      'image':'assets/punjabi/paneer biryani.jpg'
    },
    {
      'name': 'Hyderabadi Biryani',
      'price': 240,
      'category': 'Rice & Biryani',
      'veg': false,
      'image':'assets/punjabi/hyderabadi biryani.jpg'
    },
    {
      'name': 'Dum Biryani',
      'price': 250,
      'category': 'Rice & Biryani',
      'veg': false,
      'image':'assets/punjabi/dum biryani.jpg'
    },
    {
      'name': 'Jeera Rice',
      'price': 120,
      'category': 'Rice & Biryani',
      'veg': true,
      'image':'assets/punjabi/jeera rice.jpg'
    },
    {
      'name': 'Plain Rice',
      'price': 90,
      'category': 'Rice & Biryani',
      'veg': true,
      'image':'assets/punjabi/plain rice.jpg'
    },
    {
      'name': 'Veg Pulao',
      'price': 150,
      'category': 'Rice & Biryani',
      'veg': true,
      'image':'assets/punjabi/veg pulao.jpg'
    },
    {
      'name': 'Kashmiri Pulao',
      'price': 170,
      'category': 'Rice & Biryani',
      'veg': true,
      'image':'assets/punjabi/kashmiri pulao.jpg'
    },
    {
      'name': 'Peas Pulao',
      'price': 140,
      'category': 'Rice & Biryani',
      'veg': true,
      'image':'assets/punjabi/peas pulao.jpg'
    },

    // Raita & Salad
    {
      'name': 'Plain Raita',
      'price': 60,
      'category': 'Raita & Salad',
      'veg': true,
      'image':'assets/punjabi/plain raita.jpg'
    },
    {
      'name': 'Boondi Raita',
      'price': 70,
      'category': 'Raita & Salad',
      'veg': true,
      'image':'assets/punjabi/boondi raita.jpg'
    },
    {
      'name': 'Mix Veg Raita',
      'price': 80,
      'category': 'Raita & Salad',
      'veg': true,
      'image':'assets/punjabi/mix veg raita.jpg'
    },
    {
      'name': 'Pineapple Raita',
      'price': 90,
      'category': 'Raita & Salad',
      'veg': true,
      'image':'assets/punjabi/pineapple raita.jpg'
    },
    {
      'name': 'Green Salad',
      'price': 70,
      'category': 'Raita & Salad',
      'veg': true,
      'image':'assets/punjabi/green salad.jpg'
    },
    {
      'name': 'Kachumber Salad',
      'price': 80,
      'category': 'Raita & Salad',
      'veg': true,
      'image':'assets/punjabi/kachumber salad.jpg'
    },
    {
      'name': 'Onion Salad',
      'price': 40,
      'category': 'Raita & Salad',
      'veg': true,
      'image':'assets/punjabi/onion salad.jpg'
    },
  ];

  // NEW! Desserts Menu Items (100+ items)
  final List<Map<String, dynamic>> dessertsMenu = [
    // Indian Traditional Sweets
    {
      'name': 'Gulab Jamun (2 pcs)',
      'price': 60,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/gulab jamun.jpg'
    },
    {
      'name': 'Rasmalai (2 pcs)',
      'price': 80,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/rasamalai.jpg'
    },
    {
      'name': 'Rasgulla (2 pcs)',
      'price': 70,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/rasgulla.jpg'
    },
    {
      'name': 'Kala Jamun',
      'price': 70,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/kala jamun.jpg'
    },
    {
      'name': 'Jalebi',
      'price': 60,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/jalebi.jpg'
    },
    {
      'name': 'Imarti',
      'price': 70,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/imarti.jpg'
    },
    {
      'name': 'Rabri',
      'price': 90,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/rabri.jpg'
    },
    {
      'name': 'Shrikhand',
      'price': 100,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/shrikhand.jpg'
    },
    {
      'name': 'Mango Shrikhand',
      'price': 120,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/mango shrikhand.jpg'
    },
    {
      'name': 'Basundi',
      'price': 110,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/basundi.jpg'
    },
    {
      'name': 'Kheer',
      'price': 80,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/kheer.jpg'
    },
    {
      'name': 'Phirni',
      'price': 90,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/phirni.jpg'
    },
    {
      'name': 'Seviyan',
      'price': 80,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/seviyan.jpg'
    },
    {
      'name': 'Malpua',
      'price': 90,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/malpua.jpg'
    },
    {
      'name': 'Ghevar',
      'price': 120,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/ghevar.jpg'
    },
    {
      'name': 'Sohan Papdi',
      'price': 80,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/sohan papdi.jpg'
    },
    {
      'name': 'Kaju Katli',
      'price': 150,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/kaju katli.jpg'
    },
    {
      'name': 'Besan Ladoo',
      'price': 70,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/besan ladoo.jpg'
    },
    {
      'name': 'Motichoor Ladoo',
      'price': 80,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/motichoor ladoo.jpg'
    },
    {
      'name': 'Boondi Ladoo',
      'price': 70,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/boondi ladoo.jpg'
    },
    {
      'name': 'Rava Ladoo',
      'price': 70,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/rava ladoo.jpg'
    },
    {
      'name': 'Coconut Ladoo',
      'price': 80,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/coconut ladoo.jpg'
    },
    {
      'name': 'Mohanthal',
      'price': 120,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/mohanthal.jpg'
    },
    {
      'name': 'Mysore Pak',
      'price': 100,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/mysore pak.jpg'
    },
    {
      'name': 'Peda',
      'price': 90,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/peda.jpg'
    },
    {
      'name': 'Barfi (Milk)',
      'price': 100,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/barfi(milk).jpg'
    },
    {
      'name': 'Kesar Pista Barfi',
      'price': 140,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/kesar pista barfi.jpg'
    },
    {
      'name': 'Chocolate Barfi',
      'price': 120,
      'category': 'Indian Traditional',
      'veg': true,
      'image':'assets/desert/chocolate barfi.jpg'
    },

    // Halwa Varieties
    {'name': 'Gajar Halwa', 'price': 100, 'category': 'Halwa', 'veg': true,'image':'assets/desert/gajar halwa.jpg'},
    {'name': 'Moong Dal Halwa', 'price': 120, 'category': 'Halwa', 'veg': true,'image':'assets/desert/moong dal halwa.jpg'},
    {'name': 'Suji Halwa', 'price': 80, 'category': 'Halwa', 'veg': true,'image':'assets/desert/suji halwa.jpg'},
    {'name': 'Badam Halwa', 'price': 150, 'category': 'Halwa', 'veg': true,'image':'assets/desert/badam halwa.jpg'},
    {'name': 'Pineapple Halwa', 'price': 110, 'category': 'Halwa', 'veg': true,'image':'assets/desert/pineapple halwa.jpg'},
    {
      'name': 'Bottle Gourd Halwa',
      'price': 100,
      'category': 'Halwa',
      'veg': true,
      'image':'assets/desert/bottle gourd halwa.jpg'
    },
    {'name': 'Beetroot Halwa', 'price': 100, 'category': 'Halwa', 'veg': true,'image':'assets/desert/beetroot halwa.jpg'},
    {'name': 'Apple Halwa', 'price': 110, 'category': 'Halwa', 'veg': true,'image':'assets/desert/apple halwa.jpg'},
    {'name': 'Kaju Halwa', 'price': 160, 'category': 'Halwa', 'veg': true,'image':'assets/desert/kaju halwa.jpg'},

    // Ice Cream & Kulfi
    {
      'name': 'Vanilla Ice Cream',
      'price': 80,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/vanilla ice cream.jpg'
    },
    {
      'name': 'Chocolate Ice Cream',
      'price': 90,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/chocolate ice cream.jpg'
    },
    {
      'name': 'Strawberry Ice Cream',
      'price': 90,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/strawberry ice cream.jpg'
    },
    {
      'name': 'Butterscotch Ice Cream',
      'price': 100,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/butterscotch ice cream.jpg'
    },
    {
      'name': 'Mango Ice Cream',
      'price': 100,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/mango ice cream.jpg'
    },
    {
      'name': 'Pista Ice Cream',
      'price': 110,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/pista ice cream.jpg'
    },
    {
      'name': 'Kesar Pista Ice Cream',
      'price': 120,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/kesar pista ice cream.jpg'
    },
    {
      'name': 'Belgium Chocolate Ice Cream',
      'price': 130,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/belgium chocolate ice cream.jpg'
    },
    {
      'name': 'Tender Coconut Ice Cream',
      'price': 110,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/tender coconut ice cream.jpg'
    },
    {'name': 'Kulfi Faluda', 'price': 90, 'category': 'Ice Cream', 'veg': true,'image':'assets/desert/kulfi faluda.jpg'},
    {'name': 'Malai Kulfi', 'price': 80, 'category': 'Ice Cream', 'veg': true,'image':'assets/desert/malai kulfi.jpg'},
    {'name': 'Mango Kulfi', 'price': 90, 'category': 'Ice Cream', 'veg': true,'image':'assets/desert/mango kulfi.jpg'},
    {'name': 'Kesar Kulfi', 'price': 100, 'category': 'Ice Cream', 'veg': true,'image':'assets/desert/kesar kulfi.jpg'},
    {'name': 'Pista Kulfi', 'price': 100, 'category': 'Ice Cream', 'veg': true,'image':'assets/desert/pista kulfi.jpg'},
    {'name': 'Rabri Kulfi', 'price': 110, 'category': 'Ice Cream', 'veg': true,'image':'assets/desert/rabri kulfi.jpg'},
    {
      'name': 'Ice Cream Sundae',
      'price': 120,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/ice cream sundae.jpg'
    },
    {
      'name': 'Hot Chocolate Fudge',
      'price': 140,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/hot chocolate fudge.jpg'
    },
    {
      'name': 'Brownie with Ice Cream',
      'price': 150,
      'category': 'Ice Cream',
      'veg': true,
      'image':'assets/desert/brownie with ice cream.jpg'
    },

    // Cakes & Pastries
    {
      'name': 'Black Forest Pastry',
      'price': 80,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/black forest pastry.jpg'
    },
    {
      'name': 'Chocolate Truffle Pastry',
      'price': 90,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/chocolate truffle pastry.jpg'
    },
    {
      'name': 'Red Velvet Pastry',
      'price': 100,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/red velvet pastry.jpg'
    },
    {
      'name': 'Butterscotch Pastry',
      'price': 80,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/butterscotch pastry.jpg'
    },
    {
      'name': 'Strawberry Pastry',
      'price': 90,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/strawberry pastry.jpg'
    },
    {
      'name': 'Pineapple Pastry',
      'price': 80,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/pineapple pastry.jpg'
    },
    {
      'name': 'White Forest Pastry',
      'price': 90,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/white forest pastry.jpg'
    },
    {
      'name': 'Vanilla Pastry',
      'price': 70,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/vanilla pastry.jpg'
    },
    {
      'name': 'Blueberry Pastry',
      'price': 100,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/blueberry pastry.jpg'
    },
    {
      'name': 'Mango Pastry',
      'price': 90,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/mango pastry.jpg'
    },
    {
      'name': 'Choco Lava Cake',
      'price': 120,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/choco lava cake.jpg'
    },
    {
      'name': 'Brownie',
      'price': 100,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/brownie.jpg'
    },
    {
      'name': 'Chocolate Brownie',
      'price': 110,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/chocolate brownie.jpg'
    },
    {
      'name': 'Walnut Brownie',
      'price': 120,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/walnut brownie.jpg'
    },
    {
      'name': 'Cheesecake Slice',
      'price': 140,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/cheesecake slice.jpg'
    },
    {
      'name': 'Blueberry Cheesecake',
      'price': 160,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/blueberry cheesecake.jpg'
    },
    {
      'name': 'Tiramisu',
      'price': 180,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/tiramisu.jpg'
    },
    {
      'name': 'Fruit Tart',
      'price': 120,
      'category': 'Cakes & Pastries',
      'veg': true,
      'image':'assets/desert/fruit tart.jpg'
    },

    // Shakes & Smoothies
    {
      'name': 'Chocolate Shake',
      'price': 100,
      'category': 'Shakes',
      'veg': true,
      'image':'assets/desert/chocolate shake.jpg'
    },
    {'name': 'Vanilla Shake', 'price': 90, 'category': 'Shakes', 'veg': true,'image':'assets/desert/vanilla shake.jpg'},
    {
      'name': 'Strawberry Shake',
      'price': 100,
      'category': 'Shakes',
      'veg': true,
      'image':'assets/desert/strawberry shake.jpg'
    },
    {'name': 'Mango Shake', 'price': 100, 'category': 'Shakes', 'veg': true,'image':'assets/desert/mango shake.jpg'},
    {'name': 'Banana Shake', 'price': 90, 'category': 'Shakes', 'veg': true,'image':'assets/desert/banana shake.jpg'},
    {
      'name': 'Butterscotch Shake',
      'price': 100,
      'category': 'Shakes',
      'veg': true,
      'image':'assets/desert/butterscotch shake.jpg'
    },
    {'name': 'Oreo Shake', 'price': 120, 'category': 'Shakes', 'veg': true,'image':'assets/desert/oreo shake.jpg'},
    {'name': 'KitKat Shake', 'price': 130, 'category': 'Shakes', 'veg': true,'image':'assets/desert/kitkat shake.jpg'},
    {'name': 'Brownie Shake', 'price': 140, 'category': 'Shakes', 'veg': true,'image':'assets/desert/brownie shake.jpg'},
    {'name': 'Cold Coffee', 'price': 100, 'category': 'Shakes', 'veg': true,'image':'assets/desert/cold coffee.jpg'},
    {
      'name': 'Cold Coffee with Ice Cream',
      'price': 130,
      'category': 'Shakes',
      'veg': true,
      'image':'assets/desert/cold coffee with ice cream.jpg'
    },
    {'name': 'Mango Smoothie', 'price': 120, 'category': 'Shakes', 'veg': true,'image':'assets/desert/mango smoothie.jpg'},
    {'name': 'Berry Smoothie', 'price': 130, 'category': 'Shakes', 'veg': true,'image':'assets/desert/berry smoothie.jpg'},
    {
      'name': 'Banana Smoothie',
      'price': 110,
      'category': 'Shakes',
      'veg': true,
      'image':'assets/desert/banana smoothie.jpg'
    },
    {'name': 'Green Smoothie', 'price': 140, 'category': 'Shakes', 'veg': true,'image':'assets/desert/green smoothie.jpg'},

    // Puddings & Custards
    {
      'name': 'Caramel Custard',
      'price': 80,
      'category': 'Puddings',
      'veg': true,
      'image':'assets/desert/caramel custard.jpg'
    },
    {
      'name': 'Vanilla Custard',
      'price': 70,
      'category': 'Puddings',
      'veg': true,
      'image':'assets/desert/vanilla custard.jpg'
    },
    {'name': 'Fruit Custard', 'price': 90, 'category': 'Puddings', 'veg': true,'image':'assets/desert/fruit custard.jpg'},
    {
      'name': 'Chocolate Pudding',
      'price': 100,
      'category': 'Puddings',
      'veg': true,
      'image':'assets/desert/chocolate pudding.jpg'
    },
    {'name': 'Bread Pudding', 'price': 90, 'category': 'Puddings', 'veg': true,'image':'assets/desert/bread pudding.jpg'},
    {'name': 'Rice Pudding', 'price': 80, 'category': 'Puddings', 'veg': true,'image':'assets/desert/rice pudding.jpg'},
    {
      'name': 'Mango Pudding',
      'price': 100,
      'category': 'Puddings',
      'veg': true,
      'image':'assets/desert/mango pudding.jpg'
    },

    // Sundaes & Special Desserts
    {
      'name': 'Chocolate Sundae',
      'price': 120,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/chocolate sundae.jpg'
    },
    {
      'name': 'Strawberry Sundae',
      'price': 130,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/strawberry sundae.jpg'
    },
    {
      'name': 'Butterscotch Sundae',
      'price': 130,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/butterscotch sundae.jpg'
    },
    {
      'name': 'Death by Chocolate',
      'price': 180,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/death by chocolate.jpg'
    },
    {
      'name': 'Sizzling Brownie',
      'price': 200,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/sizzling brownie.jpg'
    },
    {
      'name': 'Fruit Salad with Ice Cream',
      'price': 140,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/fruit salad with ice cream.jpg'
    },
    {
      'name': 'Waffle with Ice Cream',
      'price': 160,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/waffle with ice cream.jpg'
    },
    {
      'name': 'Pancakes with Chocolate',
      'price': 150,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/pancakes with chocolate.jpg'
    },
    {
      'name': 'Churros with Chocolate Sauce',
      'price': 140,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/churros with chocolate sauce.jpg'
    },
    {
      'name': 'Apple Pie',
      'price': 120,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/apple pie.jpg'
    },
    {
      'name': 'Banana Split',
      'price': 150,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/banana split.jpg'
    },
    {
      'name': 'Cookie Dough Sundae',
      'price': 170,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/cookie dough sundae.jpg'
    },
    {
      'name': 'Nutella Waffle',
      'price': 180,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/nutella waffle.jpg'
    },
    {
      'name': 'Chocolate Fondue',
      'price': 250,
      'category': 'Special Desserts',
      'veg': true,
      'image':'assets/desert/chocolate fondue.jpg'
    },
  ];

  // NEW Drink Menu Items (20+ item)
  final List<Map<String, dynamic>> drinkMenu = [
    {
      "id": 1,
      "name": "Coca Cola",
      "category": "Cold Drinks",
      "price": 30,
      "veg": true,
      'image':'assets/drink/coca cola.jpg'
    },
    {
      "id": 2,
      "name": "Pepsi",
      "category": "Cold Drinks",
      "price": 30,
      "veg": true,
      'image':'assets/drink/pepsi.jpg'
    },
    {
      "id": 3,
      "name": "Sprite",
      "category": "Cold Drinks",
      "price": 30,
      "veg": true,
      'image':'assets/drink/sprite.jpg'
    },
    {
      "id": 4,
      "name": "Fanta",
      "category": "Cold Drinks",
      "price": 30,
      "veg": true,
      'image':'assets/drink/fanta.jpg'
    },
    {
      "id": 5,
      "name": "Thums Up",
      "category": "Cold Drinks",
      "price": 35,
      "veg": true,
      'image':'assets/drink/thums up.jpg'
    },
    {
      "id": 6,
      "name": "Plain Chaas",
      "category": "Buttermilk & Lassi",
      "price": 25,
      "veg": true,
      'image':'assets/drink/plain chaas.jpg'
    },
    {
      "id": 7,
      "name": "Masala Chaas",
      "category": "Buttermilk & Lassi",
      "price": 30,
      "veg": true,
      'image':'assets/drink/masala chaas.jpg'
    },
    {
      "id": 8,
      "name": "Sweet Lassi",
      "category": "Buttermilk & Lassi",
      "price": 40,
      "veg": true,
      'image':'assets/drink/sweet lassi.jpg'
    },
    {
      "id": 9,
      "name": "Mango Lassi",
      "category": "Buttermilk & Lassi",
      "price": 50,
      "veg": true,
      'image':'assets/drink/mango lassi.jpg'
    },
    {
      "id": 10,
      "name": "Orange Juice",
      "category": "Fresh Juices",
      "price": 60,
      "veg": true,
      'image':'assets/drink/orange juice.jpg'
    },
    {
  "id": 11,
  "name": "Watermelon Juice",
  "category": "Fresh Juices",
  "price": 55,
    "veg": true,
      'image':'assets/drink/watermelon juice.jpg'
  },
  {
  "id": 12,
  "name": "Pineapple Juice",
  "category": "Fresh Juices",
  "price": 65,
    "veg": true,
    'image':'assets/drink/pineapple juice.jpg'

  },
  {
  "id": 13,
  "name": "Sugarcane Juice",
  "category": "Fresh Juices",
  "price": 40,
    "veg": true,
    'image':'assets/drink/sugarcane juice.jpg'

  },
  {
  "id": 14,
  "name": "Masala Chai",
  "category": "Hot Beverages",
  "price": 20,
    "veg": true,
    'image':'assets/drink/masala chai.jpg'

  },
  {
  "id": 15,
  "name": "Filter Coffee",
  "category": "Hot Beverages",
  "price": 25,
    "veg": true,
    'image':'assets/drink/filter coffee.jpg'

  },
  {
  "id": 16,
  "name": "Green Tea",
  "category": "Hot Beverages",
  "price": 20,
    "veg": true,
    'image':'assets/drink/green tea.jpg'
  },
  {
  "id": 17,
  "name": "Hot Chocolate",
  "category": "Hot Beverages",
  "price": 35,
    "veg": true,
    'image':'assets/drink/hot chocolate.jpg'

  },
  {
  "id": 18,
  "name": "Jaljeera",
  "category": "Special Desi Drinks",
  "price": 35,
    "veg": true,
    'image':'assets/drink/jaljeera.jpg'
  },
  {
  "id": 19,
  "name": "Aam Panna",
  "category": "Special Desi Drinks",
  "price": 45,
    "veg": true,
    'image':'assets/drink/aam panna.jpg'
  },
  {
  "id": 20,
  "name": "Badam Milk",
  "category": "Special Desi Drinks",
  "price": 50,
    "veg": true,
    'image':'assets/drink/badam milk.jpg'
  },
    {
      "id": 21,
      "name": "Lassi (Sweet)",
      "category": "Special Desi Drinks",
      "price": 60,
      "veg": true,
      'image':'assets/drink/lassi(sweet).jpg'
    },
    {
      "id": 22,
      "name": "Lassi (Salted)",
      "category": "Special Desi Drinks",
      "price": 60,
      "veg": true,
      'image':'assets/drink/lassi(salted).jpg'
    },
    {
      "id": 23,
      "name": "Rose Milk",
      "category": "Special Desi Drinks",
      "price": 45,
      "veg": true,
      'image':'assets/drink/rose milk.jpg'
    },
    {
      "id": 24,
      "name": "Kokum Sharbat",
      "category": "Special Desi Drinks",
      "price": 50,
      "veg": true,
      'image':'assets/drink/kokum sharbat.jpg'
    },
    {
      "id": 25,
      "name": "Thandai",
      "category":"Special Desi Drinks",
      "price": 70,
      "veg": true,
      'image':'assets/drink/thandai.jpg'
    },
];



  get categoryName => null;

  List<Map<String, dynamic>> getFilteredMenu(List<Map<String, dynamic>> menu) {
    if (searchQuery.isEmpty) return menu;

    return menu.where((item) {
      final name = (item['name'] ?? '').toString().toLowerCase();
      return name.contains(searchQuery.toLowerCase());
    }).toList();
  }

  Map<String, List<Map<String, dynamic>>> groupByCategory(
      List<Map<String, dynamic>> menu) {
    Map<String, List<Map<String, dynamic>>> grouped = {};
    for (var item in menu) {
      String category = item['category'];
      if (!grouped.containsKey(category)) {
        grouped[category] = [];
      }
      grouped[category]!.add(item);
    }
    return grouped;
  }

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartProvider>(context, listen: false);

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Our Menu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    }); 
                  },
                  decoration: InputDecoration(
                    hintText: 'Search menu items...',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(text: "Gujarati"),
                  Tab(text: "Punjabi"),
                  Tab(text: "Desserts"),
                  Tab(text: "Drinks"),
                ],
              ),
            ],
          ),
        ),
      ),
      body: searchQuery.isNotEmpty
          ? _buildMenuList(allMenus) // 🔥 Global search
          : TabBarView(
        controller: _tabController,
        children: [
          _buildMenuList(gujaratiMenu),
          _buildMenuList(punjabiMenu),
          _buildMenuList(dessertsMenu),
          _buildMenuList(drinkMenu),
        ],
      ),


    );
  }



  Widget _buildMenuList(List<Map<String, dynamic>> menu) {
    final filteredMenu = getFilteredMenu(menu);
    final groupedMenu = groupByCategory(filteredMenu);
    final categories = groupedMenu.keys.toList();

    if (filteredMenu.isEmpty) {
      return const Center(
        child: Text(
          'No items found',
          style: TextStyle(fontSize: 18),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        String category = categories[index];
        List<Map<String, dynamic>> items = groupedMenu[category]!;

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // 🔥 CATEGORY HEADER
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Text(
                  category,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),

              // 🔥 ITEMS LIST
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: items.length,
                separatorBuilder: (context, index) =>
                const Divider(height: 1),
                itemBuilder: (context, itemIndex) {
                  final item = items[itemIndex];

                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),

                    // ✅ IMAGE FOR ALL ITEMS
                    leading: item['image'] != null
                        ? ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item['image'],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                        : Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: item['veg']
                            ? Colors.green.shade50
                            : Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        item['veg']
                            ? Icons.eco
                            : Icons.restaurant,
                        color: item['veg']
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),

                    title: Text(
                      item['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    subtitle: Text(
                      item['veg']
                          ? 'Vegetarian'
                          : 'Non-Vegetarian',
                      style: TextStyle(
                        color: item['veg']
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),

                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '₹${item['price']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                            BorderRadius.circular(8),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add,
                                color: Colors.white),
                            iconSize: 20,
                            padding:
                            const EdgeInsets.all(4),
                            constraints:
                            const BoxConstraints(),
                            onPressed: () async {

                              var cart = Provider.of<CartProvider>(context, listen: false);

                              await cart.addItem({
                                'name': item['name'],
                                'price': item['price'],
                                'category': item['category'],
                              });

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('${item['name']} added to cart'),
                                  duration: const Duration(seconds: 1),
                                ),
                              );

                            },

                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}


