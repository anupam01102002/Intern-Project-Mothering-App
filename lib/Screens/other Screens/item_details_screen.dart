import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mothering_app/CustomWidgets/productcard_2.dart';
import 'package:mothering_app/CustomWidgets/subtitle.dart';

class ItemDetailScreen extends StatefulWidget {
  final String brandName;
  final DateTime deliveryDate;
  final String itemName;
  final String imagePath;
  final double itemPrice;
  final int discountPercentage;
  final int pincode;
  final double deprecatedPrice;
  final VoidCallback onPressed;
  final List<String> productSpecifications;

  const ItemDetailScreen(
      {required this.deprecatedPrice,
      required this.itemPrice,
      required this.pincode,
      required this.itemName,
      required this.brandName,
      required this.imagePath,
      required this.deliveryDate,
      required this.productSpecifications,
      required this.discountPercentage,
      required this.onPressed});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.MMMEd().format(widget.deliveryDate);
    List<bool> isSelected = [false, false, false, false, false];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
      appBar: MotheringAppBar_1(),
      drawer: MotheringAppBarDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(00.0),
                      child: Image.asset(
                        widget.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.27 * 0.12,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '${widget.discountPercentage}' + '% OFF',
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.0,
                    right: 10.0,
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.favorite_border,
                          size: 18,
                        ),
                        alignment: Alignment.center,
                        color: const Color.fromRGBO(124, 219, 253, 1),
                        onPressed: () {
                          // Add your favourite button functionality here
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemName,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          'Rs. ' + '${widget.itemPrice}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '  ' + '${widget.deprecatedPrice}',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(137, 137, 137, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      children: [
                        Text(
                          'MRP inccl. all taxes; Add’l charges may apply on descounted price',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(137, 137, 137, 1),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Coupon Code Container
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.label,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text('Apply Coupan Code'),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        radius: const Radius.circular(0),
                                        padding: const EdgeInsets.all(0),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(0)),
                                          child: Container(
                                            width: 50,
                                            height: 15,
                                            decoration: const BoxDecoration(
                                              color: Colors.cyan,
                                            ),
                                            child: const Center(
                                              child: Text(
                                                'FCDIWAII',
                                                style: TextStyle(fontSize: 11),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text('Flat 35% Off* T&C'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          // Add your button's onPressed action here
                        },
                        child: const Text('APPLY'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Delivery Details Container
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.local_shipping_outlined,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Delivery Pincode'),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            '${widget.pincode}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.check_box_outlined,
                            size: 24,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Get it by ',
                            style: TextStyle(color: Colors.green),
                          ),
                          Text(
                            '${formattedDate}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Initiatives section
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 124, 168, 1),
                                    width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.card_giftcard,
                              size: 24,
                              color: Color.fromRGBO(0, 124, 168, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Gift Wrap',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 124, 168, 1),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 124, 168, 1),
                                    width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.monetization_on,
                              size: 24,
                              color: Color.fromRGBO(0, 124, 168, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'COD Available',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 124, 168, 1),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromRGBO(0, 124, 168, 1),
                                    width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.arrow_downward,
                              size: 24,
                              color: Color.fromRGBO(0, 124, 168, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '10 Days Return',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 124, 168, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Product Information Section
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 8.0,
                        left: 16,
                        bottom: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PRODUCT INFORMATION',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Specifications',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Container(
                        height:
                            22 * widget.productSpecifications.length.toDouble(),
                        child: ListView.builder(
                          itemCount: widget.productSpecifications.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 20,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    size: 8,
                                    color: Color.fromRGBO(0, 124, 168, 1),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.productSpecifications[index],
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const Subtitle(
                      textColor: Color.fromRGBO(124, 218, 252, 1),
                      containerHeight: 32,
                      containerWidth: 16,
                      enterText: 'YOU MAY ALSO LIKE',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, bottom: 10),
                      child: Container(
                        width: double.infinity,
                        height: 2,
                        color: const Color.fromRGBO(124, 218, 252, 1),
                      ),
                    ),
                    Row(
                      children: [
                        ProductCard_2(
                          borderColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemDetailScreen(
                                    productSpecifications: const [
                                      'Brand - Babyhug',
                                      'Type - Sweater Set',
                                      'Fabric - knit',
                                      'Sleeves - Full',
                                    ],
                                    pincode: 362112,
                                    onPressed: () {},
                                    deprecatedPrice: 200,
                                    itemPrice: 200,
                                    itemName: 'Baby Sweater',
                                    brandName: 'brandName',
                                    imagePath: 'assets/images/Cloth_1.png',
                                    deliveryDate: DateTime.now(),
                                    discountPercentage: 37),
                              ),
                            );
                          },
                          deprecatedPrice: 200,
                          itemPrice: 200,
                          itemName: 'Baby Sweater',
                          brandName: 'brandName',
                          imagePath: 'assets/images/Cloth_1.png',
                          deliveryDate: DateTime.now(),
                          discountPercentage: 37,
                        ),
                        ProductCard_2(
                          borderColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemDetailScreen(
                                    productSpecifications: const [
                                      'Brand - Babyhug',
                                      'Type - Sweater Set',
                                      'Fabric - knit',
                                      'Sleeves - Full',
                                    ],
                                    pincode: 362112,
                                    onPressed: () {},
                                    deprecatedPrice: 200,
                                    itemPrice: 200,
                                    itemName: 'Baby Sweater',
                                    brandName: 'brandName',
                                    imagePath: 'assets/images/Cloth_1.png',
                                    deliveryDate: DateTime.now(),
                                    discountPercentage: 37),
                              ),
                            );
                          },
                          deprecatedPrice: 200,
                          itemPrice: 200,
                          itemName: 'Baby Sweater',
                          brandName: 'brandName',
                          imagePath: 'assets/images/Cloth_1.png',
                          deliveryDate: DateTime.now(),
                          discountPercentage: 37,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
