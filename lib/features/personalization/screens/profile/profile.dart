import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:webapp/common/widgets/appbar/appbar.dart';
import 'package:webapp/common/widgets/image/k_circular_image.dart';
import 'package:webapp/common/widgets/texts/section_heading.dart';
import 'package:webapp/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:webapp/utils/constants/image_string.dart';
import 'package:webapp/utils/constants/size.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KAppBar(
        showBackArrow: true,
        title: Text('Tài Khoản'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSize.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const KCircularImage(
                      image: KImages.user,
                      width: 100,
                      height: 100,
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle avatar change
                      },
                      child: const Text('Đổi avatar tài khoản'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: KSize.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: KSize.spaceBtwItems),
              const KSectionHeading(
                title: 'Thông tin tài khoản',
                showActionButton: false,
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              KProfileMenu(
                title: 'Tên',
                value: 'Khoa dz',
                onPressed: () {
                  // Handle menu item click
                },
              ),
              KProfileMenu(
                title: 'Tên Tài khoản',
                value: 'Khoa_dz',
                onPressed: () {
                  // Handle menu item click
                },
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              const Divider(),
              const SizedBox(height: KSize.spaceBtwItems),
              const KSectionHeading(
                title: 'Thông tin cá nhân',
                showActionButton: false,
              ),
              const SizedBox(height: KSize.spaceBtwItems),
              KProfileMenu(
                title: 'User ID',
                value: '1',
                icon: Iconsax.copy,
                onPressed: () {
                  // Handle menu item click
                },
              ),
              KProfileMenu(
                title: 'Email',
                value: 'Khoadepzai@siucapvipro.com',
                onPressed: () {
                  // Handle menu item click
                },
              ),
              KProfileMenu(
                title: 'SĐT',
                value: '1900100',
                onPressed: () {
                  // Handle menu item click
                },
              ),
              KProfileMenu(
                title: 'Giới tính',
                value: 'Nam',
                onPressed: () {
                  // Handle menu item click
                },
              ),
              KProfileMenu(
                title: ' Năm sinh',
                value: '13-11-2004',
                onPressed: () {
                  // Handle menu item click
                },
              ),
              const Divider(),
              const SizedBox(height: KSize.spaceBtwItems,),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Xóa tài khoản',style: TextStyle(color: Colors.red),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
