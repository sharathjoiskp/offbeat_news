import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          "Analysis",
          style: TextStyle(color: Colors.black54),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your cycle history, at a\nglance',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Look back at your past cycle to identify\npatterns in your body',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  width: 80,
                  child: Image.asset(
                    "images/search.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: .5),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Container(
                    height: 200,
                    width: 123,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Cycle length',
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: CircularStepProgressIndicator(
                                    totalSteps: 100,
                                    currentStep: 88,
                                    stepSize: 10,
                                    selectedColor: Colors.blue,
                                    unselectedColor: Colors.transparent,
                                    selectedStepSize: 10,
                                    roundedCap: (_, __) => true,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 20,
                                child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.minimize_outlined,
                                          color: Colors.black,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'day',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: .5),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Container(
                    height: 200,
                    width: 123,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '  Cycle\nvariation',
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: CircularStepProgressIndicator(
                                    totalSteps: 100,
                                    currentStep: 85,
                                    stepSize: 10,
                                    selectedColor: Colors.grey.shade300,
                                    unselectedColor: Colors.transparent,
                                    selectedStepSize: 10,
                                    roundedCap: (_, __) => true,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12,
                                top: 10,
                                child: CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              Positioned(
                                left: 25,
                                top: 5,
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              Positioned(
                                left: 34,
                                top: 2,
                                child: CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              Positioned(
                                top: 20,
                                child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.minimize_outlined,
                                          color: Colors.black,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'day',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: .5),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Container(
                    height: 200,
                    width: 123,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Period length',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0,
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: CircularStepProgressIndicator(
                                    totalSteps: 100,
                                    currentStep: 88,
                                    stepSize: 10,
                                    selectedColor: Colors.grey.shade300,
                                    unselectedColor: Colors.transparent,
                                    selectedStepSize: 10,
                                    roundedCap: (_, __) => true,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: CircularStepProgressIndicator(
                                    totalSteps: 100,
                                    currentStep: 10,
                                    stepSize: 10,
                                    selectedColor: Colors.red,
                                    unselectedColor: Colors.transparent,
                                    selectedStepSize: 10,
                                    roundedCap: (_, __) => true,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 20,
                                child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.minimize_outlined,
                                          color: Colors.black,
                                          size: 35,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'day',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              child: Image.asset("images/track.png"),
              radius: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'No cycle history yet',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Track your period to start getting insights',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tap to track',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
