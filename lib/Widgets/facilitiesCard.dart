import 'package:flutter/material.dart';


class FacilitiesContainer extends StatelessWidget {
  final IconData iconcard;
  final String Textcard;
  const FacilitiesContainer({
    Key? key,
    required this.iconcard,
    required this.Textcard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          color: Colors.blue.shade50, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Icon(
            iconcard,
            color: Colors.grey.shade700,
            size: 35,
          ),
          Text(Textcard)
        ],
      ),
    );
  }
}