import 'package:flutter/material.dart';
import 'package:my_pocket_wallet/screens/pages/account.dart';
import 'package:my_pocket_wallet/screens/pages/credit_card.dart';
import 'package:my_pocket_wallet/screens/pages/mobile_recharge.dart';
import 'package:my_pocket_wallet/screens/pages/pay_bill.dart';
import 'package:my_pocket_wallet/screens/pages/transaction_report.dart';
import 'package:my_pocket_wallet/screens/pages/transfer.dart';
import 'package:my_pocket_wallet/screens/pages/withdraw.dart';

class Homecontent extends StatelessWidget {
  const Homecontent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting Section
            _upperText(),
            // Card Section
            _materCardSection(),
            const SizedBox(height: 30),
            // Grid Menu Section
            _middleScreenButtons(context),
          ],
        ),
      ),
    );
  }

  // Menu Item Widget
  Widget _buildMenuItem(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue.withOpacity(0.1),
            child: Icon(icon, color: Colors.blue, size: 30),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

 
  // Grid Menu Section
  Widget _middleScreenButtons(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: [
          _buildMenuItem(
            Icons.account_balance_wallet,
            'Account\nand Card',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountAndCardPage()),
              );
            },
          ),
          _buildMenuItem(
            Icons.swap_horiz,
            'Transfer',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TransferPage()),
              );
            },
          ),
          _buildMenuItem(
            Icons.attach_money,
            'Withdraw',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WithdrawPage()),
              );
            },
          ),
          _buildMenuItem(
            Icons.phone_android,
            'Mobile\nrecharge',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MobileRechargePage()),
              );
            },
          ),
          _buildMenuItem(
            Icons.receipt,
            'Pay the bill',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PayTheBillPage()),
              );
            },
          ),
          _buildMenuItem(
            Icons.credit_card,
            'Credit card',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreditCardPage()),
              );
            },
          ),
          _buildMenuItem(
            Icons.insert_chart,
            'Transaction\nreport',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransactionReportPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Greeting Section
Widget _upperText() {
  return Container(
    child: const Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Good Morning,',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Gega!',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}

Widget _materCardSection() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      gradient: const LinearGradient(
        colors: [Color(0xFF3C5AFE), Color(0xFF42A5F5)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: const Offset(0, 10),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gega Smith',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'OverBridge Expert',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '4756 •••• •••• 9018',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                '\$3,469.52',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'VISA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
