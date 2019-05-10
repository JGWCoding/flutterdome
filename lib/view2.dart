import 'package:flutter/material.dart';

Widget show() {
  return MaterialApp(
    title: "只是一个属性,设置不会占状态栏",
    home: MyScaffold(),
  );
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "购物车",
              textAlign: TextAlign.center,
              style: TextStyle(),
            ),
          ),
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        body: Center(
            child: new ShopCartList(
          products: <Product>[
            new Product(name: 'Eggs'),
            new Product(name: 'Flour'),
            new Product(name: 'Chocolate chips'),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: floatPress,
          child: Text("点击"),
          backgroundColor: Colors.green,
        )
//    ,
        );
  }

  floatPress() {
    print("click float_button");
  }
}

class ShopCartList extends StatefulWidget {
  final List<Product> products;

  ShopCartList({Key key, this.products}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ShopCartListState();
  }
}

class ShopCartListState extends State<ShopCartList> {
  Set<Product> shopCart = Set();

  _onCartChangedCallBack(Product product, bool inCart) {
    setState(() {
      inCart ? shopCart.remove(product) : shopCart.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.symmetric(vertical: 8),
      children: widget.products.map((Product product) {
        return ProductCart(
          product: product,
          inCart: shopCart.contains(product),
          cartChangedCallback: _onCartChangedCallBack,
        );
      }).toList(),
    );
  }
}

class Product {
  final String name;

  const Product({this.name});
}

typedef void CartChangedCallback(Product product, bool inCart);

class ProductCart extends StatelessWidget {
  final Product product;
  final bool inCart;
  final CartChangedCallback cartChangedCallback;

  ProductCart({Product product, this.inCart, this.cartChangedCallback})
      : product = product,
        super(key: new ObjectKey(product));

  Color _getColor(BuildContext context) {
    if (inCart) {
      return Colors.black54;
    } else {
      return Theme.of(context).primaryColor;
    }
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        cartChangedCallback(product, inCart);
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: _getTextStyle(context),
      ),
    );
  }
}
