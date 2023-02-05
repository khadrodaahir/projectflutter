import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rikaab6/models/data.dart';
import 'package:rikaab6/screens/details_page.dart';

class categorypage extends StatelessWidget {
  const categorypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
            size: 30,
          ),
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.only(top: 10, right: 10),
            child: Stack(
              children: [
                Image.asset('assets/images/carts.png'),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue.shade200,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            height: 50,
            color: Colors.white,
            width: double.infinity,
            child: TextField(
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
                maxLines: 1,
                cursorColor: const Color(0xff151624),
                decoration: InputDecoration(
                  hintText: 'search for product here...',
                  hintStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                  filled: true,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.green)),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.green,
                      size: 25,
                    ),
                  ),
                )),
          ),
          Container(
            height: 250,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: listOfSubCategory.length,
                padding: const EdgeInsets.symmetric(vertical: 0),
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (listOfSubCategory[index].title == 'Suuq') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => categorypage()));
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(
                                  listOfSubCategory[index].image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          listOfSubCategory[index].title,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: const Text(
              'out of the day',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfelectronics.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Card(
                      elevation: 2,
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              height: 90,
                              width: double.infinity,
                              child: Image.asset(
                                listOfelectronics[index].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              listOfelectronics[index].name,
                              maxLines: 1,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: const Text(
              'dresess',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listOfdresses.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        elevation: 2,
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                height: 90,
                                width: double.infinity,
                                child: Image.asset(
                                  listOfdresses[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                listOfdresses[index].name,
                                maxLines: 1,
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 30,
          ),
        
        ]
        ),
      
    
        
          ),
          
        
        );
  }
}