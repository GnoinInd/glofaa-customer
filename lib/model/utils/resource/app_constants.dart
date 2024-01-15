//
//
// class AppConstants {
//   static AppConstants? _instance;
//   static AppConstants get instance => _instance ??= AppConstants();
//   ///Mobil Language
//   String mobileLanguage = "en_Us";
//
//   ///default theme
//   String defaultTheme = "light";
//
//   /// live base url
//   // static const String adminUrl = 'http://172.105.41.132/widsin-dev/public/api/v1/'; // Live url
//   static const String adminUrl = 'https://widsin.com/api/v1/';
//   static const String baseUrl = '${adminUrl}driver/'; // Live url
//
//   /// firebase keys
//   String get  serverKey => "AAAA97Pkut0:APA91bG82twBxWlOxyRVP08C8Qbks8UhZFwneFol2GhbJEwHvxsveKxhVKX-7pWN313YflaaLZtEUau2TnYQmyS3bZCiFqvwZuqamnqv0iQ86mX0QlQ2zMJRrQO-ecc6YB9Isr-S8x22";
//
//
//   /// AUTH
//   String get driverGetProfile => '${baseUrl}get/profile';
//   String get login => '${baseUrl}login';
//   String get notificationTrigger =>'https://fcm.googleapis.com/fcm/send';
//   String get otpCheck => '${baseUrl}login-otp';
//   String get logout =>'${baseUrl}logout';
//   String get notification => '${baseUrl}notifications';
//   String get notificationCount=> '${baseUrl}notification-count';
//   String get latLngUpdate=> '${baseUrl}lat-lng';
//   String get deleteAccount =>'${baseUrl}delete-accounts';
//
//   ///profile
//   String get profile=> '${baseUrl}profile/';
//   String get driverProfile=> '${profile}register';
//   String get documents=> '${profile}document/store';
//   String get bankDetails=> '${profile}bankdetail/store';
//   String get availability=> '${profile}availability/update';
//
//   /// drawer
//   String get contactUs => '${adminUrl}admin/contact-us';
//   String get pageContents => '${adminUrl}page-contents?type=3';
//   String get getFaq => '${adminUrl}widsin/faqs?app_type=3';
//
//
//   /// home
//   String get orderCount => '${baseUrl}get/orders/count';
//   String get orderList => '${baseUrl}order/list?type=';
//   String get orderDetail => '${baseUrl}order/detail/';
//   String get adminTimeSlot => '${baseUrl}time-slot?order_type=';
//   String get orderVerifyMan => '${baseUrl}verify-otp/';
//   String get serviceStatus => '${baseUrl}profile/availability/update';
//   String get vendorCloth => '${baseUrl}get/items?';
//   String get addClothInCart => '${baseUrl}order/add-item';
//   String get category => '${adminUrl}customer/category';
//   String get vendorService => '${baseUrl}get/vendor/services?type=';
//   String get orderStatusUpdate => '${adminUrl}vendor/orders/status/update?';
//
//   /// widsin profile
//   String get widsinProfile => '${baseUrl}admin-detail';
//   String get paymentHistory => '${baseUrl}transactions';
//
//
//   /// country code
//   static List<Map<String, dynamic>> states = [];
//   static Map<int, List<Map<String, dynamic>>> city = {};
//
//   /// currency
//   static final formatCurrency = NumberFormat.currency(locale: "hi_IN", symbol: "₹ ", decimalDigits: 2);
//   static amountFormat(double amount){
//     return AppConstants.formatCurrency.format(amount).toString();
//   }
//
//
//   /// App content
//   static RxString privacyPolicy = "".obs;
//   static RxString tramsAndCondition = "".obs;
//   static RxString aboutUs = "".obs;
//   static RxString cancellationPolicy = "".obs;
// }
