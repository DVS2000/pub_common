import 'package:common/common.dart';
import 'package:test/test.dart';

void main() {
  test('fromJson to json', () {
    final json = {
      'name': 'Dorivaldo',
      'room': 'sala',
      'text': 'Qualquer',
      'type': 'SocketEventType.enter_room'
    };

    final event = SocketEvent.fromJson(json);

    expect(event.name, 'Dorivaldoxxx');
    expect(event.type, SocketEventType.enter_room);
    expect(event.toJson(), json);
  });
}
