String getDurationFormatString(
  Duration duration, {
  bool showSeconds = false,
  bool twoDigitsHours = false,
  String hoursPrefix = ':',
  String minutesPrefix = ':',
  String secondsPrefix = '',
}) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  String twoDigitHours =
      duration.inHours.toString().padLeft(twoDigitsHours ? 2 : 1, '0');
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

  var formattedHour =
      '$twoDigitHours$hoursPrefix$twoDigitMinutes$minutesPrefix';

  if (showSeconds) {
    formattedHour += '$twoDigitSeconds$secondsPrefix';
  }

  return formattedHour;
}
