import 'package:flutter/material.dart';
import 'package:nexus_quiz_app/data/bank_data.dart';
import '../models/bank_model.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key, required this.home, required this.topics});
  final void Function() home;
  final Function() topics;

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> names = ['Ali', 'Abrar', 'Ahmad', 'Ayan', 'Hamza', 'Kamil'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
        backgroundColor: Colors.orange.shade200,
        actions: [
          IconButton(
            onPressed: widget.topics,
            icon: const Icon(Icons.ac_unit,size: 35,color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: widget.home,
            icon: const Icon(Icons.home,size: 35,color: Colors.black,
            ),
          ),
          const SizedBox(width: 8,),
        ],
      ),
      body: Column(
        children: [
          const Text('List View Builder'),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: banks.length,
              scrollDirection: Axis.horizontal,
              // reverse: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {

                // Access the bank data from the 'banks' list
                BankModel bank = banks[index];

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
                        color: Colors.orange.shade200,
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            bank.image,
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        bank.bankName,
                        style: const TextStyle(
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
              itemCount: banks.length,
              scrollDirection: Axis.vertical,
              // reverse: true,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {

                // Access the bank data from the 'banks' list
                BankModel bank = banks[index];

                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8.0,
                      ),
                      height: 100,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
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
                            margin: const EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                bank.image,
                                height: 85,
                                width: 85,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            bank.bankName,
                            style: const TextStyle(
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
