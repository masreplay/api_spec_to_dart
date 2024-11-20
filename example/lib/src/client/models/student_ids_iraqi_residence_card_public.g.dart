// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_iraqi_residence_card_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsIraqiResidenceCardPublicImpl
    _$$StudentIdsIraqiResidenceCardPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentIdsIraqiResidenceCardPublicImpl(
          homeAddress: json['home_address'] as String?,
          streetAddress: json['street_address'] as String?,
          quarterAddress: json['quarter_address'] as String?,
          formNumber: json['form_number'] as String?,
          sequence: json['sequence'] as String?,
          dateOfIssue: json['date_of_issue'] == null
              ? null
              : DateTime.parse(json['date_of_issue'] as String),
          informationBureau: json['information_bureau'] == null
              ? null
              : InformationBureausPublic.fromJson(
                  json['information_bureau'] as Map<String, dynamic>),
          frontImage: json['front_image'] == null
              ? null
              : FilePublic.fromJson(
                  json['front_image'] as Map<String, dynamic>),
          backImage: json['back_image'] == null
              ? null
              : FilePublic.fromJson(json['back_image'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StudentIdsIraqiResidenceCardPublicImplToJson(
        _$StudentIdsIraqiResidenceCardPublicImpl instance) =>
    <String, dynamic>{
      'home_address': instance.homeAddress,
      'street_address': instance.streetAddress,
      'quarter_address': instance.quarterAddress,
      'form_number': instance.formNumber,
      'sequence': instance.sequence,
      'date_of_issue': instance.dateOfIssue?.toIso8601String(),
      'information_bureau': instance.informationBureau,
      'front_image': instance.frontImage,
      'back_image': instance.backImage,
    };
