//import 'package:e_com_app/screen/after_authentication/home.dart';
import 'package:e_com_app/screen/after_authentication/navbar.dart';
import 'package:e_com_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List category = [
    {'text': '6'},
    {'text': '6.5'},
    {'text': '7'},
    {'text': '7.5'},
    {'text': '8'},
    {'text': '8.5'},
    {'text': '9'},
    {'text': '9.5'},
    {'text': '10'},
    {'text': '10.5'},
    {'text': '11'},
    {'text': '11.5'},
    {'text': '12'},
    {'text': '12.5'},
    {'text': '13'},
    {'text': '13.5'},
  ];

  List selectcolor = [
    AppColors.blue,
    AppColors.gray,
    AppColors.red,
    AppColors.yellow,
    AppColors.black,
    AppColors.pink,
    AppColors.purple,
    AppColors.orange,
    AppColors.teal,
  ];

  List flashsale = [
    {
      'img': 'assets/images/fsnikeair.png',
      'text': 'FS-Nike Air\nMax 270 React...',
      'texts': "\$299,43"
    },
    {
      'img': 'assets/images/fsquilted.png',
      'text': 'FS-ike QUILTED\nMaxI CROS...',
      'texts': "\$299,43"
    },
    {
      'img': 'assets/images/ms-nikeair.png',
      'text': 'MS-Nike Air\nMaxI 270 React...',
      'texts': "\$299,43"
    },
    {
      'img': 'assets/images/fsnikeair.png',
      'text': 'FS-Nike Air\nMax 270 React...',
      'texts': "\$299,43"
    },
    {
      'img': 'assets/images/fsquilted.png',
      'text': 'S-Nike QUILTED\nMaxI CROS...',
      'texts': "\$299,43"
    },
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
                .push(MaterialPageRoute(builder: (context) => const NavBar()));
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text(
          'NIke Air Max 270 Rea...',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: width * 0.05),
        ),
        actions: [
          Icon(
            Icons.search,
            weight: width * 0.5,
          ),
          SizedBox(
            width: width * 0.02,
          ),
          const Icon(Icons.menu),
          SizedBox(
            width: width * 0.04,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/nikeredproduct.png',
                  width: width * 0.9,
                  height: height * 0.32,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NIke Air Zoom Pegasus 36 Miami',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.05),
                  ),
                  Icon(
                    Icons.favorite,
                    weight: width * 0.04,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                style: TextStyle(
                    color: AppColors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.05),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Select Size',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.04),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.07,
                child: ListView.separated(
                    itemCount: category.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                          width: width * 0.03,
                        ),
                    itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                                height: height * 0.07,
                                width: width * 0.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    border: Border.all(color: AppColors.blue)),
                                child: Center(
                                    child: Text(category[index]['text']))),
                          ],
                        )),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Select Color',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.04),
              ),
              SizedBox(
                height: height * 0.07,
                child: ListView.separated(
                    itemCount: selectcolor.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                          width: width * 0.03,
                        ),
                    itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              height: height * 0.07,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                color: selectcolor[index],
                                //border: Border.all(color: AppColors.blue)
                              ),
                            ),
                          ],
                        )),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Specification',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: width * 0.05),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Shown:'),
                  Text('Laser\nBlue\nAnthracite\nWatermelon\nwhite',
                      style: TextStyle(color: AppColors.gray))
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('style:'),
                  Text('CD0113-400', style: TextStyle(color: AppColors.gray))
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfart and a striking visual experience.',
                style: TextStyle(color: AppColors.gray),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Review Product',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.04,
                    ),
                  ),
                  Text('See More',
                      style: TextStyle(
                          color: AppColors.blue,
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Text('4.5 (5 Review)',
                      style: TextStyle(
                          color: AppColors.gray, fontSize: width * 0.03)),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.15,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/hardik.jpeg'),
                          fit: BoxFit.cover),
                      // borderRadius: BorderRadius.circular(100),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Column(
                    children: [
                      Text(
                        'Hardik Mori',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.05),
                      ),
                      SizedBox(
                        width: width * 0.3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                style: TextStyle(color: AppColors.gray),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Product Picture02.png'),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Image.asset('assets/images/Product Picture03.png'),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Image.asset('assets/images/Product Picture01.png'),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'You Might Also Like',
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: height * 0.26,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: flashsale.length,
                  separatorBuilder: (context, index) => SizedBox(
                    width: width * 0.06,
                  ),
                  itemBuilder: (context, index) => Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          flashsale[index]['img'],
                          height: height * 0.14,
                        ),
                        Text(
                          flashsale[index]['text'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          flashsale[index]['texts'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.blue),
                        ),
                        Row(
                          children: [
                            Text('\$534,33   ',
                                style: TextStyle(
                                    color: AppColors.gray,
                                    fontSize: width * 0.03)),
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
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
