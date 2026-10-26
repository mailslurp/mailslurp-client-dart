//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupUsageSummaryDto {
  /// Returns a new [EmailWarmupUsageSummaryDto] instance.
  EmailWarmupUsageSummaryDto({
    required this.billingMonth,
    required this.billingMonthEndExclusive,
    required this.includedSenderSeats,
    required this.purchasedSenderSeats,
    required this.totalSenderCapacity,
    required this.activeSenderAssignments,
    required this.includedCreditsPerSender,
    required this.includedCreditsTotal,
    required this.includedCreditsConsumed,
    required this.includedCreditsRemaining,
    required this.reservedCredits,
    required this.acceptedCredits,
    required this.ambiguousCredits,
    required this.billableAcceptedCredits,
    required this.billablePendingCredits,
    required this.controlledRecipientCreditWeight,
    required this.premiumRecipientCreditWeight,
  });

  DateTime billingMonth;

  DateTime billingMonthEndExclusive;

  int includedSenderSeats;

  int purchasedSenderSeats;

  int totalSenderCapacity;

  int activeSenderAssignments;

  int includedCreditsPerSender;

  int includedCreditsTotal;

  int includedCreditsConsumed;

  int includedCreditsRemaining;

  int reservedCredits;

  int acceptedCredits;

  int ambiguousCredits;

  int billableAcceptedCredits;

  int billablePendingCredits;

  int controlledRecipientCreditWeight;

  int premiumRecipientCreditWeight;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupUsageSummaryDto &&
     other.billingMonth == billingMonth &&
     other.billingMonthEndExclusive == billingMonthEndExclusive &&
     other.includedSenderSeats == includedSenderSeats &&
     other.purchasedSenderSeats == purchasedSenderSeats &&
     other.totalSenderCapacity == totalSenderCapacity &&
     other.activeSenderAssignments == activeSenderAssignments &&
     other.includedCreditsPerSender == includedCreditsPerSender &&
     other.includedCreditsTotal == includedCreditsTotal &&
     other.includedCreditsConsumed == includedCreditsConsumed &&
     other.includedCreditsRemaining == includedCreditsRemaining &&
     other.reservedCredits == reservedCredits &&
     other.acceptedCredits == acceptedCredits &&
     other.ambiguousCredits == ambiguousCredits &&
     other.billableAcceptedCredits == billableAcceptedCredits &&
     other.billablePendingCredits == billablePendingCredits &&
     other.controlledRecipientCreditWeight == controlledRecipientCreditWeight &&
     other.premiumRecipientCreditWeight == premiumRecipientCreditWeight;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (billingMonth.hashCode) +
    (billingMonthEndExclusive.hashCode) +
    (includedSenderSeats.hashCode) +
    (purchasedSenderSeats.hashCode) +
    (totalSenderCapacity.hashCode) +
    (activeSenderAssignments.hashCode) +
    (includedCreditsPerSender.hashCode) +
    (includedCreditsTotal.hashCode) +
    (includedCreditsConsumed.hashCode) +
    (includedCreditsRemaining.hashCode) +
    (reservedCredits.hashCode) +
    (acceptedCredits.hashCode) +
    (ambiguousCredits.hashCode) +
    (billableAcceptedCredits.hashCode) +
    (billablePendingCredits.hashCode) +
    (controlledRecipientCreditWeight.hashCode) +
    (premiumRecipientCreditWeight.hashCode);

  @override
  String toString() => 'EmailWarmupUsageSummaryDto[billingMonth=$billingMonth, billingMonthEndExclusive=$billingMonthEndExclusive, includedSenderSeats=$includedSenderSeats, purchasedSenderSeats=$purchasedSenderSeats, totalSenderCapacity=$totalSenderCapacity, activeSenderAssignments=$activeSenderAssignments, includedCreditsPerSender=$includedCreditsPerSender, includedCreditsTotal=$includedCreditsTotal, includedCreditsConsumed=$includedCreditsConsumed, includedCreditsRemaining=$includedCreditsRemaining, reservedCredits=$reservedCredits, acceptedCredits=$acceptedCredits, ambiguousCredits=$ambiguousCredits, billableAcceptedCredits=$billableAcceptedCredits, billablePendingCredits=$billablePendingCredits, controlledRecipientCreditWeight=$controlledRecipientCreditWeight, premiumRecipientCreditWeight=$premiumRecipientCreditWeight]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'billingMonth'] = _dateFormatter.format(this.billingMonth.toUtc());
      json[r'billingMonthEndExclusive'] = _dateFormatter.format(this.billingMonthEndExclusive.toUtc());
      json[r'includedSenderSeats'] = this.includedSenderSeats;
      json[r'purchasedSenderSeats'] = this.purchasedSenderSeats;
      json[r'totalSenderCapacity'] = this.totalSenderCapacity;
      json[r'activeSenderAssignments'] = this.activeSenderAssignments;
      json[r'includedCreditsPerSender'] = this.includedCreditsPerSender;
      json[r'includedCreditsTotal'] = this.includedCreditsTotal;
      json[r'includedCreditsConsumed'] = this.includedCreditsConsumed;
      json[r'includedCreditsRemaining'] = this.includedCreditsRemaining;
      json[r'reservedCredits'] = this.reservedCredits;
      json[r'acceptedCredits'] = this.acceptedCredits;
      json[r'ambiguousCredits'] = this.ambiguousCredits;
      json[r'billableAcceptedCredits'] = this.billableAcceptedCredits;
      json[r'billablePendingCredits'] = this.billablePendingCredits;
      json[r'controlledRecipientCreditWeight'] = this.controlledRecipientCreditWeight;
      json[r'premiumRecipientCreditWeight'] = this.premiumRecipientCreditWeight;
    return json;
  }

  /// Returns a new [EmailWarmupUsageSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupUsageSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupUsageSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupUsageSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupUsageSummaryDto(
        billingMonth: mapDateTime(json, r'billingMonth', '')!,
        billingMonthEndExclusive: mapDateTime(json, r'billingMonthEndExclusive', '')!,
        includedSenderSeats: mapValueOfType<int>(json, r'includedSenderSeats')!,
        purchasedSenderSeats: mapValueOfType<int>(json, r'purchasedSenderSeats')!,
        totalSenderCapacity: mapValueOfType<int>(json, r'totalSenderCapacity')!,
        activeSenderAssignments: mapValueOfType<int>(json, r'activeSenderAssignments')!,
        includedCreditsPerSender: mapValueOfType<int>(json, r'includedCreditsPerSender')!,
        includedCreditsTotal: mapValueOfType<int>(json, r'includedCreditsTotal')!,
        includedCreditsConsumed: mapValueOfType<int>(json, r'includedCreditsConsumed')!,
        includedCreditsRemaining: mapValueOfType<int>(json, r'includedCreditsRemaining')!,
        reservedCredits: mapValueOfType<int>(json, r'reservedCredits')!,
        acceptedCredits: mapValueOfType<int>(json, r'acceptedCredits')!,
        ambiguousCredits: mapValueOfType<int>(json, r'ambiguousCredits')!,
        billableAcceptedCredits: mapValueOfType<int>(json, r'billableAcceptedCredits')!,
        billablePendingCredits: mapValueOfType<int>(json, r'billablePendingCredits')!,
        controlledRecipientCreditWeight: mapValueOfType<int>(json, r'controlledRecipientCreditWeight')!,
        premiumRecipientCreditWeight: mapValueOfType<int>(json, r'premiumRecipientCreditWeight')!,
      );
    }
    return null;
  }

  static List<EmailWarmupUsageSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupUsageSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupUsageSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupUsageSummaryDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupUsageSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupUsageSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupUsageSummaryDto-objects as value to a dart map
  static Map<String, List<EmailWarmupUsageSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupUsageSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupUsageSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'billingMonth',
    'billingMonthEndExclusive',
    'includedSenderSeats',
    'purchasedSenderSeats',
    'totalSenderCapacity',
    'activeSenderAssignments',
    'includedCreditsPerSender',
    'includedCreditsTotal',
    'includedCreditsConsumed',
    'includedCreditsRemaining',
    'reservedCredits',
    'acceptedCredits',
    'ambiguousCredits',
    'billableAcceptedCredits',
    'billablePendingCredits',
    'controlledRecipientCreditWeight',
    'premiumRecipientCreditWeight',
  };
}

