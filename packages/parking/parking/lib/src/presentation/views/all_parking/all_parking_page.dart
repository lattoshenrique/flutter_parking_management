import 'package:common_deps/common_deps.dart';
import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parking_commons/parking_commons.dart';

import '../../../parking_module_routing.dart';
import 'all_parking_view_model.dart';
import 'all_parking_view_model_state.dart';
import 'widgets/widgets.dart';

const _kPageName = 'Estacionamentos';

class AllParkingPage extends StatefulWidget {
  const AllParkingPage({super.key});

  @override
  State<AllParkingPage> createState() => _AllParkingPageState();
}

class _AllParkingPageState
    extends ViewState<AllParkingPage, AllParkingViewModel> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: .9);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _listener(
    BuildContext context,
    AllParkingViewModelState state,
  ) {
    switch (state) {
      case ErrorAllParkingViewModelState(:final message):
        onButtonPressed() {
          Nav.pop();
          viewModel.loadPage();
        }
        final args = CommonErrorPageArgs(
          onLeadingPressed: onButtonPressed,
          onPrimaryButtonPressed: onButtonPressed,
          primaryButtonText: 'VOLTAR',
          secondaryButtonText: 'VOLTAR PARA O INÍCIO',
          onSecondaryButtonPressed: () {
            Nav.popUntil((route) => route.isFirst);
          },
          message: message,
        );
        Nav.pushNamed(
          ParkingModuleRouting.errorPage.completePath,
          arguments: args,
        );
        break;
      default:
        break;
    }
  }

  List<List<T>> _splitList<T>(List<T> list) {
    final List<List<T>> splitLists = [];
    List<T> sublist = [];

    for (int i = 0; i < list.length; i++) {
      sublist.add(list[i]);
      if (sublist.length == 4 || i == list.length - 1) {
        splitLists.add(sublist);
        sublist = [];
      }
    }

    return splitLists;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelConsumer<AllParkingViewModel, AllParkingViewModelState>(
      viewModel: viewModel,
      listener: _listener,
      builder: (context, state) => switch (state) {
        LoadingAllParkingViewModelState() ||
        ErrorAllParkingViewModelState() =>
          _buildLoading(context),
        LoadedAllParkingViewModelState(:final parking) =>
          _buildLoaded(context, parking),
      },
    );
  }

  @widgetFactory
  Widget _buildLoading(BuildContext context) {
    return CommonScaffold.standard(
      appBar: const CommonAppBar.standard(titleText: _kPageName),
      body: Padding(
        padding: Dimension.sm.verticalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, pageIndex) {
                  return Padding(
                    padding: pageIndex != 2
                        ? Dimension.xs.rightPadding
                        : EdgeInsets.zero,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: Dimension.xs.width,
                        mainAxisSpacing: Dimension.xs.width,
                        crossAxisCount: 2,
                        mainAxisExtent: (context.screenHeight / 2) -
                            const Dimension(15).height,
                      ),
                      itemBuilder: (context, gridIndex) {
                        return const ParkingWidget.loading();
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: const Dimension(13).height,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 2,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.fontSize,
                    dotWidth: 8.fontSize,
                    activeDotColor: context.colorScheme.primary,
                    dotColor: context.colorScheme.onSurfaceVariant,
                  ),
                  onDotClicked: _pageController.jumpToPage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @widgetFactory
  Widget _buildLoaded(BuildContext context, List<Parking> parking) {
    final splittedParking = _splitList(parking);

    return CommonScaffold.standard(
      appBar: const CommonAppBar.standard(titleText: _kPageName),
      body: Padding(
        padding: Dimension.sm.verticalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: splittedParking.length,
                itemBuilder: (context, pageIndex) {
                  final itemList = splittedParking[pageIndex];
                  return Padding(
                    padding: pageIndex != itemList.length
                        ? Dimension.xs.rightPadding
                        : EdgeInsets.zero,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: itemList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: Dimension.xs.width,
                        mainAxisSpacing: Dimension.xs.width,
                        crossAxisCount: 2,
                        mainAxisExtent: (context.screenHeight / 2) -
                            const Dimension(15).height,
                      ),
                      itemBuilder: (context, gridIndex) {
                        final item = itemList[gridIndex];
                        return ParkingWidget.loaded(
                          parking: item,
                          onTap: () {
                            Nav.pushNamed(
                              ParkingModuleRouting.parkingView.completePath,
                              arguments: item,
                            ).then((_) {
                              viewModel.loadPage();
                            });
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: const Dimension(13).height,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: splittedParking.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8.fontSize,
                    dotWidth: 8.fontSize,
                    activeDotColor: context.colorScheme.primary,
                    dotColor: context.colorScheme.onSurfaceVariant,
                  ),
                  onDotClicked: _pageController.jumpToPage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
