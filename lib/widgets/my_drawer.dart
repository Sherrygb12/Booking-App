// import 'package:flutter/material.dart';

// import '../constant/colors.dart';
// import '../main.dart';

// class AppDrawer extends StatefulWidget {
//   const AppDrawer({super.key});

//   @override
//   State<AppDrawer> createState() => _AppDrawerState();
// }

// class _AppDrawerState extends State<AppDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       width: w * 0.6,
//       child: ListView(
//         children: [
//           SizedBox(
//             height: h * 0.035,
//           ),
//           Center(
//               child: Text(
//             "SHIFT HUB",
//             style: TextStyle(
//                 fontSize: 22,
//                 fontFamily: "PTSerif",
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.normal,
//                 color: AppColors.primarycolor),
//           )),
//           SizedBox(
//             height: h * 0.025,
//           ),
//           ListTile(
//             onTap: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => HomePage()));
//             },
//             leading: Image.asset(
//               "assets/icons/home.png",
//               color: Colors.black87,
//             ),
//             title: Text("Home"),
//           ),
//           ListTile(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => AvailabilityPage()));
//             },
//             leading: Image.asset(
//               "assets/icons/avaiability.png",
//               color: Colors.black87,
//             ),
//             title: Text("Avaiability"),
//           ),
//           ListTile(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => PrivacyPage()));
//             },
//             leading: Image.asset(
//               "assets/icons/privacy.png",
//               color: Colors.black87,
//             ),
//             title: Text("Privacy & Policy"),
//           ),
//           ListTile(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => ContactUsPage()));
//             },
//             leading: Image.asset(
//               "assets/icons/contact.png",
//               color: Colors.black87,
//             ),
//             title: Text("Contacts"),
//           ),
//           ListTile(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => LoginPage()));
//             },
//             leading: Image.asset(
//               "assets/icons/logout.png",
//               color: Colors.black87,
//             ),
//             title: Text("Logout"),
//           ),
//         ],
//       ),
//     );
//   }
// }
