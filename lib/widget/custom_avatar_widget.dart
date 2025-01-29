import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl;
  final double size;

  const AvatarWidget({
    Key? key,
    required this.imageUrl,
    this.size = 80.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundColor: Colors.blue.shade100,
      child: CircleAvatar(
        radius: (size / 2) - 4,
        backgroundColor: Colors.white,
        child: Image.asset(
          imageUrl,
          width: size - 16,
          height: size - 16,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}




// class AvatarWidget extends StatelessWidget {
//   final String imageUrl;
//   final double size;
//
//   const AvatarWidget({
//     Key? key,
//     required this.imageUrl,
//     this.size = 80.0,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       radius: size / 2,
//       backgroundColor: Colors.blue.shade100,
//       child: CircleAvatar(
//         radius: (size / 2) - 4,
//         backgroundColor: Colors.white,
//         child: CircleAvatar(
//           radius: (size / 2) - 8,
//           backgroundImage: NetworkImage(imageUrl),
//         ),
//       ),
//     );
//   }
// }