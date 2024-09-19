import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  final String title;

  final Function() onTap;
  const MoreButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  "More",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 15),
                ),
                SizedBox(width: 4),
                Icon(Icons.arrow_forward_ios, size: 12, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
