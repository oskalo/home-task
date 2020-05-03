import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static var _t = Translations("en_us") +
      {
        "en_us": "First screen",
        "ua_ua": "Перший екран",
      } +
      {
        "en_us": "Ok",
        "ua_ua": "Добре",
      } +
      {
        "en_us": "Second screen",
        "ua_ua": "Second screen",
      } +
      {
        "en_us": "Change language",
        "ua_ua": "Змінити мову",
      };

  String get i18n => localize(this, _t);
}
