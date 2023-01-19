import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
          'home': 'Home',
          'settings': 'Settings',
          'language': 'Language',
          'english': 'English',
          'hindi': 'Hindi',
          'dark': 'Dark',
          'light': 'Light',
          'theme': 'theme',
          'city': 'City',
          'market': 'Market',
          'tapri': 'Tapri',
          'item': 'Item',
          'customer': 'Customer',
          'order': 'Order',
          'invoice': 'Invoice',
        },
        'hi_IN': {
          'hello': 'नमस्ते',
          'home': 'होम',
          'settings': 'सेटिंग्स',
          'language': 'भाषा',
          'english': 'अंग्रेज़ी',
          'hindi': 'हिंदीs',
          'dark': 'डार्क',
          'light': 'लाइट',
          'theme': 'थीम',
          'city': 'शहर',
          'market': 'बाजार',
          'tapri': 'टपरी',
          'item': 'वस्तु',
          'customer': 'ग्राहक',
          'order': 'गण',
          'invoice': 'इनवॉइस',
        }
      };
}
