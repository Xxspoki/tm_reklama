// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

final List slidingText = [
  'sdfg!\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n',
  'sdfg!\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\nasdjk ajksdfjkl asjdfjkasd asdjghsadfjkasfd\n',
];

class SettingSlidingElement extends StatefulWidget {
  const SettingSlidingElement(
      {Key? key, this.text, this.icon, required this.index})
      : super(key: key);

  final text;
  final icon;
  final index;

  @override
  State<SettingSlidingElement> createState() => _SettingSlidingElementState();
}

class _SettingSlidingElementState extends State<SettingSlidingElement> {
  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => {showCustomSlidingBar(context, mWidth, mHeight)},
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        widget.icon,
                        color: Colors.amber,
                        size: 34,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.text,
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 16)),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                maxRadius: 12,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.navigate_next,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> showCustomSlidingBar(
      BuildContext context, double mWidth, double mHeight) {
    return showModalBottomSheet(
      backgroundColor: Colors.white.withOpacity(0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            color: const Color.fromRGBO(0, 0, 0, 0.001),
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.95,
              builder: (_, controller) {
                return Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              controller: controller,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    slidingText[widget.index],
                                    style: TextStyle(),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context, false),
                        child: CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black54,
                          child: const Icon(
                            Icons.close,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
