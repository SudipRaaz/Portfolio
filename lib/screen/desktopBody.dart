import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screen%20components/bulletList.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../contants.dart';
import '../screen components/cardTile.dart';
import '../screen components/infoTile.dart';
import '../screen components/projectDisplay_tile.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  int activeIndex = 0;

  final sliderController = CarouselController();

  final Uri fbLaunch =
      Uri(scheme: 'https', host: 'www.facebook.com', path: '/sudip.raaz21');

  final Uri instaLaunch =
      Uri(scheme: 'https', host: 'www.instagram.com', path: '/sudeep_raaz/');
  final Uri linkedin = Uri(
      scheme: 'https',
      host: 'www.linkedin.com',
      path: '/in/sudip-raj-adhikari-3276ba1a7/');

  var home_page = GlobalKey();
  var service_page = GlobalKey();
  var skill_page = GlobalKey();
  var project_page = GlobalKey();
  var contact_page = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    Color sameColor = (Color.fromARGB(98, 255, 255, 255));

    // scroll to the spec
    Future scrollToItem(page) async {
      final context = page.currentContext!;

      await Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Sudip\'s portfolio Desktop',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    // style:
                    child: Text("Home"),
                    onPressed: () {
                      scrollToItem(home_page);
                    }),
                ElevatedButton(
                    child: Text("Services"),
                    onPressed: () {
                      scrollToItem(service_page);
                    }),
                ElevatedButton(
                    child: Text(
                      "Skills",
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      scrollToItem(skill_page);
                    }),
                ElevatedButton(
                    child: Text("Projects"),
                    onPressed: () {
                      scrollToItem(project_page);
                    }),
                ElevatedButton(
                    child: Text("Contact"),
                    onPressed: () {
                      scrollToItem(contact_page);
                    }),
                SizedBox(
                  width: 20,
                )
              ],
            ))
          ],
        ),
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                key: home_page,
                children: [
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 150),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Hello, I am ',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Sudip Raj Adhikari',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 100,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 745,
                    // width: 500,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        image: DecorationImage(
                            image: AssetImage('myself.png'),
                            fit: BoxFit.fitHeight)),
                  )),
                ],
              ),

              // Personal details section **************************************************************
              Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 232, 232, 232),
                    borderRadius: BorderRadius.circular(15)),
                width: currentWidth / 1.2,
                child: Row(children: [
                  const SizedBox(width: 50),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Personal Details',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            Text(
                                '---------------------------------------------------'),
                            Text('Email: happysudip440@gmail.com'),
                            Text('Language: Nepali, Hindi, English'),
                            Text('Nationality: Neplease')
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('I am a developer'),
                      Text("My description"),
                      Text(
                          "Digital signature Name mmmmmmmmmmmmmmmmmmmmmmmmmmmm")
                    ],
                  )
                ]),
              ),

              // service section ******************************************************************************************
              Padding(
                key: service_page,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Services',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Obviously I\'m a Web Designer. Experienced with all stages of the development cycle for dynamic web projects.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // list of services offered **********************************************************************************
              // Text(currentWidth.toString()), //current width at 100% zoom level 1536
              SizedBox(
                width: currentWidth / 1.46,
                // color: Colors.yellowAccent,
                height: 275,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return CardTile(
                        icondata: services[index]['iconcode'],
                        heading: services[index]['title'],
                        description: services[index]['description']);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 50,
                    );
                  },
                  itemCount: services.length,
                ),
              ),

              //about me and skill section ***********************************************************************************
              Padding(
                key: skill_page,
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 70),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 25),
                            child: Text(
                              'About me',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'I am always ready for new challenges and have a good level of commitment for my s. I am always ready for new challenges and have a good level of commitment for my s.',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            child: ListView.builder(
                                itemBuilder: (context, index) =>
                                    BulletList(text: aboutMe[1]),
                                itemCount: aboutMe.length),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Text(
                            'Skills',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Text(
                            'Obviously I\'m a Web Designer. Experienced with all stages of the development cycle for dynamic web projects.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Text('Skills'),
                        Text('Skills'),
                        Text('Skills'),
                        Text('Skills'),
                        Text('Skills'),
                        Text('Skills'),
                      ],
                    ))
                  ],
                ),
              ),

              // My  and project display ***************************************************************
              Padding(
                key: project_page,
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "My Services",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Obviously I\'m a Web Designer. Experienced with all stages of the development cycle for dynamic web projects.',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              // Projects carousel slider *************************************************************************************
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        CarouselSlider.builder(
                            carouselController: sliderController,
                            itemBuilder: (context, index, realIndex) {
                              final image = project_images[index];
                              return buildImage(image);
                            },
                            itemCount: project_images.length,
                            options: CarouselOptions(
                                height: 312,
                                autoPlay: true,
                                pageSnapping: true,
                                autoPlayAnimationDuration:
                                    const Duration(seconds: 1, milliseconds: 2),
                                autoPlayInterval: const Duration(
                                    seconds: 3, milliseconds: 80),
                                enlargeCenterPage: true,
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.height,
                                viewportFraction: 0.25,
                                onPageChanged: (index, change) {
                                  setState(() {
                                    activeIndex = index;
                                  });
                                })),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: SizedBox(
                            child: buildIndicator(),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      left: 60,
                      top: 145,
                      child: ElevatedButton.icon(
                          onPressed: () {
                            sliderController.previousPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.linear);
                          },
                          icon: const Icon(Icons.arrow_left),
                          label: const Text('previous')),
                    ),
                    Positioned(
                      right: 60,
                      top: 145,
                      child: ElevatedButton.icon(
                          onPressed: () {
                            sliderController.nextPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.linear);
                          },
                          icon: const Icon(Icons.arrow_right),
                          label: const Text('Next')),
                    ),
                  ],
                ),
              ),

              Padding(
                key: contact_page,
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text(
                            'Contact Me',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          InfoTile(
                            iconName: Icons.person,
                            heading: 'Name',
                            subHeading: 'Sudip Raj adhikari',
                          ),
                          InfoTile(
                            iconName: Icons.location_city_rounded,
                            heading: 'Address',
                            subHeading: 'Kathmandu, Nepal',
                          ),
                          InfoTile(
                            iconName: Icons.email_rounded,
                            heading: 'Email',
                            subHeading: 'happysudip440@gmail.com',
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   child: Column(
                    //     children: const [
                    //       // Text(
                    //       //   'Message Me',
                    //       //   style:
                    //       //       TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    //       //   textAlign: TextAlign.center,
                    //       // ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
              Container(
                width: currentWidth,
                height: 200,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: sameColor),
                      bottom: const BorderSide(color: Colors.blue)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [sameColor, Colors.blue]),
                ),
              ),
              Container(
                width: currentWidth,
                height: 50,
                decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.blue)),
                  color: Colors.blue,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('Contacts :     ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                  IconButton(
                      onPressed: () {
                        openWebPage(fbLaunch);
                      },
                      icon: Icon(FontAwesomeIcons.facebook)),
                  IconButton(
                      onPressed: () {
                        openWebPage(instaLaunch);
                      },
                      icon: Icon(FontAwesomeIcons.instagram)),
                  IconButton(
                      onPressed: () {
                        openWebPage(linkedin);
                      },
                      icon: Icon(FontAwesomeIcons.linkedin)),
                ]),
              )
            ],
          )),
    );
  }

  Widget buildImage(String image) {
    return ProjectDisplay_tile(imgSource: image);
  }

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: project_images.length,
        onDotClicked: animateToIndex,
        effect: SlideEffect(
          activeDotColor: Color.fromARGB(255, 96, 162, 255),
        ),
      );

  animateToIndex(int index) => sliderController.animateToPage(index);

  void openWebPage(url) async {
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      print('error launching url');
    }
  }
}
