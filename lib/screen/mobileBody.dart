import 'package:flutter/material.dart';
// ignore: file_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/screen%20components/bulletList.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../contants.dart';
import '../screen components/cardTile.dart';
import '../screen components/infoTile.dart';
import '../screen components/projectDisplay_tile.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  // carousel active index
  int activeIndex = 0;

  // carousel controller
  final sliderController = CarouselController();

// url launcher paths
  final Uri fbLaunch =
      Uri(scheme: 'https', host: 'www.facebook.com', path: '/sudip.raaz21');

  final Uri instaLaunch =
      Uri(scheme: 'https', host: 'www.instagram.com', path: '/sudeep_raaz/');

  final Uri linkedin = Uri(
      scheme: 'https',
      host: 'www.linkedin.com',
      path: '/in/sudip-raj-adhikari-3276ba1a7/');

// animate to this location
  var home_page = GlobalKey();

  var service_page = GlobalKey();

  var skill_page = GlobalKey();

  var project_page = GlobalKey();

  var contact_page = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    // final currentHeight = MediaQuery.of(context).size.height;

    Color sameColor = (const Color.fromARGB(98, 255, 255, 255));

    // scroll to the spec
    Future scrollToItem(page) async {
      final context = page.currentContext!;

      await Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1));
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                // color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
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
                    ],
                  ),
                ),
              ),
              Container(
                height: 745,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(68, 138, 255, 1),
                    image: DecorationImage(
                        image: AssetImage('assets/myself.png'),
                        fit: BoxFit.fitHeight)),
              ),

              // Personal details section **************************************************************
              Container(
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 232, 232),
                    borderRadius: BorderRadius.circular(15)),
                width: currentWidth / 1.2,
                child: Column(children: [
                  // const SizedBox(width: 50),
                  Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
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

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: currentWidth / 2.2,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            // 'I am a Software Engineer from University of Bedfordshire.\n And I can develop software as per customer\'s requirement.'),
                            'I am still a student, studying at college. Had my own projects, coded in several languages like Java, Python, C# .NET and Flutter. Apart from coding, I enjoy reading a learning new thing and understanding the working principle of different things or a nice evening out with friends.',
                            maxLines: 11,
                            textScaleFactor: 1.2,
                            textWidthBasis: TextWidthBasis.parent,
                          ),
                        ),
                      ),
                      const Text(
                        "Sudip Raj Adhikari",
                        style: TextStyle(
                          fontFamily: 'Signature',
                          fontSize: 30,
                        ),
                      )
                    ],
                  )
                ]),
              ),

              // service section ******************************************************************************************
              Padding(
                key: service_page,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: const Text(
                  'Services',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'As Software Engineer and having experience in multiple Programming Languages. I provide following services.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // list of services offered **********************************************************************************
              // Text(currentWidth
              //     .toString()), //current width at 100% zoom level 1536
              SizedBox(
                // constraints: BoxConstraints(maxHeight: 275, maxWidth: 200),
                // width: 200,
                // color: Colors.yellowAccent,
                height: 275 * 3.7,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60.0, vertical: 12),
                      child: CardTile(
                          icondata: services[index]['iconcode'],
                          heading: services[index]['title'],
                          description: services[index]['description']),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: currentWidth / 50,
                    );
                  },
                  itemCount: services.length,
                ),
              ),

              //about me and skill section ***********************************************************************************
              Padding(
                key: skill_page,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
                child: Column(
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
                        'I am always ready for new challenges and have a good level of commitment for my services being experienced with all stages of the development cycle for dynamic projects',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                          itemBuilder: (context, index) =>
                              BulletList(text: aboutMe[index]),
                          itemCount: aboutMe.length),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text(
                        'Skills',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Text(
                        'I have develop various types of projects in different languages. \nHere are few technologies I’ve been working with recently:',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('Flutter',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18)),
                          Text('Python',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18)),
                          Text('Java',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18)),
                          Text('C#',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 18)),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // My  and project display ***************************************************************
              Padding(
                key: project_page,
                padding: const EdgeInsets.all(12.0),
                child: const Text(
                  "My Services",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Here are some of my choosen Projects that, I have developed ',
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
                                aspectRatio: 16 / 9,
                                autoPlay: true,
                                pageSnapping: true,
                                autoPlayAnimationDuration:
                                    const Duration(seconds: 1, milliseconds: 2),
                                autoPlayInterval: const Duration(
                                    seconds: 3, milliseconds: 80),
                                enlargeCenterPage: true,
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.height,
                                viewportFraction: 0.76,
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
                  ],
                ),
              ),

              Padding(
                key: contact_page,
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    const Text(
                      'Contact Me',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
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

              Container(
                width: currentWidth,
                height: 150,
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
                  const Text('Contacts :     ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                  IconButton(
                      onPressed: () {
                        openWebPage(fbLaunch);
                      },
                      icon: const Icon(FontAwesomeIcons.facebook)),
                  IconButton(
                      onPressed: () {
                        openWebPage(instaLaunch);
                      },
                      icon: const Icon(FontAwesomeIcons.instagram)),
                  IconButton(
                      onPressed: () {
                        openWebPage(linkedin);
                      },
                      icon: const Icon(FontAwesomeIcons.linkedin)),
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
        effect: const SlideEffect(
          activeDotColor: Color.fromARGB(255, 96, 162, 255),
        ),
      );

  animateToIndex(int index) => sliderController.animateToPage(index);

  void openWebPage(url) async {
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      // print('error launching url');
    }
  }
}
