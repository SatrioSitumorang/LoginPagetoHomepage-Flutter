import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7E4FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 151, 239, 242),
        elevation: 4,
        leading: Padding(
          padding: EdgeInsets.all(4),
          child: Image.network(
            'https://png.pngtree.com/png-clipart/20190611/original/pngtree-wolf-logo-png-image_2306634.jpg',
          ),
        ),
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: <Widget>[
              MenuTile(title: 'About'),
              MenuTile(title: 'Shop'),
              MenuTile(title: 'Sell')
            ],
          )),
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  const MenuTile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontWeight: FontWeight.w200),
      ),
    );
  }
}
