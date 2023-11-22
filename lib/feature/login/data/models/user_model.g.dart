// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      img: json['img'] as String,
      rol: json['rol'] as String,
      status: json['status'] as bool,
      datetime: json['datetime'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'img': instance.img,
      'rol': instance.rol,
      'status': instance.status,
      'datetime': instance.datetime,
      'uid': instance.uid,
    };
