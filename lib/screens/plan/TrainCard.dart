import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gym_carrey/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrainCard extends StatefulWidget {
  final String title;
  final rep;
  final set;
  final double width;
  const TrainCard(
      {super.key,
      required this.width,
      required this.title,
      required this.rep,
      required this.set});

  @override
  State<TrainCard> createState() => _TrainCardState();
}

class _TrainCardState extends State<TrainCard> {
  List svg = [
    "assets/svg/Jumps.svg",
    "assets/svg/Running.svg",
    "assets/svg/Weights.svg"
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.only(right: 5),
        width: widget.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: kBlueColor.withOpacity(0.3),
            blurRadius: 15.0,
          )
        ], color: kWhiteColor, borderRadius: BorderRadius.circular(10)),
        child: ExpansionTile(
          title: Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    svg[Random().nextInt(3)],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: widget.width / 2.5,
                        child: Text(
                          widget
                              .title, //Get the vehicle name without immatriculation
                          style: const TextStyle(
                            color: kBlackText,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              )),
          expandedAlignment: Alignment.topLeft,
          childrenPadding: const EdgeInsets.all(10.0),
          children: [
            InfoDetailExpand(
              widget: widget,
              icon: const Icon(
                Icons.timer,
                color: kOrangeColor,
              ),
              text: '10 sec',
            ),
            InfoDetailExpand(
              widget: widget,
              icon: const Icon(
                Icons.refresh_sharp,
                color: kOrangeColor,
              ),
              text: '${widget.set} * ${widget.rep}',
            ),
            InfoDetailExpand(
              widget: widget,
              icon: const Icon(
                Icons.boy_outlined,
                color: kOrangeColor,
              ),
              text: 'Legs',
            ),
            const SizedBox(
              height: 10,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //       fixedSize: Size(size.width / 2.8, 20),
            //       backgroundColor: kBlackText,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20)),
            //       textStyle: const TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.w300,
            //           fontFamily: 'Poppins',
            //           color: kWhiteColor)),
            //   child: const Text(
            //     'START',
            //     style: TextStyle(
            //       fontWeight: FontWeight.w700,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class InfoDetailExpand extends StatelessWidget {
  const InfoDetailExpand(
      {Key? key, required this.widget, required this.icon, required this.text})
      : super(key: key);

  final TrainCard widget;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              text,
              style: expandTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
