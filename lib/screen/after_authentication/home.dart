import 'package:e_com_app/screen/after_authentication/inhome/flashsale.dart';
import 'package:e_com_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List category = [
    {'icon': Icons.man, 'text': 'Man Shirt'},
    {'icon': Icons.account_balance_wallet, 'text': 'Dress'},
    {'icon': Icons.manage_accounts_outlined, 'text': "Man Work\nEquipment"},
    {'icon': Icons.badge, 'text': 'Woman Bag'},
    {'icon': Icons.woman, 'text': 'Woman Shirt'},
    {'icon': Icons.man, 'text': 'Man '},
  ];

  List flashsale = [
    {
      'img': 'assets/images/fsnikeair.png',
      'text': 'FS-Nike Air\nMax 270 React...',
      'texts': "\$299,43"
    },
    {
      'img': 'assets/images/fsquilted.png',
      'text': 'FS-Nike QUILTED\nMaxI CROS...',
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
      'text': 'FS-Nike QUILTED\nMaxI CROS...',
      'texts': "\$299,43"
    },
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: width * 0.8,
                    child: SearchBar(
                      onTap: () {},
                      onChanged: (_) {},
                      leading: const Icon(Icons.search),
                    ),
                  ),
                  const Icon(Icons.favorite),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  const Icon(Icons.notifications),
                ],
              ),
              SizedBox(
                height: height * 0.02,
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
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'More Category',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: AppColors.blue),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.12,
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
                              child: Icon(
                                category[index]["icon"],
                                color: AppColors.blue,
                              ),
                            ),
                            Text(category[index]['text'])
                          ],
                        )),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Flash Sale',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const FlashSale())),
                      child: Text(
                        'See More',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: AppColors.blue),
                      )),
                ],
              ),
              SizedBox(
                height: height * 0.02,
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
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Mega Sale',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: AppColors.blue),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.02,
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
              Container(
                  width: width,
                  height: height * 0.27,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/recomended.png'),
                          fit: BoxFit.fill)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Recomended\nProduct",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'We recommend the best for you',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: height * 0.02,
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
