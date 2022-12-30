import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/user_detail_information_controller.dart';

class UserDetailInformationPage
    extends GetView<UserDetailInformationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserDetailInformationPage'),
      ),
      body: SafeArea(
        child: Text('UserDetailInformationController'),
      ),
    );
  }
}
