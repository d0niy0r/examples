import 'package:example/features/lesson3/data/repository/lesson3_repository.dart';
import 'package:flutter/material.dart';

class UseHttpScreen extends StatefulWidget {
  const UseHttpScreen({super.key});

  @override
  State<UseHttpScreen> createState() => _UseHttpScreenState();
}

class _UseHttpScreenState extends State<UseHttpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {});
        },
      ),
      body: Center(
        child: FutureBuilder(
            future: Lesson3Repository().getListData(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(snapshot.data?.length ?? 0,
                            (index) => Column(
                              children: [
                                Text(snapshot.data?[index]["title"].toString() ?? "null keldi"),
                                Text(snapshot.data?[index]["price"].toString() ?? "null keldi"),
                                Text(snapshot.data?[index]["description"].toString() ?? "null keldi"),
                                Text(snapshot.data?[index]["category"].toString() ?? "null keldi"),
                                Image.network(snapshot.data?[index]["image"], height: 200,),
                              ],
                            )),
                  ),
                );
              }
              if(snapshot.hasError){
                return Text("data error berdi");
              }
              return CircularProgressIndicator.adaptive();
            },
        ),
      ),
    );
  }
}

