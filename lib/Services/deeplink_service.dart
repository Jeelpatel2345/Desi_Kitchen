import 'package:app_links/app_links.dart';

class DeepLinkService {

  static final AppLinks _appLinks = AppLinks();

  static Future<int?> getTableNumber() async {

    final uri = await _appLinks.getInitialLink();

    if (uri != null) {

      if (uri.pathSegments.contains("table")) {

        return int.tryParse(uri.pathSegments.last);

      }

    }

    return null;
  }
}