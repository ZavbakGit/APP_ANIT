import 'package:app_anit/core/extencion/date_extencion.dart';
import 'package:chopper_api_anit/swagger_generated_code/swagger.swagger.dart';

extension ExtTask on Task {
  bool get isControlSet {
    if (dateControl == null) {
      return false;
    }
    if (dateControl!.isEmptyDate) {
      return false;
    }
    return true;
  }

  bool get needShowControlCheck {
    if (controllers == null) return false;
    return controllers!.isNotEmpty & !isControlSet;
  }

  bool userIsController(RefCatalog user) {
    if (controllers == null) return false;
    return controllers!.map((e) => e.guid).contains(user.guid);
  }

  bool needAccept(RefCatalog user) {
    if (user.guid == responsible!.guid) {
      if (condition!.name == 'Назначено') {
        return true;
      }
    }
    return false;
  }
}
