import 'package:elave/index.dart';

class MessageModel {
  MessageModel({
    @required this.text,
    @required this.senderType,
    @required this.time,
    @required this.id,
  });

  final String text;
  final SenderType senderType;
  final DateTime time;
  final int id;
}
