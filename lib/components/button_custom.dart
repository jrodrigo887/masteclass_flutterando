import 'package:flutter/material.dart';

class ButtomCustom extends StatefulWidget {
  const ButtomCustom(
      {Key? key,
      required this.onTap,
      required this.title,
      this.image = '',
      this.icon})
      : super(key: key);

  final VoidCallback onTap;
  final String title;
  final Icon? icon;
  final String image;

  @override
  State<ButtomCustom> createState() => _ButtomCustomState();
}

class _ButtomCustomState extends State<ButtomCustom> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.circular(50),
          color: isHover
              ? const Color.fromARGB(85, 255, 255, 255)
              : Colors.transparent,
          shape: BoxShape.rectangle),
      child: InkWell(
        enableFeedback: true,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        onTap: widget.onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: widget.image.isNotEmpty
                  ? Image.asset(
                      widget.image,
                      width: 24.0,
                    )
                  : const Icon(Icons.chat_bubble),
            ),
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
