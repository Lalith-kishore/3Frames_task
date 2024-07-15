import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_state_managemant/controller/pretty_controller.dart';
import 'package:task_state_managemant/models/pretty_api.dart';
import 'package:task_state_managemant/view/profile_view.dart';

class ListViewTask extends StatelessWidget {
  const ListViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Task'),
      ),
      body: GetBuilder<PrettyController>(
        init: PrettyController(),
        builder: (PrettyController controller) {
          if (controller.users.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.users.length,
              itemBuilder: (BuildContext context, int index) {
                PrettyApi user = controller.users[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileView(
                          userValue: user,
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.photo!),
                    ),
                    title: Text(user.username!),
                    subtitle: Text(user.company!),
                    trailing: Text(user.phone!),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}




