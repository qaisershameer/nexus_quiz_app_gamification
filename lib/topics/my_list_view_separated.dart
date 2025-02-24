import 'package:flutter/material.dart';

class MyListViewSeparated extends StatefulWidget {
  const MyListViewSeparated({super.key});
  @override
  State<MyListViewSeparated> createState() => _MyListViewSeparatedState();
}

class _MyListViewSeparatedState extends State<MyListViewSeparated> {
  List<String> names = ['Ali', 'Abrar', 'Ahmad', 'Ayan', 'Hamza', 'Kamil'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Separated'),
        backgroundColor: Colors.orange.shade200,
      ),
      body: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            subtitle:
                Text('Sub Title of the ${names[index]} : Index 0${index + 1}'),
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/users/USR${index + 1}.jpg',
              ),
              radius: 30,
            ),
            trailing: Icon(Icons.settings),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.red,
            thickness: 3,
          );
        },
      ),
    );
  }
}