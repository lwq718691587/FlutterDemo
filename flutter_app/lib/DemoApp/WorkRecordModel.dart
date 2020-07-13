import 'package:json_annotation/json_annotation.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
//@JsonSerializable()

class WorkRecordModel {

  String checkDate;
  String checkinTime;
  String checkoutTime;
  String duration;
  WorkRecordModel(this.checkDate, this.checkinTime, this.checkoutTime);

  WorkRecordModel.fromJson(Map<String,dynamic> json)
      : checkDate = json['checkDate'],
        checkinTime = json['checkinTime'],
        checkoutTime = json['checkoutTime'],
        duration = json['duration'];

  Map<String,dynamic> toJson() =>
    {
      'checkDate' : checkDate,
      'checkinTime' : checkinTime,
      'checkoutTime' : checkoutTime,
      'duration' : duration,
    };


}
