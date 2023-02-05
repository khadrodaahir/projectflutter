import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rikaab6/screens/details_page.dart';

import '../models/data.dart';
import 'category_page.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset(
            'assets/images/hamburger.png',
            width: 20,
            height: 20,
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/giftbox.png',
            width: 25,
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 6),
            child: Text(
              '0  pts ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              color: const Color(0xFF121212),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 60),
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/rikaab.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: listOfCategory.length,
                padding: const EdgeInsets.symmetric(vertical: 0),
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (listOfCategory[index].title == 'Suuq') {
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
                                  listOfCategory[index].image,
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
                          listOfCategory[index].title,
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
                  final electronics = listOfelectronics[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => detailpage(
                                name: electronics.name,
                                image: electronics.image,
                                description: electronics.description,
                                price: electronics.price,
                              )));
                    },
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
                  final dresses = listOfdresses[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => detailpage(
                                name: dresses.name,
                                image: dresses.image,
                                description: dresses.description,
                                price: dresses.price,
                              )));
                    },
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
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('home'),
          ),
        ],
      ),
    );
  }
}
