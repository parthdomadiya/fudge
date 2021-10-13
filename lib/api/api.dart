import 'package:dio/dio.dart';
import 'package:fudge/model/user_model.dart';

class ApiProvider {
  Future<List<UserModel>> userData() async {
    List<UserModel> lstListUser = [];

    String query = "https://jsonplaceholder.typicode.com/users";

    Map<String, dynamic> head = {
      "Content-Type": "application/json",
    };
    try {
      var response = await Dio().get(
        query,
        options: Options(
          headers: head,
        ),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        response.data.forEach((element) {
          UserModel objUserModel = new UserModel();
          objUserModel = UserModel.fromJson(element);
          lstListUser.add(objUserModel);
        });
      }
    } catch (e) {
      print(e);
    }
    return lstListUser;
  }


}
