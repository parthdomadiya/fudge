import 'package:fudge/api/api.dart';
import 'package:fudge/model/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  // ignore: deprecated_member_use
  var lstusers = <UserModel>[].obs;

  Future<void> fetchData() async {
    List<UserModel> lstUsersDetail = await ApiProvider().userData();
    lstusers.value = lstUsersDetail;
  }
}
