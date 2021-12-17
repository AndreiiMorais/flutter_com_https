class ToDoModel {
  late int userId;
  late int id;
  late String title;
  late bool completed;

  ToDoModel(
      {required this.userId,
      required this.id,
      required this.completed,
      required this.title});

  ToDoModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = userId;
    data['title'] = title;
    data['completed'] = completed;
    return data;
  }
}
