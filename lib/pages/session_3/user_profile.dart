import 'package:flutter/material.dart';
import 'package:oech/pages/session_3/data/models/List_Screen_Widget.dart';
import 'package:oech/presentation/style/colors.dart';
import 'package:oech/widgets/session_3/appbar_widget.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  var balance = '10,712:00';
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarDefoult(
        titleText: 'Profile',
        button: false,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 8),
              child: Row(
                children: [
                  Image.asset('assets/image/ava_user.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello Ken',
                        style: TextStyle(
                            color: colors.name_label,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Row(
                        children: [
                          const Text(
                            'Current balance:',
                            style: TextStyle(
                              color: colors.name_label,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'N$balance',
                            style: const TextStyle(
                                color: colors.mainColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        if (balance == '******') {
                          balance = '10,712:00';
                        } else {
                          balance = '******';
                        }
                        setState(() {});
                      },
                      child: SizedBox(
                          width: 30,
                          height: 30,
                          child: balance == '10,712:00'
                              ? Image.asset('assets/image/icons/eye-slash.png')
                              : Image.asset('assets/image/icons/eye.png')))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  const Text(
                    'Enable dark Mode',
                    style: TextStyle(
                      color: colors.name_label,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Switch(
                    // This bool value toggles the switch.
                    value: light,
                    activeColor: colors.mainColor,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('fdsd');
                    },
                    child: const ListScreenWidget(
                      text: 'Edit Profile',
                      subtitle: 'Name, phone no, address, email ...',
                      icon: Icons.supervised_user_circle_rounded,
                    ),
                  ),
                  const ListScreenWidget(
                    text: 'Statements & Reports',
                    subtitle:
                        'Download transaction details, orders, deliveries',
                    icon: Icons.receipt_outlined,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/notif');
                    },
                    child: const ListScreenWidget(
                      text: 'Notification Settings',
                      subtitle: 'mute, unmute, set location & tracking setting',
                      icon: Icons.notifications_active_outlined,
                    ),
                  ),
                  const ListScreenWidget(
                    text: 'Card & Bank account settings',
                    subtitle: 'change cards, delete card detail',
                    icon: Icons.account_balance_wallet_outlined,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pushNamed('/catalog'),
                    child: const ListScreenWidget(
                      text: 'Catalog',
                      subtitle: 'Product catalog of the latest products',
                      icon: Icons.production_quantity_limits,
                      iconColor: Colors.green,
                    ),
                  ),
                  const ListScreenWidget(
                    text: 'About Us',
                    subtitle: 'know more about us, terms and conditions',
                    icon: Icons.image,
                  ),
                  const ListScreenWidget(
                    text: 'Log Out',
                    icon: Icons.logout_outlined,
                    iconColor: Colors.red,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
