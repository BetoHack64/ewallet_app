import 'package:ewallt_app/Models/credit_card.dart';
import 'package:ewallt_app/Models/transaction.dart';
import 'package:ewallt_app/constants.dart';
import 'package:ewallt_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'components/detail_card.dart';
import 'components/transaction_summary.dart';

class DetailPage extends StatefulWidget {
  final CreditCard card;

  const DetailPage({Key? key, required this.card}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double sheetProgress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010116),
      appBar: AppBar(
        toolbarHeight: 40.0,
        backgroundColor: const Color(0xff010116),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: SizeConfig.defaultHeight * 4,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.defaultWidth * 2),
            child: Icon(
              Icons.share,
              color: Colors.white,
              size: SizeConfig.defaultHeight * 4,
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          PlayAnimation(
              tween: Tween(begin: 0.2, end: 1.0),
              curve: Curves.easeOut,
              duration: Duration(milliseconds: 200),
              builder: (context, child, value) => Transform.scale(
                scale: 1.0,
                alignment: Alignment.topCenter,
                child: Opacity(opacity: 1.0, child: child),
              ),
              child:
              DetailCard(sheetProgress: sheetProgress, card: widget.card)),
             _buildBottomSheet(),
        ],
      ),
    );
  }

  _buildBottomSheet() => PlayAnimation(
        tween: Tween(begin: SizeConfig.defaultHeight , end: 0.0),
        curve: Curves.easeOut,
        duration: Duration(milliseconds: 200),
        builder: (context, child, value) => Transform.translate(
          offset: Offset(0, 1.0),
          child: child,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SlidingSheet(
              color: sheetColor,
              cornerRadius: SizeConfig.defaultWidth * 2.5,
              snapSpec: const SnapSpec(
                  snap: true,
                  snappings: [0.6, 0.6, 1],
                  positioning: SnapPositioning.relativeToSheetHeight),
              listener: (state) => setState(() {
                    sheetProgress = ((state.extent - 0.3) / 0.65);
                  }),
              headerBuilder: (context, state) {
                return Container(
                  height: SizeConfig.defaultHeight * 8,
                  width: double.infinity,
                  color: sheetColor,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.defaultWidth * 2),
                    child: Text(
                      "Today",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
              builder: (context, state) {
                return Container(
                  color: sheetColor,
                  child: ListView.builder(
                      itemCount: transactions.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return TransactionSummary(
                            transaction: transactions[index]);
                      }),
                );
              }),
        ),
      );
}
