import 'package:flutter/material.dart';

class TabBarCustom extends StatelessWidget {
  const TabBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Builder(
            builder: (context) {
              return NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return <Widget>[
                      _createAppBar(),
                    ];
                  },
                  body: TabBarView(children: [
                    CustomScrollView(
                      slivers: [
                        SliverList(
                            delegate: SliverChildListDelegate([
                          Text(
                            'Pagina 1',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ]))
                      ],
                    ),
                    CustomScrollView(
                      slivers: [
                        SliverList(
                            delegate: SliverChildListDelegate([
                          Text(
                            'Pagina 2',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ]))
                      ],
                    ),
                    CustomScrollView(
                      slivers: [
                        SliverList(
                            delegate: SliverChildListDelegate([
                          Text(
                            'Pagina 3',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ]))
                      ],
                    ),
                  ]));
            },
          ),
        ));
  }

  SliverAppBar _createAppBar() => SliverAppBar(
        elevation: 0,
        backgroundColor: Colors.purpleAccent,
        expandedHeight: 250,
        pinned: true,
        floating: true,
        snap: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          background: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(top: 30),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://images4.alphacoders.com/678/678317.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Titulo',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        bottom: const TabBar(
            physics: NeverScrollableScrollPhysics(),
            isScrollable: true,
            indicator: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black, width: 4.0))),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            tabs: [
              Tab(
                child: Text(
                  'Noticias',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Peliculas',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Información',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
      );
}
