import 'package:flutter/material.dart';
import 'package:nexus_quiz_app/data/bank_data.dart';
import 'package:nexus_quiz_app/data/user_data.dart';
import '../models/user_model.dart';

class MyListViewUsers extends StatefulWidget {
  const MyListViewUsers({super.key});

  @override
  State<MyListViewUsers> createState() => _MyListViewUsersState();
}

class _MyListViewUsersState extends State<MyListViewUsers> {
  List<String> names = ['Ali', 'Abrar', 'Ahmad', 'Ayan', 'Hamza', 'Kamil'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Builder'),
        backgroundColor: Colors.orange.shade200,
      ),
      body: Column(
        children: [
          Text('List View Builder'),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: users.length,
              scrollDirection: Axis.horizontal,
              // reverse: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // Access the bank data from the 'users' list
                UserModel user = users[index];

                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange.shade200,
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            user.image,
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        user.username,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              scrollDirection: Axis.vertical,
              // reverse: true,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {

                // Access the bank data from the 'users' list
                UserModel user = users[index];

                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      height: 100,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            bottomRight: Radius.circular(70)),
                        color: index.isEven
                            ? Colors.green.shade100
                            : Colors.orange.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                user.image,
                                height: 85,
                                width: 85,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            user.password,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
        // padding: EdgeInsets.only(top: 8),
      ),
    );
  }
}
