import 'package:flutter/material.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/data/shop_data.dart';
import 'package:head_client_server/presentation/shop/shop_presentation.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:time_ui_kit/widgets/search.dart';
import 'package:time_ui_kit/widgets/tabbar.dart';

class Head extends StatefulWidget {
  const Head({super.key});

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  final _controller = TextEditingController();
  List<NewInfo> _news = [];

  Future<void> _init() async {
    final response = await _shopData.getNews();
    setState(() {
      _news = response.items;
    });
  }

  late Client _client;
  late ShopData _shopData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _client = Provider.of(context, listen: false);
    _shopData = ShopData(_client);
    _init();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: orientation == Orientation.portrait
                        ? 335.w
                        : width * 0.7,
                    margin: EdgeInsets.only(
                      top:
                          (orientation == Orientation.portrait ? 68.h : 68) -
                          MediaQuery.of(context).padding.top,
                    ),
                    child: Search(controller: _controller),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: orientation == Orientation.portrait ? 32.h : 32,
                      bottom: orientation == Orientation.portrait ? 16.h : 16,
                    ),
                    width: orientation == Orientation.portrait
                        ? 335.w
                        : width * 0.7,
                    child: Text(
                      'Акции и новости',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: orientation == Orientation.portrait
                            ? 17.sp
                            : 17,
                        height: 24 / 17,
                        letterSpacing: 0,
                        color: Color.fromRGBO(147, 147, 150, 1),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _news
                          .map(
                            (item) => Container(
                              width: orientation == Orientation.portrait
                                  ? 270.w
                                  : 270,
                              height: orientation == Orientation.portrait
                                  ? 152.h
                                  : 152,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(151, 217, 240, 1),
                                    Color.fromRGBO(146, 233, 212, 1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Image.network(
                                '${_client.getUrl()}/files/${item.collectionName}/${item.id}/${item.newsImage}',
                              ),
                            ),
                          )
                          .toList(),
                      // [

                      // ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Tabbar(
        activeIndex: 0,
        zeroCallback: () {
          Navigator.pushNamed(context, '/head');
        },
        oneCallback: () {
          Navigator.pushNamed(context, '/catalog');
        },
        twoCallback: () {
          Navigator.pushNamed(context, '/projects');
        },
        threeCallback: () {
          Navigator.pushNamed(context, '/profile');
        },
      ),
    );
  }
}
