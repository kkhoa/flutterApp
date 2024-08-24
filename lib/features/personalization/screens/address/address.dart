import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/features/personalization/screens/address/new_address.dart';
import 'package:webapp/features/personalization/screens/address/widget/single_address.dart';
import 'package:webapp/utils/constants/colors.dart';
import 'package:webapp/utils/constants/size.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>Get.to(()=>const AddNewAddressScreen()),
        backgroundColor: KColors.primary,
       child: const Icon(Iconsax.add,color: KColors.white,),
      ),
      appBar: KAppBar(
        showBackArrow: true,
        title: Text('Địa chỉ nhận hàng ',style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSize.defaultSpace),child: Column(
children: [
KSingleAddress(selectedAddress: true),
  KSingleAddress(selectedAddress: false),
],
        ),
        ),
      ),
    );
  }
}
