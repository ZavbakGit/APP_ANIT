import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';

extension ExtTaskItem on TaskItem {
  bool needAccept(RefCatalog user) {
    if (user.guid == responsible!.guid) {
      if (condition!.name == 'Назначено') {
        return true;
      }
    }

    return false;
  }
}
