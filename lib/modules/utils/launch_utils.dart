import 'package:url_launcher/url_launcher.dart';

void launchGeoSender(String lat, String lng) async {
  String link = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
  await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
}

void launchEmailSender(String email) async {
  Uri url = Uri(
    scheme: 'mailto',
    path: email,
  );
  String link = url.toString();
  await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
}

void launchPhoneDialer(String phone) async {
  Uri phoneUrl = Uri(
    scheme: 'tel',
    path: phone,
  );
  String link = phoneUrl.toString();
  await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
}

void launchURL(String link) async {
  await canLaunch(link) ? await launch(link) : throw 'Could not launch $link';
}