import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);
  final title = 'GeeksforGeeks';
  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: true,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              // centerTitle: false,
              title: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 32, right: 25),
                    child: IconButton(
                      icon: const Icon(Icons.comment, color: Colors.white),
                      tooltip: 'Comment Icon',
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 32, right: 25),
                    child: IconButton(
                      icon: const Icon(Icons.comment, color: Colors.white),
                      tooltip: 'Comment Icon',
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 32),
                    child: IconButton(
                      icon: const Icon(Icons.comment, color: Colors.white),
                      tooltip: 'Comment Icon',
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 32),
                    child: IconButton(
                      icon: const Icon(Icons.comment, color: Colors.white),
                      tooltip: 'Comment Icon',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              background: Image.network(
                "https://i.ytimg.com/vi/X23vr0G814Y/maxresdefault.jpg",
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 140,
            excludeHeaderSemantics: false,
            backgroundColor: const Color(0xFFD82D8B),
            leading: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 10),
                  // Separate container for TextField with fixed width
                  SizedBox(
                    width: 0, // Width of the TextField
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  icon: const Icon(Icons.comment, color: Colors.white),
                  tooltip: 'Comment Icon',
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  tooltip: 'Setting Icon',
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                title: Center(
                  child: Text('$index',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 50,
                          color: Colors.greenAccent[400]) //TextStyle
                      ), //Text
                ), //Center
              ), //ListTile
              childCount: 51,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Momo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Ưu đãi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Quyét QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Lịch sử GD',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Tôi',
          ),
        ],
        currentIndex: viewModel.currentIndex,
        selectedItemColor: const Color(0xFFD82D8B),
        unselectedItemColor: Colors.black,
        onTap: viewModel.setIndex,
        showUnselectedLabels: true,
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
