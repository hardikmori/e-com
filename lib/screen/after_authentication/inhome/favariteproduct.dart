import 'package:e_com_app/screen/after_authentication/home.dart';
import 'package:e_com_app/utils/colors.dart';
import 'package:flutter/material.dart';

class FavariteProduct extends StatefulWidget {
  const FavariteProduct({super.key});

  @override
  State<FavariteProduct> createState() => _FavariteProductState();
}

class _FavariteProductState extends State<FavariteProduct> {
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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Home()));
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text(
          'Favorite Product',
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
              GridView.builder(
                shrinkWrap: true,
                itemCount: recomendedproduct.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 270,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$534,33   ',
                            style: TextStyle(
                                color: AppColors.gray, fontSize: width * 0.03)),
                        Text('24% Off   ',
                            style: TextStyle(
                                color: AppColors.red,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.delete_outline,
                          color: AppColors.gray,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runAlignment: WrapAlignment.center,
                runSpacing: 8.0,
                crossAxisAlignment: WrapCrossAlignment.center,
                textDirection: TextDirection.rtl,
                verticalDirection: VerticalDirection.up,
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$534,33   ',
                            style: TextStyle(
                                color: AppColors.gray, fontSize: width * 0.03)),
                        Text('24% Off   ',
                            style: TextStyle(
                                color: AppColors.red,
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.delete_outline,
                          color: AppColors.gray,
                        )
                      ],
                    )
                  ],
                ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
