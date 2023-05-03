import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/const.dart';

class SVG extends StatelessWidget {
  const SVG({super.key, required this.image, this.fit = BoxFit.cover});
  final String image;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      '$images/$image',
      fit: fit,
    );
  }
}
