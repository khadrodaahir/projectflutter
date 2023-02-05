import 'package:flutter/material.dart';
import 'package:rikaab6/models/data.dart';

class detailpage extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final double price;
  const detailpage(
      {super.key,
      required this.name,
      required this.image,
      required this.description,
      required this.price});

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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 350,
            width: double.infinity,
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              description,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('o ratings')
              ],
            ),
            trailing: const Text(
              'Bran new',
              style: const TextStyle(color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('\$' + price.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
        ],
      )),
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'BUY NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
