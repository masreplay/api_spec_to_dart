// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_ids_iraqi_residence_card_update_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentIdsIraqiResidenceCardUpdatePublicImpl
    _$$StudentIdsIraqiResidenceCardUpdatePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentIdsIraqiResidenceCardUpdatePublicImpl(
          informationBureauId: (json['information_bureau_id'] as num).toInt(),
          iraqiResidenceCardHomeAddress:
              json['iraqi_residence_card_home_address'] as String,
          iraqiResidenceCardStreetAddress:
              json['iraqi_residence_card_street_address'] as String,
          iraqiResidenceCardQuarterAddress:
              json['iraqi_residence_card_quarter_address'] as String,
          iraqiResidenceCardFormNumber:
              json['iraqi_residence_card_form_number'] as String,
          iraqiResidenceCardSequence:
              json['iraqi_residence_card_sequence'] as String,
          iraqiResidenceCardDateOfIssue: DateTime.parse(
              json['iraqi_residence_card_date_of_issue'] as String),
        );

Map<String, dynamic> _$$StudentIdsIraqiResidenceCardUpdatePublicImplToJson(
        _$StudentIdsIraqiResidenceCardUpdatePublicImpl instance) =>
    <String, dynamic>{
      'information_bureau_id': instance.informationBureauId,
      'iraqi_residence_card_home_address':
          instance.iraqiResidenceCardHomeAddress,
      'iraqi_residence_card_street_address':
          instance.iraqiResidenceCardStreetAddress,
      'iraqi_residence_card_quarter_address':
          instance.iraqiResidenceCardQuarterAddress,
      'iraqi_residence_card_form_number': instance.iraqiResidenceCardFormNumber,
      'iraqi_residence_card_sequence': instance.iraqiResidenceCardSequence,
      'iraqi_residence_card_date_of_issue':
          instance.iraqiResidenceCardDateOfIssue.toIso8601String(),
    };
