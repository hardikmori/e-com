import 'package:e_com_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Account'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: AppColors.blue,
                        size: width * 0.09,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.payment_sharp,
                        color: AppColors.blue,
                        size: width * 0.09,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Text(
                        'Order',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.blue,
                        size: width * 0.09,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.payment,
                        color: AppColors.blue,
                        size: width * 0.09,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Text(
                        'Payment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * 0.02),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}
