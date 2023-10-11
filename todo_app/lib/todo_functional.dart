
class TodoFunction{
  String title;
  DateTime currentDateTime;
  DateTime updateDateTime;
  String status = "pending";

  TodoFunction({
    required this.title,
    required this.currentDateTime,
    required this.updateDateTime,
    });
}