import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qment/controller/calculator_controller.dart';
import 'package:qment/presentation/resources/color_manager.dart';
import 'package:qment/presentation/resources/font_manager.dart';
import 'package:qment/presentation/resources/styles_manager.dart';
import 'package:qment/shared/components/divider_shadow.dart';
import 'package:qment/shared/components/num_pad_button.dart';


class QmentCalculatorApp extends StatelessWidget {
  QmentCalculatorApp({Key? key}) : super(key: key);

  final CalculatorControl controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.colorLight,
      body: SafeArea(
          child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            /// Top Page
              Expanded(
              child: Container(
                // color: Colors.white,
                // height: MediaQuery.of(context).size.height * 0.29,
                ///List of Operation
                child: ListView(
                  physics: ScrollPhysics(),
                  controller: controller.scrollController,
                  children: [
                    ///1
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '5000',
                                    textAlign: TextAlign.left,
                                    style: getRegularStyle(
                                      fontSize: FontSize.s14,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: false
                                      ? Text(
                                          '+',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'الجمعية',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '1500',
                                    textAlign: TextAlign.left,
                                    style: getRegularStyle(
                                      fontSize: FontSize.s14,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: true
                                      ? Text(
                                          '+',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'قسط الموبايل',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    ///2
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '10000',
                                    textAlign: TextAlign.left,
                                    style: getRegularStyle(
                                      fontSize: FontSize.s14,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: true
                                      ? Text(
                                          '+',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'فلوس المحامى',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '500',
                                    textAlign: TextAlign.left,
                                    style: getRegularStyle(
                                      fontSize: FontSize.s14,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: true
                                      ? Text(
                                          '+',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'محمود محمد',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    ///3
                    Column(
                      children: [
                        Container(
                          height: 1,
                          color: Colors.blueGrey.shade300,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '17000',
                                    textAlign: TextAlign.left,
                                    style: getSemiBoldStyle(
                                      fontSize: FontSize.s20,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: true
                                      ? Text(
                                          '=',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'اجمالى الفلوس الى هطلعها',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                    ///3
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '3000',
                                    textAlign: TextAlign.left,
                                    style: getRegularStyle(
                                      fontSize: FontSize.s14,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: true
                                      ? Text(
                                          '+',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'باقى ايجار و خدمات الشهر الى فات',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '70000',
                                    textAlign: TextAlign.left,
                                    style: getRegularStyle(
                                      fontSize: FontSize.s14,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: true
                                      ? Text(
                                          '+',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'جدو فيريرا',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    ///4
                    Column(
                      children: [
                        Container(
                          height: 1,
                          color: Colors.blueGrey.shade300,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  left: 20,
                                  child: Text(
                                    '90000',
                                    textAlign: TextAlign.left,
                                    style: getSemiBoldStyle(
                                      fontSize: FontSize.s20,
                                      color: ColorManager.textColorBlueGrey600,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: true
                                      ? Text(
                                          '=',
                                          style: getSemiBoldStyle(
                                            fontSize: FontSize.s14,
                                            color:
                                                ColorManager.textColorBlueGrey600,
                                          ),
                                        )
                                      : null,
                                ),
                              ],
                            ),
                            Text(
                              'كل الفلوس الى عليا',
                              textAlign: TextAlign.center,
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s14,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /// Bottom Page
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  /// Total
                  dividerShadow(),
                  Column(
                    children: [
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '90000',
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s28,
                                color: ColorManager.textColorBlueGrey600,
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Total',
                              style: getSemiBoldStyle(
                                fontSize: FontSize.s28,
                                color: ColorManager.textColorBlueGrey300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                  dividerShadow(),
                  /// NumPad
                  Container(
                    padding: EdgeInsets.only(left: 24, top: 10, right: 24),
                    // height: MediaQuery.of(context).size.height * 0.5,
                    child:
                    // GetBuilder<CalculatorControl>(
                    //   builder: (controller) {
                    //     myKey = GlobalKey();
                    //     controller.setKey(myKey!, false);
                    //     return
                          Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NumPadButton(
                                index: 0,
                                title: 'C',
                                textColor: Colors.red,
                                isNum: false,
                                onPressed: () => controller.resetAll('C'),
                              ),
                              NumPadButton(
                                  index: 1,
                                  title: '%',
                                  textColor: Colors.teal,
                                  isNum: false,
                                onPressed: () => controller.resetAll('%'),
                              ),
                              NumPadButton(
                                  index: 2,
                                  icon: Icons.backspace_outlined,
                                  iconColor: Colors.teal,
                                  isNum: false,
                                onPressed: () => controller.deleteLastEntry('DEL'),
                              ),
                              NumPadButton(
                                  index: 3,
                                  title: '÷',
                                  textColor: Colors.teal,
                                  isNum: false,
                                onPressed: () => controller.selectOperation('÷'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NumPadButton(
                                  index: 4,
                                  title: '7',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('7'),
                              ),
                              NumPadButton(
                                  index: 5,
                                  title: '8',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('8'),
                              ),
                              NumPadButton(
                                  index: 6,
                                  title: '9',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('9'),
                              ),
                              NumPadButton(
                                  index: 7,
                                  title: '×',
                                  textColor: Colors.teal,
                                  isNum: false,
                                onPressed: () => controller.selectOperation('×'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NumPadButton(
                                  index: 8,
                                  title: '4',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('4'),
                              ),
                              NumPadButton(
                                  index: 9,
                                  title: '5',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('5'),
                              ),
                              NumPadButton(
                                  index: 10,
                                  title: '6',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('6'),
                              ),
                              NumPadButton(
                                  index: 11,
                                  title: '-',
                                  textColor: Colors.teal,
                                  isNum: false,
                                onPressed: () => controller.selectOperation('-'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NumPadButton(
                                  index: 12,
                                  title: '1',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('1'),
                              ),
                              NumPadButton(
                                  index: 13,
                                  title: '2',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('2'),
                              ),
                              NumPadButton(
                                  index: 14,
                                  title: '3',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('3'),
                              ),
                              NumPadButton(
                                  index: 15,
                                  title: '+',
                                  textColor: Colors.teal,
                                  isNum: false,
                                onPressed: () => controller.selectOperation('+',),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NumPadButton(
                                  index: 16,
                                  title: '00',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('00'),
                              ),
                              NumPadButton(
                                  index: 17,
                                  title: '0',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addNumber('0'),
                              ),
                              NumPadButton(
                                  index: 18,
                                  title: '.',
                                  textColor: ColorManager.numberButtonColor,
                                  isNum: true,
                                onPressed: () => controller.addDecimalPoint('.'),
                              ),
                              Obx(
                                    ()=> NumPadButton(
                                    index: 19,
                                    title: '=',
                                    textColor: controller.isPressed.value && controller.buttons.elementAt(19) == controller.thisIsString.value ? ColorManager.textColorBlueGrey300 : Colors.white,
                                    isNum: false,
                                    backGroundButtonColor: controller.isPressed.value && controller.buttons.elementAt(19) == controller.thisIsString.value ? ColorManager.colorLightShadowUp : Colors.teal,
                                  onPressed: () => controller.calculateResult('='),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // }
                    // ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  // TODO: Display a banner when ready
                  Container(
                    child: Visibility(
                      visible: true,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: true
                            ? Container(
                          color: ColorManager.colorDark,
                          // cubitt.isBannerAdReady
                          width: 320,
                          // cubit.bannerAdGlobal.size.width.toDouble(),
                          height:
                          50, //cubit.bannerAdGlobal.size.height.toDouble(),
                          // child: AdWidget(ad: cubit.bannerAdGlobal),
                        )
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
