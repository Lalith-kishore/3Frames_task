import 'package:get/get.dart';
import 'package:task_state_managemant/models/pretty_api.dart';
import 'package:task_state_managemant/services/apiservice.dart';

class PrettyController extends GetxController {
  List<PrettyApi> users = <PrettyApi>[].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    users = await Apiservice().fetchUsers();
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
    update();
  }
}






