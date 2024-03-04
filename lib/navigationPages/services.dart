import 'package:flutter/material.dart';

import '../main.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  List<String> imagePaths = [
    'assets/images/SPA 1.jpg',
    'assets/images/SPA 2.jpg',
    'assets/images/SPA 3.jpg',
    'assets/images/SPA 4.jpg',
    'assets/images/SPA 5.jpg',
    'assets/images/SPA 6.jpg',
    'assets/images/SPA 7.jpg',
    'assets/images/SPA 8.jpg',
    'assets/images/SPA 9.jpg',
    'assets/images/SPA 10.jpg',
    'assets/images/SPA 11.jpg',
    'assets/images/SPA 12.jpg',
  ];

  List<String> title = [
    'Available mentoring Sessions',
    'Hot Stone Therapy Bession',
    'Deep Tissue Massage',
    'Detadlying Green Clay Wrap',
    'Balthese Traditional Massage',
    'Herbal Compress Therapy',
    'Ruviaitzing Facial Treatment',
    'Invigorating Sart Scruti',
    'Swedish Relaxation Massege'
  ];
  List<String> subTitile = [
    'Soothing aromatherapy massage with essential pils',
    'Warm stone massage for deep relaxation and muscle relief',
    'Intense massage targeting deep muscle and tissue layers',
    'Green clay wrap for body detox and skin rejuvenation',
    'Traditional Balinese massage with stretching and acupressure',
    'Warm herbal compresses for muscle relief and relaxation',
    'Luxurious facial to hydrate and brighten skin',
    'Salt scrub for exfoliation and skin revitalization',
    'Gentle massage for full-body relaxation and tension relief',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.02,
            ),
            Text(
              "Available mentoring Sessions",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[400]),
            ),
            Text(
                "Id interdum velit laoreet id donec. Amet volutpat consequat mauris nunc congue nisi vitse",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12)),
            SizedBox(
              height: h * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    // Calculate the index for selecting the image
                    int imageIndex = index % imagePaths.length;
                    int titleIndex = index % title.length;
                    int subTitleIndex = index % subTitile.length;
                    return ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(imagePaths[imageIndex])),
                      title: Text(title[titleIndex],
                          style: TextStyle(
                              color: Colors.purple[400], fontSize: 15)),
                      subtitle: Text(subTitile[subTitleIndex],
                          style: TextStyle(fontSize: 14)),
                      trailing: Container(
                          height: h * 0.045,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.purple[100]),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Learn More',
                                style: TextStyle(color: Colors.black),
                              ))),
                    );
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
