// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedPublicImpl _$$HomeFeedPublicImplFromJson(Map<String, dynamic> json) =>
    _$HomeFeedPublicImpl(
      type: json['type'] as String? ?? feed,
      sections: json['sections'] as List<dynamic>,
    );

Map<String, dynamic> _$$HomeFeedPublicImplToJson(
        _$HomeFeedPublicImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'sections': instance.sections,
    };
