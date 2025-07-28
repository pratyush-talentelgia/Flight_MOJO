class Endpoints {
  static const String baseAuthUrl = 'https://auth.opensky-network.org/auth/realms/opensky-network/protocol/openid-connect';
  static const String token = '$baseAuthUrl/token';
  static const String baseApiUrl = 'https://opensky-network.org/api';
  static const String flightStates = '$baseApiUrl/states/all';
}