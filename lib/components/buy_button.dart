import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    Key key,
    @required this.colorProduct,
  }) : super(key: key);

  final Color colorProduct;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: SizedBox(
          height: 50,
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)),
            color: colorProduct,
            onPressed: () {},
            child: Text(
              "Купить".toUpperCase(),
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              )
              ,
            ),
          ),
        ),
      ),
    );
  }
}