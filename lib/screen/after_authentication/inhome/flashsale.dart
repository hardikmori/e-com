import 'package:e_com_app/utils/colors.dart';
import 'package:flutter/material.dart';

class FlashSale extends StatefulWidget {
  const FlashSale({super.key});

  @override
  State<FlashSale> createState() => _FlashSaleState();
}

class _FlashSaleState extends State<FlashSale> {
  List recomendedproduct = [
    {'images': 'assets/images/nikeblue.png'},
    {'images': 'assets/images/ms-nikeair.png'},
    {'images': 'assets/images/nikewhiteper.png'},
    {'images': 'assets/images/nikered.png'}
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        title: Text(
          'Super Flash Sale',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.05),
        ),
        actions: [
          Icon(
            Icons.search,
            weight: width * 0.5,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                  width: width,
                  height: height * 0.27,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Promotion.png'),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Super Flash Sale\n50% Off",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              height: height * 0.05,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child: Text(
                                '08',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.05),
                              )),
                            ),
                            Text(
                              ' : ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: width * 0.05),
                            ),
                            Container(
                              height: height * 0.05,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child: Text(
                                '34',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.05),
                              )),
                            ),
                            Text(
                              ' : ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: width * 0.05),
                            ),
                            Container(
                              height: height * 0.05,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                  child: Text(
                                '52',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.05),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: recomendedproduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 270,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      recomendedproduct[index]['images'],
                    ),
                    const Text(
                      'Nike Air Max 270\n React Eng',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          weight: width * 0.001,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          weight: width * 0.001,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.yellow,
                          weight: width * 0.001,
                        ),
                        Icon(
                          Icons.star,
                          color: AppColors.gray,
                          weight: width * 0.001,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      '\$299,43',
                      style: TextStyle(color: AppColors.blue),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        Text('\$534,33   ',
                            style: TextStyle(
                                color: AppColors.gray, fontSize: width * 0.03)),
                        Text('24% Off',
                            style: TextStyle(
                                color: AppColors.red,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
