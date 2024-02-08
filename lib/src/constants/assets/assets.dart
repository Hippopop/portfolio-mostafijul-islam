const String _imagesFolder = "assets/images/";
const String _iconsFolder = "assets/icons/";
String get _categoryFolder => "${_iconsFolder}category/";
String get _navigationFolder => "${_iconsFolder}navigation/";
String get _suggestionsFolder => "${_iconsFolder}suggestions/";
String get _optionsFolder => "${_iconsFolder}options/";
String get _bannersFolder => "${_imagesFolder}banners/";

final class AppAssets {
  ///Dashboard Icons(.svg)!
  static String get referIcon => "${_iconsFolder}refer_icon.svg";
}

final class CategoryAssets {
  ///Dashboard Category Icons(.svg)!
  static String get car => "${_categoryFolder}car.svg";
  static String get commercial => "${_categoryFolder}commercial.svg";
  static String get credit => "${_categoryFolder}credit.svg";
  static String get finance => "${_categoryFolder}finance.svg";
  static String get insurance => "${_categoryFolder}insurance.svg";
  static String get mortgage => "${_categoryFolder}mortgage.svg";
  static String get personal => "${_categoryFolder}personal.svg";
}

final class NavigationAssets {
  ///Dashboard Navigation Icons(.svg)!
  static String get chat => "${_navigationFolder}chat.svg";
  static String get cases => "${_navigationFolder}cases.svg";
  static String get credit => "${_navigationFolder}credit.svg";
  static String get dashboard => "${_navigationFolder}dashboard.svg";
  static String get more => "${_navigationFolder}more.svg";
}

final class SuggestionAssets {
  ///Dashboard Suggestion Icons(.svg)!
  static String get action => "${_suggestionsFolder}actions.svg";
  static String get quote => "${_suggestionsFolder}quote.svg";
  static String get credit => "${_suggestionsFolder}credit.svg";
  static String get borrow => "${_suggestionsFolder}borrow.svg";
  static String get rate => "${_suggestionsFolder}rates.svg";
}

final class OptionAssets {
  ///Dashboard Option Icons(.svg)!
  static String get medical => "${_optionsFolder}medical.svg";
  static String get business => "${_optionsFolder}business.svg";
  static String get life => "${_optionsFolder}life.svg";
}

final class BannerAssets {
  ///Dashboard Option Icons(.svg)!
  static String get one => "${_bannersFolder}banner_one.png";
  static String get two => "${_bannersFolder}banner_two.png";
}
