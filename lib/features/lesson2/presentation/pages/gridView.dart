import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridView"),
      ),
      body: Column(
        children: [

          Container(height: 100),
          // Expanded(
          //   child: GridView(
          //     // physics: NeverScrollableScrollPhysics(),
          //     // shrinkWrap: true,
          //     gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
          //         maxCrossAxisExtent: 300),
          //         // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //     children: [
          //       Container(color: Colors.red,),
          //       Container(color: Colors.yellow,),
          //       Container(color: Colors.teal,),
          //       Container(color: Colors.orange,),
          //       Container(color: Colors.orange,),
          //       Container(color: Colors.orange,),
          //       Container(color: Colors.orange,),
          //       Container(color: Colors.green,),
          //     ],
          //   ),
          // ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 9/16
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.red,
                      margin: EdgeInsets.all(10),
                      child: Center(child: Text(index.toString())),
                    );
                  })),
          Container(height: 100),
        ],
      ),
    );
  }
}
