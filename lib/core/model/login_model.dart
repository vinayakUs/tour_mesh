import 'package:tour_mesh/core/model/base_model.dart';
import 'package:tour_mesh/core/services/authentication_service.dart';
import 'package:tour_mesh/locator.dart';

class LoginModel extends BaseModel {
  AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  Future loginWithGoogle() async {
    setBusy(true);
    var result = await _authenticationService.loginWithGoogle();
    setBusy(false);
    if (result is bool) {
      if (result) {
        //
      } else {
        //show dialog
      }
    } else {
      //show dialog
    }
  }
}
