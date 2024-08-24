
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/size.dart';
import '../../layouts/grid_layout.dart';
import '../product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
            border: OutlineInputBorder(), // Adding a border for better visibility
          ),
          items: ['Tên sản phẩm', 'Giá cao', 'Giá thấp', 'Sale', 'Mới nhất', 'Bán chạy']
              .map((option) => DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          ))
              .toList(),
          onChanged: (value) {
            // TODO: Implement sorting logic based on selected value

          },
        ),
        const SizedBox(height: KSize.spaceBtwSections),
        KGridLayout(
          itemCount: 8, // This can be dynamic based on the number of products
          itemBuilder: (_, index) => const KProductCardVertical(),
        ),
      ],
    );
  }
}
