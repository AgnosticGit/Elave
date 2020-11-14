import 'package:elave/index.dart';

class MessageModel {
  MessageModel({
    this.text,
    this.senderType,
    this.time,
    this.id,
  });

  final String text;
  final SenderType senderType;
  final DateTime time;
  final String id;
}
