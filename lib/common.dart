library common;

const String API_URL = 'https://socket-dart-docker.herokuapp.com/';

class SocketEvent {
  final String name;
  final String room;
  final String text;
  final SocketEventType type;

  SocketEvent({this.name, this.room, this.text, this.type});

  Map toJson() => {
    'name': name,
    'room': room,
    'text': text,
    'type': type.toString()
  };

  factory SocketEvent.fromJson(Map<String, dynamic> json) {
    return SocketEvent(
      name: json['name'], 
      room: json['room'], 
      text: json['text'], 
      type: SocketEventType.values.firstWhere((element) => element.toString() == json['type'])
    );
  }
}

enum SocketEventType {
  enter_room, leavel_room, message
}

