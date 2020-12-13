class AlarmModel {
  int id;
  String date;
  String title;
  String type;
  String typeId;

  AlarmModel({
    this.id,
    this.date,
    this.title,
    this.type,
    this.typeId,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "date": date,
        "type": type,
        "typeId": typeId,
      };
}
