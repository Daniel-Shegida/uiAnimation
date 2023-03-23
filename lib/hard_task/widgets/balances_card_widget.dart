import 'package:flutter/material.dart';
import 'package:hard_ui_impl_first_task/assets/strings/projects_strings.dart';
import 'package:hard_ui_impl_first_task/hard_task/utils/balance_enums.dart';
import 'package:hard_ui_impl_first_task/hard_task/widgets/card_widget.dart';

class BalancesCardWidget extends StatelessWidget {
  const BalancesCardWidget({ required this.curency, required this.currentValue, this.width, this.height,  this.onPressed,  Key? key}) : super(key: key);
  final CurrencyTypes curency;
  final int currentValue;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;


  @override
  Widget build(BuildContext context) {
    return CardWidget(
      width: width,
      height: height,
      child: Column(
        children: [
          Text('${ProjectStrings.balanceInfo} ${curency.currencyName} $currentValue', style: Theme.of(context).textTheme.titleSmall,),
          ElevatedButton(
            onPressed: onPressed,
            child: (
                const Text(ProjectStrings.spend,)
            ),),

        ],
      ),
    );
  }
}