import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_booking_app/utils/duration.dart';
import 'package:tickets_booking_app/utils/layout.dart';
import 'package:tickets_booking_app/widgets/ui/text/text_customization.dart';
import 'package:tickets_booking_app/widgets/ui/text/title_text.dart';

const topTicketColor = Color(0xFF526799);
const bottomTicketColor = Color.fromARGB(255, 253, 143, 115);

class TicketView extends StatelessWidget {
  const TicketView({
    super.key,
    required this.departureCode,
    required this.departureName,
    required this.arrivalCode,
    required this.arrivalName,
    required this.flightDuration,
    // required this.departureDate,
  });

  final String departureCode;
  final String arrivalCode;
  final String departureName;
  final String arrivalName;
  final Duration flightDuration;
  // final DateTime departureDate;

  @override
  Widget build(BuildContext context) {
    final size = getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
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
                    Row(
                      children: [
                        const RoundPoint(),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 25,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                        const RoundPoint(),
                      ],
                    ),
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
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: bottomTicketColor,
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
                    Row(
                      children: [
                        const RoundPoint(),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 25,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                        const RoundPoint(),
                      ],
                    ),
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
        ],
      ),
    );
  }
}

class RoundPoint extends StatelessWidget {
  const RoundPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          width: 2.5,
          color: Colors.white,
        ),
      ),
    );
  }
}
