import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Assignment 3"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [                
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
               const SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child:const Text("Button 1"))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [                
                Container(
                  height: 100,
                  width: 100,
                  
                  color: Colors.green,
                ),
                const SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text("Button 2"))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [                
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              const  SizedBox(
                  height:20,
                ),
                ElevatedButton(
                  onPressed: (){}, 
                  child:const Text("Button 2"),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
