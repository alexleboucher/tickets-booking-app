import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:tickets_booking_app/utils/duration.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';
import 'package:tickets_booking_app/widgets/ui/text/title_text.dart';

const topTicketColor = Color(0xFF526799);
const bottomTicketColor = Color.fromARGB(255, 253, 143, 115);

class TicketView extends StatelessWidget {
  const TicketView({
    super.key,
    required this.width,
    required this.departureCode,
    required this.departureName,
    required this.arrivalCode,
    required this.arrivalName,
    required this.flightDuration,
    required this.departureDate,
    required this.ticketNumber,
  });

  final double width;
  final String departureCode;
  final String arrivalCode;
  final String departureName;
  final String arrivalName;
  final Duration flightDuration;
  final DateTime departureDate;
  final int ticketNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: topTicketColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                      departureCode,
                      customization:
                          const TextCustomization(color: Colors.white),
                    ),
                    const Gap(5),
                    TitleText(
                      departureName,
                      textStyle: TitleStyle.titleSmall,
                      customization:
                          const TextCustomization(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const AirplaneLine(),
                    const Gap(5),
                    TitleText(
                      getDurationFormatString(
                        flightDuration,
                        hoursPrefix: 'H ',
                        minutesPrefix: 'M',
                      ),
                      textStyle: TitleStyle.titleMedium,
                      customization: const TextCustomization(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TitleText(
                      arrivalCode,
                      customization:
                          const TextCustomization(color: Colors.white),
                    ),
                    const Gap(5),
                    TitleText(
                      arrivalName,
                      textStyle: TitleStyle.titleSmall,
                      customization:
                          const TextCustomization(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: bottomTicketColor,
            ),
            child: Column(
              children: [
                const Gap(5),
                const CutLine(),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 16,
                    right: 16,
                    left: 16,
                    top: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleText(
                            DateFormat('d MMM').format(departureDate),
                            customization:
                                const TextCustomization(color: Colors.white),
                          ),
                          const Gap(3),
                          const TitleText(
                            'Date',
                            textStyle: TitleStyle.titleSmall,
                            customization:
                                TextCustomization(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TitleText(
                            DateFormat('jm').format(departureDate),
                            customization:
                                const TextCustomization(color: Colors.white),
                          ),
                          const Gap(3),
                          const TitleText(
                            'Departure time',
                            textStyle: TitleStyle.titleSmall,
                            customization: TextCustomization(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TitleText(
                            ticketNumber.toString(),
                            customization:
                                const TextCustomization(color: Colors.white),
                          ),
                          const Gap(3),
                          const TitleText(
                            'Number',
                            textStyle: TitleStyle.titleSmall,
                            customization:
                                TextCustomization(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CutLine extends StatelessWidget {
  const CutLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
          height: 20,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  (constraints.constrainWidth() / 12).floor(),
                  (index) => const SizedBox(
                    width: 5,
                    height: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          width: 10,
          height: 20,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AirplaneLine extends StatelessWidget {
  const AirplaneLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              width: 2.5,
              color: Colors.white,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  10,
                  (index) => const SizedBox(
                    height: 1,
                    width: 3,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Transform.rotate(
              angle: 1.5,
              child: const Icon(
                Icons.local_airport_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              width: 2.5,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
