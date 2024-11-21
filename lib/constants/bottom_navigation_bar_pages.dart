import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/history_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/notifications_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';

final List<Widget> navBarPages = [
  const HomePage(),
  const NotificationsPage(),
  const HistoryPage(),
  const ProfilePage(),
];
