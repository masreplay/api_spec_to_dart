import 'package:faker/faker.dart';

final _faker = Faker();

class swaggerApiClientMock {
  const swaggerApiClientMock._();

  static swaggerApiClientMock get instance => _instance;

  static swaggerApiClientMock _instance = const swaggerApiClientMock._();

  String getNotificationToken() => _faker.guid.guid();

  Uri getProfileImage() => Uri.parse(_faker.image.loremPicsum());

  String getEmail() => _faker.internet.email();

  String getPhoneNumberIQ() => random.fromPattern(['077########']);

  String getOtpCode() => random.fromPattern(['####']);
}
