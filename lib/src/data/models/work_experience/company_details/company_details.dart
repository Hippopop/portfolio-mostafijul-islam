import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_details.freezed.dart';
part 'company_details.g.dart';

@freezed
class CompanyDetails with _$CompanyDetails {
  const factory CompanyDetails({
    required String name,
    required String logo,
    required String link,
    required String desc,
    required DateTime startDate,
    DateTime? endDate,
  }) = _CompanyDetails;

  factory CompanyDetails.fromJson(Map<String, Object?> json) =>
      _$CompanyDetailsFromJson(json);
}
