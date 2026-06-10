class Room {
  final String roomNumber;
  final String roomName;
  final String floor;
  final String block;
  final String description;

  Room({
    required this.roomNumber,
    required this.roomName,
    required this.floor,
    required this.block,
    required this.description,
  });

  @override
  String toString() {
    return '$roomNumber - $roomName';
  }
}