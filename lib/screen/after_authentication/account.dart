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
            body: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: AppColors.blue,
                    ),
                     Text(
                      'Profile',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: height*0.02),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.payment_sharp,
                      color: AppColors.blue,
                    ),
                     Text(
                      'Order',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: height*0.02),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColors.blue,
                    ),
                     Text(
                      'Address',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: height*0.02),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.payment,
                      color: AppColors.blue,
                    ),
                     Text(
                      'Payment',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: height*0.02),
                    )
                  ],
                ),

              ],
            )));
  }
}