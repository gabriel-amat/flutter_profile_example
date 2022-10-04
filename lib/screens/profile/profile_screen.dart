import 'package:flutter/material.dart';
import 'package:flutter_example_users/controllers/user_controller.dart';
import 'package:flutter_example_users/models/user_model.dart';

import '../../config/locator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final userController = locator.get<UserController>();

  @override
  void initState() {
    userController.getUsers(false);
    super.initState();
  }

  Widget label(String text, {bool title = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: title ? 22 : 18,
          color: title ? Colors.amber : Colors.grey,
          letterSpacing: 3,
          fontWeight: title ? FontWeight.bold : FontWeight.w300,
        ),
      ),
    );
  }

  Widget field(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.blue,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await userController.getUsers(true);
            },
            icon: const Icon(
              Icons.refresh_rounded,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: StreamBuilder<UserModel?>(
            stream: userController.outUserData,
            builder: (context, user) {
              if (!user.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue, width: 2),
                              image: DecorationImage(
                                image: NetworkImage(user.data!.picture!.large!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            "${user.data!.name!.first} ${user.data!.name!.last}",
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, top: 16),
                      child: label("Information", title: true),
                    ),
                    label("E-mail"),
                    field(user.data!.email!),
                    label("Phone"),
                    field(user.data!.phone!),
                    label("Gender"),
                    field(user.data!.gender!),
                    label("ID"),
                    field(user.data!.login!.uuid!),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: label("Location", title: true),
                    ),
                    label("City"),
                    field(user.data!.location!.city!),
                    label("State"),
                    field(user.data!.location!.state!),
                    label("Country"),
                    field(user.data!.location!.country!),
                    label("Postcode"),
                    field(user.data!.location!.postcode!.toString()),
                    label("Street"),
                    field(user.data!.location!.street!.name!),
                    label("Street number"),
                    field(user.data!.location!.street!.number!.toString()),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
