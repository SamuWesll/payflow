import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/button_sheet/button_sheet_widget.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return ButtonSheetWidget(
      title: "Não foi possível identificar o código de barra.",
      subtitle: "Tente scanear novamente ou digite o código do seu boleto.",
      primaryLabel: "Scanear novamente",
      primaryOnPressed: () {},
      secundaryLabel: "Digitar código",
      secundaryOnPress: () {},
    );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Escaneie o código de barras do boleto",
                style: TextStyles.buttonBackground,
              ),
              centerTitle: true,
              leading: const BackButton(color: AppColors.background),
            ),
            body: Column(
              children: [
                Expanded(
                    child: Container(color: Colors.black.withOpacity(0.6))),
                Expanded(flex: 2, child: Container(color: Colors.transparent)),
                Expanded(
                    child: Container(color: Colors.black.withOpacity(0.6))),
              ],
            ),
            // ignore: sized_box_for_whitespace
            bottomNavigationBar: SetLabelButtons(
              primaryLabel: "Inserir código do boleto",
              primaryOnPressed: () {},
              secundaryLabel: "Adicionar da galeria",
              secundaryOnPress: () {},
            )),
      ),
    );
  }
}
