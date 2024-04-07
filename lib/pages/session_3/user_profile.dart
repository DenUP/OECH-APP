import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          SizedBox(
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
                Spacer(),
                InkWell(
                    onTap: () {
                      if (balance == '******') {
                        balance = '10,712:00';
                      } else {
                        balance = '******';
                      }
                      setState(() {});
                    },
                    child: Container(
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
          )
        ],
      ),
    );
  }
}
