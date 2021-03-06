import 'package:flutter/material.dart';
import 'package:myethermine/ui/widgets/style/cart_style.dart';

class SharesWidget extends StatelessWidget {
  final int validShares;
  final int invalidShares;
  final int staleShares;

  @required
  const SharesWidget(
      {Key key, this.validShares, this.invalidShares, this.staleShares})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: _SharesItem(title: 'Valid', shares: validShares)),
                Container(
                    height: 40,
                    child: VerticalDivider(
                        thickness: 1.5, color: Colors.deepOrange)),
                Expanded(
                    child: _SharesItem(title: 'Stale', shares: staleShares)),
                Container(
                    height: 40,
                    child: VerticalDivider(
                        thickness: 1.5, color: Colors.deepOrange)),
                Expanded(
                    child: _SharesItem(title: 'Invalid', shares: invalidShares)),
              ],
            ),
          ),
        ),
        ShadowBoxCart(),
      ],
    );
  }
}

class _SharesItem extends StatelessWidget {

  final String title;
  final int shares;

  const _SharesItem({Key key, this.title, this.shares}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '$shares',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
