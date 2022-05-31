import 'package:flutter/material.dart';
import 'package:masterclass/custom_tabbar.dart';

class ClasseScreen extends StatefulWidget{
  const ClasseScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ClasseState();

}

class _ClasseState extends State<ClasseScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/img/background.jpg",
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: DefaultTabController(
              length: 2,
              child: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.transparent,
                      floating: true,
                      forceElevated: innerBoxIsScrolled,
                      pinned: true,
                      toolbarHeight: 80,
                      leadingWidth: 80,
                      bottom: CustomTabBar(
                        color: Colors.black,
                        tabBar: const TabBar(
                          indicatorColor: Color(0xFFe32652),
                          isScrollable: true,
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicatorWeight: 3,
                          labelPadding: EdgeInsets.symmetric(horizontal: 50),
                          tabs: [
                            Tab(
                              text: "OVERVIEW",
                            ),
                            Tab(
                              text: "LESSONS",
                            )
                          ],
                        ),
                      ),
                      expandedHeight: MediaQuery.of(context).size.height-110,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        background: Container(
                            padding: EdgeInsets.only(bottom: 60, left: 16, right: 16),
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.black
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "Mariah Carey",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 58,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  color: Colors.white,
                                  width: 21,
                                  height: 3,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Text(
                                  "Teaches the Voice as an Instrument",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFe32652),
                                      padding: EdgeInsets.all(15),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      )
                                    ),
                                    child: Text(
                                      "Play lesson 1".toUpperCase(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                TextButton.icon(
                                  onPressed: (){},
                                  icon: const Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "WATCH TRAILER".toUpperCase(),
                                    style: const TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                )
                              ],
                            )
                        )
                      ),
                      automaticallyImplyLeading: false,
                      leading: Padding(
                        padding: EdgeInsets.all(20),
                        child: OutlinedButton(
                          onPressed: ()=>Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.black.withOpacity(0.2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 9)
                          ),
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(16),
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              "FREE THE SONG WITHIN",
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Flexible(
                              child: Text(
                                "Sed ut tum ad senem senex de senectute, "
                                    "sic hoc libro ad amicum amicissimus scripsi de amicitia. "
                                    "Tum est Cato locutus, quo erat nemo fere senior temporibus "
                                    "illis, nemo prudentior; nunc Laelius et sapiens (sic enim est habitus) "
                                    "et amicitiae gloria excellens de amicitia loquetur. Tu velim a me"
                                    " animum parumper avertas, Laelium loqui ipsum putes. C. Fannius et Q."
                                    " Mucius ad socerum veniunt post mortem Africani; ab his sermo oritur,"
                                    " respondet Laelius, cuius tota disputatio est de amicitia, quam legens "
                                    "te ipse cognosces.",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 220,
                              child: Card(
                                  color: Colors.white12,
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: Container(
                                          width: 100,
                                          height: 90,
                                          color: Colors.white,
                                        ),
                                        title: Text(
                                          "1. Meet Your Instructor:Mariah Carey",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          maxLines: 2,
                                        ),
                                        subtitle: Text(
                                          "Mariah Carey",
                                          style: TextStyle(
                                              color: Colors.grey
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 16),
                                            child:Text(
                                              "Tu velim a me animum parumper avertas, "
                                                  "Laelium loqui ipsum putes. C. Fannius et Q."
                                                  " Mucius ad socerum veniunt post mortem Africani; "
                                                  "ab his sermo oritur, respondet Laelius, cuius tota"
                                                  " disputatio est de amicitia, quam legens te ipse cognosces.",
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                physics: const BouncingScrollPhysics(),
              ),
            ),
          ),
        ],
      )
    );
  }
}