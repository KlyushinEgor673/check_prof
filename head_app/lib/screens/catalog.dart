import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/data/shop_data.dart';
import 'package:head_client_server/head_client_server.dart';
import 'package:head_client_server/presentation/shop/shop_presentation.dart';
import 'package:provider/provider.dart';
import 'package:time_ui_kit/time_ui_kit.dart';
import 'package:time_ui_kit/widgets/tabbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  final _controller = TextEditingController();
  final storage = FlutterSecureStorage();
  String _type = '';
  List<ItemProduct> _products = [];
  List _productsInBacketId = [];

  Future<void> _openSheet(String productId) async {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        final orientation = MediaQuery.of(context).orientation;
        return Container(
          height: orientation == Orientation.portrait ? 636.h : 636,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
          ),
          child: Stack(),
        );
      },
    );
  }

  Future<void> _init() async {
    final response = await _shopData.getProducts(filter: '');
    String? userId = await storage.read(key: 'userId');
    final response2 = await _backetData.getAll(userId: userId!);
    for (ProductInBacket product in response2) {
      _productsInBacketId.add(product.productId);
    }
    setState(() {
      _products = response.items;
    });
  }

  late Client _client;
  late ShopData _shopData;
  late BacketData _backetData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _client = Provider.of(context, listen: false);
    _shopData = ShopData(_client);
    _backetData = BacketData(_client);
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
              child: Container(
                margin: EdgeInsets.only(
                  top:
                      (orientation == Orientation.portrait ? 72.h : 72) -
                      MediaQuery.of(context).padding.top,
                ),
                width: orientation == Orientation.portrait
                    ? 335.w
                    : width * 0.7,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: orientation == Orientation.portrait
                              ? 265.w
                              : width * 0.7 * (265 / 335),
                          child: Search(controller: _controller),
                        ),
                        SizedBox(
                          width: orientation == Orientation.portrait
                              ? 38.w
                              : 38,
                        ),
                        Image.asset(
                          'images/user-icon.png',
                          height: orientation == Orientation.portrait
                              ? 32.h
                              : 32,
                          width: orientation == Orientation.portrait
                              ? 32.w
                              : 32,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: orientation == Orientation.portrait ? 32.h : 32,
                      ),
                      child: Row(
                        spacing: orientation == Orientation.portrait
                            ? 16.w
                            : 16,
                        children: [
                          SizedBox(
                            width: orientation == Orientation.portrait
                                ? 66.w
                                : 66,
                            child: ChipButton(
                              status: _type == ''
                                  ? ChipButtonStatus.ON
                                  : ChipButtonStatus.OFF,
                              text: 'Все',
                              onTap: () {
                                setState(() {
                                  _type = '';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: orientation == Orientation.portrait
                                ? 120.w
                                : 66,
                            child: ChipButton(
                              status: _type == 'Женщинам'
                                  ? ChipButtonStatus.ON
                                  : ChipButtonStatus.OFF,
                              text: 'Женщинам',
                              onTap: () {
                                setState(() {
                                  _type = 'Женщинам';
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: orientation == Orientation.portrait
                                ? 116.w
                                : 66,
                            child: ChipButton(
                              status: _type == 'Мужчинам'
                                  ? ChipButtonStatus.ON
                                  : ChipButtonStatus.OFF,
                              text: 'Мужчинам',
                              onTap: () {
                                setState(() {
                                  _type = 'Мужчинам';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: orientation == Orientation.portrait ? 20.h : 20,
                      ),
                      height: orientation == Orientation.portrait ? 504.h : 504,
                      child: ListView.builder(
                        itemCount: _products.length,
                        itemBuilder: (context, i) {
                          return Container(
                            margin: EdgeInsets.only(
                              bottom: orientation == Orientation.portrait
                                  ? 12.h
                                  : 12,
                            ),
                            child: CardPrimary(
                              name: _products[i].title,
                              category: _products[i].typeCloses,
                              price: _products[i].price,
                              isAdded: _productsInBacketId.contains(
                                _products[i].id,
                              ),
                              onTap:
                                  _productsInBacketId.contains(_products[i].id)
                                  ? () {}
                                  : () async {
                                      _openSheet(_products[i].id);
                                    },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Tabbar(
        activeIndex: 1,
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
