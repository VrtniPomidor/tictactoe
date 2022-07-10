class ServerException implements Exception {
  final String message;

  ServerException({this.message = ""});
}

class CacheException implements Exception {}

class TokenNotFoundException implements Exception {}

class UserNotFoundException implements Exception {}
