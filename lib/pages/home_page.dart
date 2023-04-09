import 'package:flutter/material.dart';
import 'package:flutter_mapp/class/item_class.dart';
import 'package:flutter_mapp/core/constants.dart';
import 'package:flutter_mapp/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Myapp"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: kDouble5,
              ),
              CardWidget(
                box: ItemClass(
                    title: "Rocket",
                    imagePath: "images/rocket.png",
                    descriptionStr: descriptionRocket),
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Travel",
                        imagePath: "images/travel.png",
                        descriptionStr: descriptionTravel,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Space",
                        imagePath: "images/space.png",
                        descriptionStr: descriptionSpace,
                      ),
                    ),
                  ),
                ],
              ),
              CardWidget(
                box: ItemClass(
                  title: "Yeah",
                  imagePath: "images/yeah.png",
                  descriptionStr: descriptionYeah,
                ),
              ),
            ],
          ),
        ));
  }
}
