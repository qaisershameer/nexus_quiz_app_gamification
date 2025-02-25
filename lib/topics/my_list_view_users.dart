import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/user_data.dart';
import '../models/user_model.dart';

class MyListViewUsers extends StatefulWidget {
  const MyListViewUsers({super.key});

  @override
  State<MyListViewUsers> createState() => _MyListViewUsersState();
}

class _MyListViewUsersState extends State<MyListViewUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
        backgroundColor: Colors.orange.shade200,
      ),
      body: Column(
        children: [
          Text(
            'List View Builder',
            style: GoogleFonts.lato(
              color: Colors.deepOrangeAccent,
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),
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
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal.shade500,
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
                        style: GoogleFonts.lato(
                          color: Colors.deepPurple,
                          fontSize: 16,
                          decoration: TextDecoration.none,
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
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {

                // Access the user data from the 'users' list
                UserModel user = users[index];

                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      height: 275,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            bottomRight: Radius.circular(70)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.green, Colors.yellow],
                        ),
                        // color: index.isEven
                        //     ? Colors.green.shade100
                        //     : Colors.orange.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 16.0,
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
                          Expanded(
                            child: Text(
                              '''\nUser ID: ${user.id}
Email: ${user.email}
User Name: ${user.username}
Password: ${user.password}
Phone: ${user.phone}\n
Address:\n${user.address['city']} - ${user.address['street']} - ${user.address['number']}\n
Location:
 Latitude: ${user.address['geolocation']['lat']}\n Longitude: ${user.address['geolocation']['long']}
''',
                              style: GoogleFonts.lato(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decoration: TextDecoration.none,
                              ),
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
