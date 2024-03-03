import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/lesson3_provider.dart';

class UseHttpScreen extends StatefulWidget {
  const UseHttpScreen({super.key});

  @override
  State<UseHttpScreen> createState() => _UseHttpScreenState();
}

class _UseHttpScreenState extends State<UseHttpScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<Lesson3Provider>(context, listen: false).getListData();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<Lesson3Provider>();
    // provider.getListData;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(53, 55, 75, 1),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(53, 55, 75, 1),
        title: const Text(
          "Suit rent",
          style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // const SizedBox(
            //   height: 24,
            // ),
            // const Text(
            //   "Suit rent",
            //   style: TextStyle(
            //       fontSize: 24,
            //       color: Colors.white,
            //       fontWeight: FontWeight.w700),
            // ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 250,
                  height: 40,
                  child: TextField(
                    cursorColor: Colors.white70,
                    decoration: InputDecoration(
                      label: const Text(
                        "Search",
                        style: TextStyle(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListenableBuilder(
                listenable: provider,
                builder: (BuildContext context, Widget? child) {
                  if (provider.loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (provider.error) {
                    return const Center(child: Text("error"));
                  }
                  return ListView.builder(
                      itemCount: provider.lesson3model?.length ?? 0,
                      itemBuilder: (context, index) {
                        final item = provider.lesson3model![index];
                        return Card(
                          margin: const EdgeInsets.all(8),
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.black12,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // Rasmni ko'rsatish
                                item.image != null
                                    ? Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 1, // Border eni
                                          ),
                                        ),
                                        child: Image.network(
                                          item.image!,
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    : Container(),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "${item.price.toString()} \$ " ??
                                                "",
                                            style: const TextStyle(
                                              color: Colors.cyanAccent,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        item.title ?? "",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white, // Sarlavha rangi
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        item.category ?? "",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.cyanAccent,
                                              disabledForegroundColor: Colors.red.withOpacity(0.38), disabledBackgroundColor: Colors.red.withOpacity(0.12),
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(20), // Tugma shakli
                                                side: const BorderSide(color: Colors.black), // Tugma chegarasi
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: const Text(
                                              "Rent",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
