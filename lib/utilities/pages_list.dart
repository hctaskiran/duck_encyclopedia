import 'package:flutter/material.dart';
import 'package:frontend_tutorial/pages/tab_pages/encyclopedia_page.dart';
import 'package:frontend_tutorial/pages/vehicles/cars.dart';
import '../pages/home_button.dart';
import '../pages/tab_pages/real_home_page.dart';
import '../pages/tab_pages/settings.dart';
import '../pages/vehicles/trains.dart';
import '../pages/vehicles/trucks.dart';

final List<Widget> pages = [
  const REALHomePage(),
  const EncyclopediaPage(),
  const SettingsPage(),
  const CarsPage(),
  const TrucksPage(),
  const TrainsPage(),
  const HomeButtonPage(),
];

// children: const [
                          //   Vehicles(
                          //     icon: Icons.car_repair_sharp,
                          //     vehicleName: 'Автомобилы', 
                          //     vehiclesLeft: 16,
                          //     color: greenColor,
                          //   ),
                          //   Vehicles(
                          //     icon: Icons.fire_truck_rounded,
                          //     vehicleName: 'Грузовики', 
                          //     vehiclesLeft: 16,
                          //     color: redColor,
                          //   ),
                          //   Vehicles(
                          //     icon: Icons.train_rounded,
                          //     vehicleName: 'Поезды', 
                          //     vehiclesLeft: 9,
                          //     color: Colors.blue,
                          //   ),
                          // ],