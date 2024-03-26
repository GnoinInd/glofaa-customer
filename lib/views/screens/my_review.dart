import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyReviews(),
  ));
}

class MyReviews extends StatelessWidget {
  const MyReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Column(
            children: [
              Row(
                children: [
                  Icon(Icons
                      .arrow_back_sharp), // Add search icon before the text
                  SizedBox(width: 8), // Spacer between search icon and text
                  Text('My Reviews'),
                  Spacer(), // Spacer between text and icon
                  Icon(Icons.search), // Add icon after the text
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Divider(),
              ),
            ],
          ),
          bottom: TabBar(
            indicatorColor: Colors.blue,
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: const Text(
                    'Pending',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: const Text(
                    'Published',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SizedBox(
          height: 142,
          child: TabBarView(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.09, 1.00),
                    end: Alignment(0.09, -1),
                    colors: [Color(0xFFe4f8fa), Color(0x0077DCE5)],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 97.0),
                      child: Row(
                        children: [
                          const Text(
                            'yay! No Pending reviews',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Image.asset('assets/images/big_pencil.png'),
                        ],
                      ),
                    ),
                    const Text(
                      'You have no products to review right now',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.09, 1.00),
                    end: Alignment(0.09, -1),
                    colors: [Color(0xFFe4f8fa), Color(0x0077DCE5)],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 105.0),
                      child: Row(
                        children: [
                          const Text(
                            'Share your opinion!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Image.asset('assets/images/big_pencil.png'),
                        ],
                      ),
                    ),
                    const Text(
                      'You have no products to review right now',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
