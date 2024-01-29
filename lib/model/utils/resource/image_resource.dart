
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
  String get glofaStarIcon  => toIcons('plus2.png');
  String get acMan  => toIcons('acman.png');
  String get circleVideoPlay  => toIcons('CircledPlay.png');
  String get likesStar  => toIcons('likesStar.png');
  String get priceIcon  => toIcons('price.png');
  String get gifts  => toIcons('gifts.png');
  String get staricon  => toIcons('staricon.png');
  String get cameraicon  => toIcons('cameraicon.png');
  String get australia  => toIcons('australia.png');
  String get arab  => toIcons('arab.png');
  String get india91  => toIcons('india91.png');
  String get saudi  => toIcons('saudi.png');
  String get singapore  => toIcons('singapore.png');
  String get unitedstates  => toIcons('unitedstates.png');
  String get percentRound  => toIcons('percent_round.png');
  String get clockRound  => toIcons('Clock_round.png');
  String get calendarRound  => toIcons('Calendar_round.png');
  String get giftRound  => toIcons('Gift_round.png');
  String get medal  => toIcons('medal.png');
  String get arrowtick  => toIcons('arrowtick.png');
  String get contactplus  => toIcons('contactplus.png');
  String get goldstarplus  => toIcons('goldstarplus.png');
  String get mobilelist  => toIcons('mobilelist.png');

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
  String get native => toFields('native.png');
  String get beards => toFields('beards.png');
  String get pedicure => toFields('pedicure.png');
  String get hairReduction => toFields('hairReduction.png');
  String get stresstherapy => toFields('stresstherapy.png');
  String get acrepair => toFields('acrepair.png');
  String get waterglass => toFields('waterglass.png');
  String get brush => toFields('brush.png');
  String get nall => toFields('nall.png');
  String get facewash => toFields('facewash.png');
  String get girlmassage => toFields('girlmassage.png');
  String get boymassage => toFields('boymassage.png');
  String get vishalroy => toFields('vishalroy.png');









}