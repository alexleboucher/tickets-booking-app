class Ticket {
  const Ticket({
    required this.departureCode,
    required this.departureName,
    required this.arrivalCode,
    required this.arrivalName,
    required this.flightDuration,
    required this.departureDate,
    required this.ticketNumber,
  });

  final String departureCode;
  final String arrivalCode;
  final String departureName;
  final String arrivalName;
  final Duration flightDuration;
  final DateTime departureDate;
  final int ticketNumber;
}
