import 'package:flutter/material.dart';

class DlsPopupMenuButton extends StatelessWidget {
  final TextEditingController? ctrl;
  final String title;
  final IconData icon;
  //final dynamic itemList;

  const DlsPopupMenuButton({
    Key? key,
    this.ctrl,
    required this.title,
    required this.icon,
    //required this.itemList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  )
                ]),
            height: 50,
            child: Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                PopupMenuButton(
                    onSelected: (value) {},
                    itemBuilder: (BuildContext bc) {
                      return [
                        const PopupMenuItem(
                            value: 'Item 01', child: Text("Item 01")),
                        const PopupMenuItem(
                            value: 'Item 01', child: Text("Item 01")),
                        const PopupMenuItem(
                            value: 'Item 01', child: Text("Item 01")),
                        const PopupMenuItem(
                            value: 'Item 01', child: Text("Item 01"))
                      ];
                    })
              ],
            ))
      ],
    );
  }
}
