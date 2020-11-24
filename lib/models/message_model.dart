import 'package:elave/index.dart';

class MessageModel {
  MessageModel({
    @required this.text,
    @required this.senderType,
    @required this.time,
    @required this.id,
    this.imageLinks,
  });

  String text;
  String translatedText;
  final SenderType senderType;
  final DateTime time;
  final int id;
  final List<String> imageLinks;
}
