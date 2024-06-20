import 'package:flutter/material.dart';

import '../../responsive.dart';
import 'side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
      drawer: const SideMenu(
        isUserSignedIn: false,
      ),
      body: Center(
        child: Container(
          // constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT SIDE
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(
                    isUserSignedIn: false,
                  ),
                ),
              // const SizedBox(width: defaultPadding),
              // RIGHT SIDE
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: children, // Children
                  ),
                ),
              ),
            ], // Children
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// import '../../responsive.dart';
// import 'side_menu.dart';
//
// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key, required this.children});
//
//   final List<Widget> children;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: Responsive.isDesktop(context)
//           ? null
//           : AppBar(
//               backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//               leading: Builder(
//                 builder: (context) => IconButton(
//                   icon: const Icon(Icons.menu),
//                   onPressed: () {
//                     Scaffold.of(context).openDrawer();
//                   },
//                 ),
//               ),
//             ),
//       drawer: const SideMenu(
//         isUserSignedIn: false,
//       ),
//       // ...
//       body: Center(
//         child: SingleChildScrollView(
//           // Add this
//           child: Container(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // LEFT SIDE
//                 if (Responsive.isDesktop(context))
//                   const Expanded(
//                     flex: 2,
//                     child: SideMenu(
//                       isUserSignedIn: false,
//                     ),
//                   ),
//                 // RIGHT SIDE
//                 Expanded(
//                   flex: 7,
//                   child: Column(
//                     children: children,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ), // And this
//       ),
//     );
//   }
// }
