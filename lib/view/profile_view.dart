import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_state_managemant/controller/pretty_controller.dart';
import 'package:task_state_managemant/models/pretty_api.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key, required this.userValue});

  final PrettyApi userValue;

  final PrettyController controller = Get.put(PrettyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile View'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(userValue.photo!),
            ),
          ),
          Text(
            "Company Name: ${userValue.company!}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "UserName: ${userValue.username!}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Email: ${userValue.email!}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Address: ${userValue.address!}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Zip: ${userValue.zip!}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "State: ${userValue.state!}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Country: ${userValue.country!}",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.red,
          iconSize: 30,
          selectedItemColor: Colors.black,
          currentIndex: controller.selectedIndex.value,
          unselectedItemColor: Colors.red,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: (index) {
            controller.onItemTapped(index);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_mini,
                  color: Colors.red,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.red,
                ),
                label: "Home Filled"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_repair_service,
                  color: Colors.red,
                ),
                label: "Repair Services"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.horizontal_split,
                  color: Colors.red,
                ),
                label: "Horizontal Split"),
          ],
        ),
      ),
    );
  }
}