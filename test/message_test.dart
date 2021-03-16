import 'package:chat_application_demo/Domain/core/chat_model.dart';
import 'package:chat_application_demo/Infrastructure/Database/database_facade.dart';

void main() async {
  DatabaseFacade db = DatabaseFacade();
  final room = await db.createARoom();
  print(room);
}
