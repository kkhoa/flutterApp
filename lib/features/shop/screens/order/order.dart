import 'package:flutter/material.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/features/shop/screens/order/widget/order_list_item.dart';
import 'package:webapp/utils/constants/size.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KAppBar(title: Text('Đơn hàng của tôi',style: Theme.of(context).textTheme.headlineMedium)),

      body: const Padding(
        padding: EdgeInsets.all(KSize.defaultSpace),
        child: OrderListItem(),
      ),
    );
  }
}
