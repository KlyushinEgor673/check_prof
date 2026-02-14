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
    InfoProductResponse response = await _shopData.getInfoProduct(productId);
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
          child: Stack(
            children: [
              Positioned(
                top: orientation == Orientation.portrait ? 24.h : 24,
                left: orientation == Orientation.portrait ? 20.w : 20,
                child: SizedBox(
                  width: orientation == Orientation.portrait ? 267.w : 267,
                  child: Text(
                    response.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: orientation == Orientation.portrait
                          ? 20.sp
                          : 20,
                      height: 28 / 20,
                      letterSpacing: 0.38,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: orientation == Orientation.portrait ? 100.h : 100,
                left: orientation == Orientation.portrait ? 20.w : 20,
                child: Text(
                  'Описание',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: orientation == Orientation.portrait ? 16.sp : 16,
                    height: 20 / 16,
                    letterSpacing: -0.32,
                    color: Color.fromRGBO(147, 147, 150, 1),
                  ),
                ),
              ),
              Positioned(
                top: orientation == Orientation.portrait ? 128.h : 128,
                left: orientation == Orientation.portrait ? 20.w : 20,
                right: orientation == Orientation.portrait ? 20.w : 20,
                child: Text(
                  response.description,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: orientation == Orientation.portrait ? 15.sp : 15,
                    letterSpacing: 0,
                    height: 20 / 15,
                  ),
                ),
              ),
              Positioned(
                bottom: orientation == Orientation.portrait ? 139.h : 139,
                left: orientation == Orientation.portrait ? 20.w : 20,
                child: Text(
                  'Примерный расход:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: orientation == Orientation.portrait ? 14.sp : 14,
                    height: 20 / 14,
                    letterSpacing: 0,
                    color: Color.fromRGBO(147, 147, 150, 1),
                  ),
                ),
              ),
              Positioned(
                bottom: orientation == Orientation.portrait ? 40.h : 40,
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: orientation == Orientation.portrait ? 20.w : 20,
                  ),
                  child: BigButton(
                    color: BigButtonColor.blue,
                    onTap: () async {
                      AddBacketResponse request = AddBacketResponse(
                        userId: _userId!,
                        productId: productId,
                        count: 1,
                      );
                      await _backetData.addProduct(request: request);
                      await _update();
                      Navigator.pop(context);
                    },
                    text: 'Далее',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String? _userId;

  Future<void> _update() async {
    print('UPDATE');
    final response = await _shopData.getProducts(filter: '');
    final response2 = await _backetData.getAll(userId: _userId!);
    _productsInBacketId.clear();
    for (ProductInBacket product in response2) {
      _productsInBacketId.add(product.productId);
    }
    setState(() {
      _products = response.items;
    });
  }

  Future<void> _init() async {
    _userId = await storage.read(key: 'userId');
    await _update();
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
                                  ? () async {
                                      String backetId = '';
                                      final response = await _backetData.getAll(userId: _userId!);
                                      for (ProductInBacket product in response) {
                                        if (product.productId == _products[i].id){
                                          backetId = product.id;
                                          break;
                                        }
                                      }
                                      final request = ChangeBacketRequest(
                                        userId: _userId!,
                                        productId: _products[i].id,
                                        count: 0,
                                        backetId: backetId,
                                      );
                                      await _backetData.changeProduct(
                                        request: request,
                                      );
                                      await _update();
                                      print(_productsInBacketId);
                                    }
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
