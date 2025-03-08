import 'package:flutter/material.dart';
import '../custom_widgets/my_app_button_filled.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({super.key, required this.home, required this.topics});
  final void Function() home;
  final Function() topics;

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {

  List<String> names = ['Ali', 'Abrar', 'Ahmad', 'Ayan', 'Hamza', 'Kamil'];
  List<Color> colors = [Colors.red, Colors.teal, Colors.deepPurple, Colors.brown, Colors.black, Colors.orange, Colors.blue, Colors.indigo, Colors.green, Colors.cyan];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View : Count Layout'),
        backgroundColor: Colors.deepPurple.shade200,
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
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Total Screen Width use Fixed No of Columns
            const Text(
              'GRID VIEW : COUNT MODE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            GridView.count(
              physics: const ScrollPhysics(),
                shrinkWrap: true ,
                crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 16/9,
              children: [
                Container(decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(24)),),
              ],
            ),

            const SizedBox(height: 8.0,),

            // Total Screen Width / Extent Pixels Property
            const Text(
              'GRID VIEW : EXTENT MODE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            GridView.extent(
              physics: const ScrollPhysics(),
              shrinkWrap: true ,
              maxCrossAxisExtent: 90,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 16/9,
              children: [
                Container(decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(16)),),
                Container(decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(16)),),
                Container(decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),),
                Container(decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(16)),),
                Container(decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(16)),),                Container(decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(24)),),
                Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(16)),),
                Container(decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(16)),),
                Container(decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(16)),),
              ],
            ),

            const SizedBox(height: 8.0,),

            // GRID VIEW BUILDER : used to represent dynamic data load.
            const Text(
              'GRID VIEW : BUILDER MODE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 75, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0,),
              physics: const ScrollPhysics(),
              shrinkWrap: true ,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Container(decoration: BoxDecoration(color: colors[index], borderRadius: BorderRadius.circular(16)),
                child: Center(child: Text(index.toString(), style: const TextStyle(color: Colors.white, fontSize: 18,),),),);
              },
            ),

            const SizedBox(height: 8.0,),

            MyAppButtonFilled(
              myOnPressed: widget.topics,
              buttonText: 'Learn More Widgets',
              buttonHeight: 45,
              buttonWidth: 160,
            ),

          ],
        ),
      ),
    );
  }
}
