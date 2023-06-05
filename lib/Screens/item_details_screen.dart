import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mothering_app/CustomWidgets/MotheringAppBar_1.dart';
import 'package:mothering_app/CustomWidgets/motheringAppBarDrawer.dart';
import 'package:dotted_border/dotted_border.dart';

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

  const ItemDetailScreen({
    required this.deprecatedPrice,
    required this.itemPrice,
    required this.pincode,
    required this.itemName,
    required this.brandName,
    required this.imagePath,
    required this.deliveryDate,
    required this.discountPercentage,
    required this.onPressed,
  });

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.MMMEd().format(widget.deliveryDate);
    List<bool> isSelected = [false, false, false, false, false];

    return Scaffold(
      backgroundColor: Colors.grey,
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
                      padding: EdgeInsets.all(00.0),
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
                        padding: EdgeInsets.all(4.0),
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
                        color: Color.fromRGBO(124, 219, 253, 1),
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
                padding: EdgeInsets.all(8.0),
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
                    Row(
                      children: const [
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
                            style: TextStyle(fontWeight: FontWeight.bold),
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
                            style: TextStyle(
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
                                border:
                                    Border.all(color: Colors.indigo, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.card_giftcard,
                              size: 24,
                              color: Colors.indigo,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Gift Wrap',
                            style: TextStyle(
                              color: Colors.indigo,
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
                                border:
                                    Border.all(color: Colors.indigo, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.monetization_on,
                              size: 24,
                              color: Colors.indigo,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'COD Available',
                            style: TextStyle(
                              color: Colors.indigo,
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
                                border:
                                    Border.all(color: Colors.indigo, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Icon(
                              Icons.arrow_downward,
                              size: 24,
                              color: Colors.indigo,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '10 Days Return',
                            style: TextStyle(
                              color: Colors.indigo,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
