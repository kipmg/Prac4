import 'package:flutter/material.dart';
class HomePaage extends StatefulWidget {
  const HomePaage({super.key});

  @override
  State<HomePaage> createState() => _HomePaageState();
}
class _HomePaageState extends State<HomePaage> {
late PageController _pageController; int totalPage = 4;
void onScroll() {
  print('test scroll');
}
@override
void initstate()
{
_pageController = PageController(
initialPage: 0, )..addListener(onScroll);
super.initState();
}
@override
Widget build(BuildContext context) { return Scaffold( body: PageView( controller: _pageController,
    children: [
    makePageWigdet(
    page: 1, imagePath: 'assets/images/1.jpg',
    title: "Горы",
    descritption:
    'Горы -это целый мир, который проникает в тебя и навсегда и изм makePageWigdet'),
    makePageWigdet(
    page: 2,
    imagePath: 'assets/images/1.png', title: "Башня",
    descritption:
    'Старая телевизионная башня Токио. Токийцы, любя называют свон'),
  makePageWigdet(
  page: 3,
  imagePath: 'assets/images/1.png', title: "Еда", descritption:
  'Гамбургер или просто бургер давно стал самым популярным блюдо makePageWigdet'),
  makePageWigdet(
  page: 4,
  imagePath: 'assets/images/1.png',
  title: "История",
  descritption:
  'Позднее персонажа назвали Минч Йодой. В сценарии он описыва'),
  ],
), // PageView
  );
}// Scaffold
Widget makePageWigdet({imagePath, title, descritption, page}) {
  int totalPage = 4;
  return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ), // DecorationImage
      ), //
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
            0.3,
            0.9
          ], colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2)
          ]), // LinearGradient
        ), // BoxDecoration
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ), // Textstyle
                  ), // Text
                  Text(
                    '/$totalPage',
                    style: const TextStyle(color: Colors.white, fontSize: 16,
                    ), // TextStyle
                  ), // Text
                ],
              ), // Row
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ), // TextStyle
                    ),
                    const SizedBox(
                      height: 20,
                    ), // SizedBox
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ), // Icon
                        ), // Container
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ), // Icon
                        ), // Container
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ), // Icon
                        ), // Container
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star, color: Colors.yellow,
                            size: 16,
                          ), // Icon
                        ), // Container
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 16,
                          ), // Icon
                        ), // Container
                        const Text(
                          '4.9', style: TextStyle(color: Colors.white70),
                        ), // Text
                        const Text(
                          '(5300)',
                          style: TextStyle(color:
                          Colors.white38, fontSize: 12),
                        ), // Text
                      ],
                    ), // Row
                    const SizedBox(
                      height: 20,
                    ), // SizedBox
                    Padding(
                      padding: const EdgeInsets.only(right: 50), child: Text(
                      descritption,
                      style: TextStyle(
                          color: Colors.white.withOpacity(.7),
                          height: 1.9, fontSize: 16), // TextStyle
                    ), // Text
                    ),
                    const SizedBox(
                      height: 20,
                    ), // SizedBox
                    const Text(
                      'ПРОДОЛЖЕНИЕ',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline), // TextStyle
                    ), // Text
                    const SizedBox(
                      height: 30,
                    ), // SizedBox
                  ],
                ), // Column
              ) // Expanded
            ],
          ), // Column
        ), // Padding
      )
  );
}
}
