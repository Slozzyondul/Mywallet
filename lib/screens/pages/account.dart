import 'package:flutter/material.dart';

class AccountAndCardPage extends StatelessWidget {
  const AccountAndCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account and Card'),
      ),
      body: const Center(
        child: Text('Account and Card Page'),
      ),
    );
  }
}