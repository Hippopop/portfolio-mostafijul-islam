/* import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

enum SocialShareOption {
  twitter,
  facebook,
  telegram,
  whatsapp,
}

/// Ref : [https://blog.shahednasser.com/how-to-easily-add-share-links-for-each-social-media-platform]
Future<bool?> enterSocialShareLink({
  required SocialShareOption option,
  String? url,
  String? text,
}) async {
  try {
    final encodedUrl = Uri.encodeComponent(url ?? "");
    final encodedText = Uri.encodeComponent(text ?? "");
    final String stringUrl = switch (option) {
      SocialShareOption.twitter =>
        "https://twitter.com/intent/tweet?text=$encodedText&url=$encodedUrl",
      SocialShareOption.facebook =>
        "https://www.facebook.com/sharer/sharer.php?u=$encodedUrl&qoute=$encodedText",
      SocialShareOption.telegram =>
        "https://t.me/share/url?text=$encodedText&url=$encodedUrl",
      SocialShareOption.whatsapp => "https://wa.me/?text=$heading$url",
    };
    final finalUri = Uri.parse(stringUrl);
    if (await canLaunchUrl(finalUri)) {
      return await launchUrl(finalUri);
    } else {
      log("Couldn't launch social(${option.name}) url : $stringUrl");
    }
  } catch (e, s) {
    log("#SocialLinkOpenFailError", error: e, stackTrace: s);
  }
  return null;
}
 */