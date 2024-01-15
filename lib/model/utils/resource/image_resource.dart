
class ImageResource {
  static ImageResource? _instance;
  static ImageResource get instance => _instance ??= ImageResource._init();
  ImageResource._init();


  String toIcons(String name) => 'assets/images/icons/$name';
  String toFields(String name) => 'assets/images/fields/$name';
  String toViewImage(String name) => 'assets/to_view_images/$name';



  /// login
  String get dumbel => toViewImage('dumbel.png');
  String get mekup => toViewImage('mekup.png');
  String get paint => toViewImage('paint.png');
  String get paper => toViewImage('paper.png');
  String get screwman => toViewImage('screwman.png');
  String get towel => toViewImage('towel.png');
  String get flagImage => toViewImage('flag.png');
  String get penIcon  => toIcons('pen.png');
  String get glofaStarIcon  => toIcons('star.png');
  String get acMan  => toIcons('acman.png');
  String get circleVideoPlay  => toIcons('CircledPlay.png');

  /// home
  String get parlour => toFields('parlour.png');
  String get salon => toFields('salon.png');
  String get services => toFields('services.png');
  String get therapy => toFields('therapy.png');
  String get yoga => toFields('yoga.png');
  String get acApplience => toFields('ac_appliance.png');
  String get cleaningPestcontrol => toFields('cleaning_pestcontrol.png');
  String get electricianPlumber => toFields('electrician_plumber.png');
  String get housePainter => toFields('house_painter.png');
  String get mensSalon => toFields('mens_salon.png');
  String get womensSpa => toFields('womens_spa.png');
  String get roWater => toFields('ro_water_pani.png');









}