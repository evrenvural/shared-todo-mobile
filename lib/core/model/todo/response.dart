class TodoResponse {
  bool isChecked;
  String id;
  String text;

  TodoResponse({this.isChecked, this.id, this.text});

  TodoResponse.fromJson(Map<String, dynamic> json) {
    isChecked = json['isChecked'];
    id = json['_id'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isChecked'] = this.isChecked;
    data['_id'] = this.id;
    data['text'] = this.text;
    return data;
  }
}