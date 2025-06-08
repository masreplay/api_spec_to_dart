import 'dart:io';

import 'package:dio/dio.dart';

class AppResponse {
  final String name;
  final String version;

  const AppResponse({
    required this.name,
    required this.version,
  });

  factory AppResponse.fromJson(Map<String, dynamic> map) {
    return AppResponse(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }
}

class AppDataRequestBody {
  final DateTime date;

  AppDataRequestBody({required this.date});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'date': date.toIso8601String(),
    };
  }
}

class MessageResponse {
  final String message;

  MessageResponse({
    this.message = 'Bad Request',
  });

  factory MessageResponse.fromJson(Map<String, dynamic> map) {
    return MessageResponse(
      message: map['message'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'message': message,
    };
  }
}

class UserResponse {
  final String name;
  final String email;

  const UserResponse({
    required this.name,
    required this.email,
  });

  factory UserResponse.fromJson(Map<String, dynamic> map) {
    return UserResponse(
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
    };
  }
}

class CreateUserRequestBody {
  final String name;
  final String email;
  final File image;

  CreateUserRequestBody({
    required this.name,
    required this.email,
    required this.image,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      "image": MultipartFile.fromFileSync(
        image.path,
        filename: image.path.split(Platform.pathSeparator).last,
      )
    };
  }
}

class UpdateUserRequestBody {
  final String name;
  final String email;

  UpdateUserRequestBody({
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
    };
  }
}
