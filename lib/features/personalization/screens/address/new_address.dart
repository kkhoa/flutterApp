import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/utils/constants/size.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        showBackArrow: true,
        title: Text('Thêm địa chỉ mới'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Tên',
                  ),
                ),
                const SizedBox(height: KSize.spaceBtwInputField),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile),
                    labelText: 'Số điện thoại',
                  ),
                ),
                const SizedBox(height: KSize.spaceBtwInputField),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.map),
                          labelText: 'Đường',
                        ),
                      ),
                    ),
                    const SizedBox(width: KSize.spaceBtwInputField),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'Thành phố',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: KSize.spaceBtwInputField),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.building),
                          labelText: 'Quận',
                        ),
                      ),
                    ),
                    const SizedBox(width: KSize.spaceBtwInputField),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.flag),
                          labelText: 'Nước nào',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: KSize.defaultSpace),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Lưu địa chỉ'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
