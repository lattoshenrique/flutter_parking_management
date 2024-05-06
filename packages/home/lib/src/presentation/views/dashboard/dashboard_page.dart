import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:parking_commons/parking_commons.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

import 'widgets/widgets.dart';

class Dashboardpage extends StatefulWidget {
  const Dashboardpage({super.key});

  @override
  State<Dashboardpage> createState() => _DashboardpageState();
}

class _DashboardpageState extends State<Dashboardpage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold.standard(
      appBar: const CommonAppBar.standard(titleText: ''),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Dimension.xl.height,
          horizontal: Dimension.sm.width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Bem-vindo, Sr. João!').pageTitle1(context),
                Dimension.sm.vertical,
                const Text(
                  'Gerencie seu estacionamento de forma simples e eficiente.',
                ).pageSubTitle1(context),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeCardSelector(
                  icon: Icons.dashboard_outlined,
                  title: 'Estacionamento',
                  description:
                      'Acompanhe o status atual do seu estacionamento. Registre entrada e saídas de veículos.',
                  onTap: () {
                    Nav.pushNamed(ParkingCommonsModulePaths.root.path);
                  },
                ),
                Dimension.sm.vertical,
                HomeCardSelector(
                  icon: Icons.local_shipping_outlined,
                  title: 'Veículos',
                  description:
                      'Adicione, atualize ou exclua veículos. Visualize se o veículo está ocupando alguma vaga no estacionamento.',
                  onTap: () {
                    Nav.pushNamed(VehiclesCommonsModulePaths.root.path);
                  },
                ),
                Dimension.sm.vertical,
                HomeCardSelector(
                  icon: Icons.description_outlined,
                  title: 'Relatórios',
                  description:
                      'Consulte o histórico e gere relatórios de entradas e saídas de veículos.',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
