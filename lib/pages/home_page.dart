import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_bar_constants.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/constants/text_theme_constants.dart';
import 'package:frontend_tutorial/pages/deneme.dart';
import 'package:frontend_tutorial/utilities/bnb_icon_buttons.dart';
import 'package:frontend_tutorial/utilities/drawer.dart';
import 'package:frontend_tutorial/utilities/emoji_icons.dart';
import 'package:frontend_tutorial/utilities/vehicles.dart';
import 'package:intl/intl.dart';

import '../utilities/pages_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('dd MMMM yyyy').format(currentDate);
 
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: pinkColor,
      bottomNavigationBar: const BNBIconButtons(),
      appBar: AppBar(
        titleTextStyle: abttStyle,
        title: Text(abTitle, style: abStyle),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // hi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(hiText, style: Theme.of(context).textTheme.titleSmall),
                          h5box,
                          Text(formattedDate, style: const TextStyle(color: grey200color))
                        ],
                      ),
                      // icon
                      Container(
                        decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications_active,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
            
                  h20box,
            
                  // search bar
                  Container(
                    decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search_outlined,
                          color: whiteColor,
                        ),
                        w5box,
                        Text(searchText, style: TextStyle(color: whiteColor))
                      ],
                    ),
                  ),
            
                  h20box,
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(howText, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18)),
                      const Icon(
                        Icons.more_horiz_outlined,
                        color: whiteColor,
                      )
                    ],
                  ),
            
                  h20box,
            
                  _emojiIcons(),
                ],
              ),
            ),

            h20box,

            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  color: grey300color,
                ),
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      // exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(excText, style: Theme.of(context).textTheme.bodySmall,),
                          const Icon(Icons.more_horiz)
                        ],
                      ),

                      h20box,

                      // exercise listview
                      Expanded(
                        child: ListView(
                          physics: const ScrollPhysics(),
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => pages[0]));
                              },
                              child: const Vehicles(
                                icon: Icons.car_repair_sharp,
                                vehicleName: 'Car', 
                                vehiclesLeft: 16,
                                color: greenColor,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => pages[1]));
                              },
                              child: const Vehicles(
                                icon: Icons.fire_truck_rounded,
                                vehicleName: 'Trucks', 
                                vehiclesLeft: 5,
                                color: redColor,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => pages[2]));
                              },
                              child: const Vehicles(
                                icon: Icons.train_rounded,
                                vehicleName: 'Trains', 
                                vehiclesLeft: 9,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _emojiIcons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '😄',
              emojiText: 'Cheerful',
            ),
            h5box,
          ],
        ),
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '💞',
              emojiText: 'Lovely',
            ),
            h5box,
          ],
        ),
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '😎',
              emojiText: 'Emo',
            ),
            h5box,
          ],
        ),
        Column(
          children: [
            EmojiIcon(
              emojiIcon: '😡',
              emojiText: 'Angry',
            ),
            h5box,
          ],
        ),
      ],
    );
  }
}
