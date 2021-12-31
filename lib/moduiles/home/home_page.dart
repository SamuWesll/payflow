import 'package:flutter/material.dart';
import 'package:payflow/moduiles/extract/extract_page.dart';
import 'package:payflow/moduiles/home/home_controller.dart';
import 'package:payflow/moduiles/meus_boletos/meus_boletos_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    const MeusBoletosPage(),
    const ExtractPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(TextSpan(
                text: "Olá, ",
                style: TextStyles.titleRegular,
                children: [
                  TextSpan(
                    text: "Samu!",
                    style: TextStyles.titleBoldBackground,
                  ),
                ],
              )),
              subtitle: Text(
                'Mantenha suas contas em dia',
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      // ignore: sized_box_for_whitespace
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  controller.setPage(0);
                });
              },
              icon: Icon(
                Icons.home,
                color: controller.currentPage == 0
                    ? AppColors.primary
                    : AppColors.body,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, "/barcode_scanner");
                Navigator.pushNamed(context, "/insert_boleto");
              },
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: const Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  controller.setPage(1);
                });
              },
              icon: Icon(
                Icons.description_outlined,
                color: controller.currentPage == 1
                    ? AppColors.primary
                    : AppColors.body,
              ),
            )
          ],
        ),
      ),
    );
  }
}
