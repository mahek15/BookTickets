import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            //blue part
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  children: List.generate(10, (index) => const SizedBox(
                                    width: 3, height: 1,child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                  ),
                                  )
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle:1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,))),
                        ]
                      )
                      ),
                      const ThickContainer(),
                      const Spacer(),
                      Text("LDN",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),child: Text("New-York", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: AppLayout.getHeight(100),child: Text("London", style: Styles.headLineStyle4.copyWith(color: Colors.white),textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //red part with curve
            Container(
              color: Styles.orangeColor,
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )
                    ),
                  ),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(15, (index) => const SizedBox(
                              width: 5,height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                          );
                        },
                      ),
                )),
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
            //red bottom part
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),),
              ),
              padding: const EdgeInsets.only(left:16, right:16, top:10, bottom:16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("DATE", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("8.00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Departure Time", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Number", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
