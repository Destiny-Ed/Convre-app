import 'package:convre/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                primary: true,
                children: [
                  ///Marque
                  Container(
                    color: lightOrange,
                    height: 50,
                    child: Marquee(
                      text:
                          "Convre is in beta and as such unstable. Please bear with us if you're experiencing any issues. We're working here.                                                         ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),

                  ///Top Tabs
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: grey))),
                    child: Row(
                      children: [
                        ///New
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                            color: lightBlue,
                          ),
                          child: Text(
                            "New",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),

                        ///Popular
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: grey.withOpacity(0.1),
                          ),
                          child: Text(
                            "Popular",
                            style: TextStyle(
                                color: grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),

                  ...List.generate(10, (index) {
                    return ContentView();
                  }),

                  const SizedBox(height : 150),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Image.asset("assets/edit.png", width: 25, color: white,),),
    );
  }

  ///
  Widget ContentView() {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: grey))),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              // radius: 30,
              backgroundColor: black,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "zoe ",
                        style: TextStyle(
                            color: black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "| 8 hours ago",
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                        ))
                  ])),
                ),

              ],
            ),
            trailing:  IconButton(
                onPressed: () {
                  print("hello");
                },
                icon: Icon(Icons.more_horiz)),
            subtitle: Text("@crypto_dna_africa"),
            // trailing: ,
          ),
          ListTile(
            title: Text(
                "Bitcoin Miners post \$1.4 billion in revenue for August, data shows...",
                style: TextStyle(
                    color: black, fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Column(
              children: [
                const SizedBox(height : 8),
                Text(
                    "Bitcoin miners brought in approximately \$1.41 billion in revenue during the month of August, according to data compiled by The Block Research.The monthly figure is below the all-time peak of &amp;1.75 billion posted in March but represents a month-over-month increase - roughly 45% - from July???s \$971.83 million.The vast majority of the August revenu (...)"),
                const SizedBox(height : 8),
                Image.asset("assets/image.jpeg"),

                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/chat.png", width: 25,color: grey,),
                          Text(" 0",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      const SizedBox(width: 20,),
                      Row(
                        children: [
                          Image.asset("assets/arrow_up.png", width: 25,color: grey,),
                          const SizedBox(width: 20,),

                          Text("0",style: TextStyle(fontSize: 20),)
                        ],
                      ),

                      const SizedBox(width: 20,),
                      Row(
                        children: [
                          Image.asset("assets/arrow_down.png", width: 25,color: grey,),
                          // Text(" 0",style: TextStyle(fontSize: 20),)
                        ],
                      ),

                      Expanded(child: Container(
                        alignment: Alignment.centerRight,
                          child: IconButton(onPressed: (){}, icon: Image.asset("assets/share.png", width: 20,color: grey,))))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
