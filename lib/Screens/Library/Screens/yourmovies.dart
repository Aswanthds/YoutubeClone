import 'package:flutter/material.dart';

class YourMoviesPage extends StatefulWidget {
  const YourMoviesPage({super.key});

  @override
  State<YourMoviesPage> createState() => _YourMoviesPageState();
}

class _YourMoviesPageState extends State<YourMoviesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcntrl;

  @override
  void initState() {
    super.initState();
    _tabcntrl = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  void dispose() {
    _tabcntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 300,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Your Movies",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: const Icon(Icons.cast),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 25,
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 25,
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ],
          bottom: TabBar(
            controller: _tabcntrl,
            isScrollable: false,
            indicatorColor: Colors.blueAccent.shade700,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              SizedBox(
                width: size.width / 2,
                child: Tab(
                  child: Text("Browse"),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                child: Tab(
                  child: Text("Purchased"),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(controller: _tabcntrl, children: [
          BrowsePage(),
          PurchasedPage(),
        ]),
      ),
    );
  }
}

class PurchasedPage extends StatelessWidget {
  const PurchasedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.sell,size: 200,color: Colors.white,),
        Text("You dont have any purchases" ,style: TextStyle(color: Colors.white ,fontSize: 18),),
        Center(child: Text("Movies or shows you rent or buy will \n appear here",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey ,fontSize: 12,),))
      ],
    );
  }
}

class BrowsePage extends StatelessWidget {
  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
