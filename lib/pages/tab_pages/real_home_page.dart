import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/sized_boxes.dart';
import 'package:frontend_tutorial/constants/text_theme_constants.dart';
import 'package:frontend_tutorial/utilities/lists.dart';
import 'package:frontend_tutorial/utilities/vehicles.dart';
import 'package:intl/intl.dart';

class REALHomePage extends StatelessWidget {
  const REALHomePage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
      DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('dd MMMM yyyy | hh:ss').format(currentDate);
 
    return Column(
      children: [
           Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      h20box,
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
              // Container(
              //   decoration: BoxDecoration(color: abPinkColor, borderRadius: BorderRadius.circular(15)),
              //   padding: const EdgeInsets.all(12),
              //   child: const Row(
              //     children: [
              //       Icon(
              //         Icons.search_outlined,
              //         color: whiteColor,
              //       ),
              //       w5box,
              //       Text(searchText, style: TextStyle(color: whiteColor))
              //     ],
              //   ),
              // ),
        
              h20box,
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(howText, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18)),
                ],
              ),
        
              h20box,
        
           //   _emojiIcons(),
            ],
          ),
        ),
        
    //    h20box,
        
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
                    ],
                  ),
        
                  h20box,
        
                  // exercise listview
                  Expanded(
                    child: ListView(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => pages[3]));
                          },
                          child: const Vehicles(
                            icon: Icons.question_mark_rounded,
                            vehicleName: whatText, 
                            vehiclesLeft: 'See the main point of the application.',
                            color: greenColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => pages[4]));
                          },
                          child: const Vehicles(
                            icon: Icons.fact_check_rounded,
                            vehicleName: whyText, 
                            vehiclesLeft: '13 reasons why it does.',
                            color: redColor,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => pages[5]));
                          },
                          child: const Vehicles(
                            icon: Icons.admin_panel_settings_rounded,
                            vehicleName: photoText, 
                            vehiclesLeft: photoText2,
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
    );
  }
}
