import 'package:flutter/material.dart';
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});
  @override
  State<DashboardView> createState() => _DashboardViewState();
}
class _DashboardViewState extends State<DashboardView> {
  List<DailyTaskModel> dailyTasksList = [
    DailyTaskModel(false, 'Learning Programming by 12PM'),
    DailyTaskModel(false, 'Learn how to cook by 1PM'),
    DailyTaskModel(false, 'Learn how to play at 2PM'),
    DailyTaskModel(false, 'Have lunch at 4PM'),
    DailyTaskModel(false, 'Going to travel 6PM'),
  ];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Column(

        children: [
          Container(
            height: 280,
          decoration: BoxDecoration(
            color: Color(0xff50C2C9),
          ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("asset/shape.png"),
                  ],
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("asset/s3.jfif"),
                ),
                Text(
                  "Welcome to Jeenger Goyani ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                    fontSize: 18,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Text(
                        "Good Afternoon",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Image(image: AssetImage("asset/clock.png")),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 8),
                child: Text(
                  "Task List",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Container(

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white30,
                        blurRadius: 7,spreadRadius: 7

                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Daily Tasks",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add,color: Color(0xff50C2C9)),
                            onPressed: () {
                            },
                          ),
                        ],
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: dailyTasksList.length,
                          itemBuilder: (context, index) {
                            var item = dailyTasksList[index];
                            return ListTile(
                              leading: Checkbox(
                                value: item.status, onChanged: (bool?value) {
                                setState(() {
                                  item.status = value!;
                                });
                              },),
                              title: Text(item.title!),
                            );
                          }
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class DailyTaskModel {
  bool? status;
  String? title;
  DailyTaskModel(status, title) {
    this.status = status;
    this.title = title;
  }
}


