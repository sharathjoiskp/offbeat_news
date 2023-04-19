import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'Auth/auth_page.dart';

class CyclePage extends StatefulWidget {
  const CyclePage({super.key});

  @override
  State<CyclePage> createState() => _CyclePageState();
}

class _CyclePageState extends State<CyclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Text(''),
          title: Center(
            child: Text(
              "Your current cycle",
              style: TextStyle(color: Colors.black54),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.defaultDialog(
                    title: "Wanna LogOut 👋 ",
                    titleStyle: TextStyle(color: Colors.red),
                    backgroundColor: Colors.grey.shade600,
                    content: Text(
                      'After logout you can login through registered email and password',
                      style: TextStyle(color: Colors.white),
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('No')),
                      ElevatedButton(
                          onPressed: () async {
                            await FirebaseAuth.instance.signOut();
                            Get.to(AuthPage());
                          },
                          child: Text('Yes')),
                    ]);
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30,
              ),
            )
          ]),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Subscribe to Clue Plus and\nsupport our team',
                  style: TextStyle(
                    color: Colors.grey.shade100,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'Try now for free',
                      style: TextStyle(
                        color: Colors.purple.shade300,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.purple.shade300,
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 350,
            width: 350,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: SizedBox(
                    height: 350,
                    width: 350,
                    child: CircularStepProgressIndicator(
                      totalSteps: 100,
                      currentStep: 88,
                      stepSize: 10,
                      selectedColor: Colors.grey.shade300,
                      unselectedColor: Colors.transparent,
                      selectedStepSize: 25,
                      roundedCap: (_, __) => true,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: SizedBox(
                    height: 350,
                    width: 350,
                    child: CircularStepProgressIndicator(
                      totalSteps: 4,
                      stepSize: 25,
                      customColor: (index) {
                        return index == 1 ? Colors.blue : Colors.transparent;
                      },
                      width: 300,
                      selectedStepSize: 25,
                      roundedCap: (_, __) => true,
                    ),
                  ),
                ),
                Positioned(
                  left: 280,
                  top: 250,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Day',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          '13',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 40,
                  child: SizedBox(
                    height: 270,
                    width: 270,
                    child: CircularStepProgressIndicator(
                      totalSteps: 35,
                      currentStep: 15,
                      selectedColor: Colors.black,
                      unselectedColor: Colors.transparent,
                      selectedStepSize: 3.0,
                      unselectedStepSize: 0.0,
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 80,
                  child: SizedBox(
                      height: 270,
                      width: 270,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Today ,',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Apr 13',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Your next period is\n     due Apr 30',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            'Potential fertile day',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.blue,
                          )
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
