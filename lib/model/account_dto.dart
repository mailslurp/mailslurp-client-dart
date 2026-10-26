//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountDto {
  /// Returns a new [AccountDto] instance.
  AccountDto({
    required this.user,
    this.subscription,
    this.addons = const [],
    this.intercomHash,
    this.churnkeyHash,
    required this.currentPeriod,
    required this.requiresVerification,
    this.requiredVerificationTypes = const [],
    required this.defaultCurrency,
    required this.defaultSchedule,
    this.hasBadSubscriptionItemStatuses,
    required this.trialsEnabled,
    required this.hasAnyActiveTrialSubscription,
    required this.canEndTrial,
    this.freeAccountExpiresInDays,
    required this.freeAccountExpired,
    required this.freeAccountEvaluationDenied,
    this.freeAccountEvaluationDeniedReason,
    required this.freeAccountEvaluationDeniedAllowTrial,
    required this.freeAccountMode,
    this.requiresTermsAndConditionsAgreement,
    required this.enforceSendingAgreement,
    this.adminSendPause,
    this.organizationName,
    this.organizationSlug,
    this.organizationBrandColor,
    this.organizationLogoUrl,
    this.userPermissionRole,
    this.environmentAccounts,
    required this.domainPlanQuantity,
    required this.assignedDomainCount,
    this.effectiveDomainLimit,
    required this.requiresDashboardOnboardingV2,
  });

  UserDto user;

  SubscriptionDto? subscription;

  List<AccountDtoAddonsEnum>? addons;

  /// disabled
  String? intercomHash;

  /// disabled
  String? churnkeyHash;

  CurrentPeriodDto currentPeriod;

  bool requiresVerification;

  List<AccountDtoRequiredVerificationTypesEnum>? requiredVerificationTypes;

  AccountDtoDefaultCurrencyEnum defaultCurrency;

  AccountDtoDefaultScheduleEnum defaultSchedule;

  bool? hasBadSubscriptionItemStatuses;

  bool trialsEnabled;

  bool hasAnyActiveTrialSubscription;

  bool canEndTrial;

  int? freeAccountExpiresInDays;

  bool freeAccountExpired;

  bool freeAccountEvaluationDenied;

  AccountDtoFreeAccountEvaluationDeniedReasonEnum? freeAccountEvaluationDeniedReason;

  bool freeAccountEvaluationDeniedAllowTrial;

  AccountDtoFreeAccountModeEnum freeAccountMode;

  bool? requiresTermsAndConditionsAgreement;

  bool enforceSendingAgreement;

  AdminSendPauseDto? adminSendPause;

  String? organizationName;

  String? organizationSlug;

  String? organizationBrandColor;

  String? organizationLogoUrl;

  String? userPermissionRole;

  EnvironmentAccountsDto? environmentAccounts;

  int domainPlanQuantity;

  int assignedDomainCount;

  int? effectiveDomainLimit;

  bool requiresDashboardOnboardingV2;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountDto &&
     other.user == user &&
     other.subscription == subscription &&
     other.addons == addons &&
     other.intercomHash == intercomHash &&
     other.churnkeyHash == churnkeyHash &&
     other.currentPeriod == currentPeriod &&
     other.requiresVerification == requiresVerification &&
     other.requiredVerificationTypes == requiredVerificationTypes &&
     other.defaultCurrency == defaultCurrency &&
     other.defaultSchedule == defaultSchedule &&
     other.hasBadSubscriptionItemStatuses == hasBadSubscriptionItemStatuses &&
     other.trialsEnabled == trialsEnabled &&
     other.hasAnyActiveTrialSubscription == hasAnyActiveTrialSubscription &&
     other.canEndTrial == canEndTrial &&
     other.freeAccountExpiresInDays == freeAccountExpiresInDays &&
     other.freeAccountExpired == freeAccountExpired &&
     other.freeAccountEvaluationDenied == freeAccountEvaluationDenied &&
     other.freeAccountEvaluationDeniedReason == freeAccountEvaluationDeniedReason &&
     other.freeAccountEvaluationDeniedAllowTrial == freeAccountEvaluationDeniedAllowTrial &&
     other.freeAccountMode == freeAccountMode &&
     other.requiresTermsAndConditionsAgreement == requiresTermsAndConditionsAgreement &&
     other.enforceSendingAgreement == enforceSendingAgreement &&
     other.adminSendPause == adminSendPause &&
     other.organizationName == organizationName &&
     other.organizationSlug == organizationSlug &&
     other.organizationBrandColor == organizationBrandColor &&
     other.organizationLogoUrl == organizationLogoUrl &&
     other.userPermissionRole == userPermissionRole &&
     other.environmentAccounts == environmentAccounts &&
     other.domainPlanQuantity == domainPlanQuantity &&
     other.assignedDomainCount == assignedDomainCount &&
     other.effectiveDomainLimit == effectiveDomainLimit &&
     other.requiresDashboardOnboardingV2 == requiresDashboardOnboardingV2;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (user.hashCode) +
    (subscription == null ? 0 : subscription!.hashCode) +
    (addons == null ? 0 : addons!.hashCode) +
    (intercomHash == null ? 0 : intercomHash!.hashCode) +
    (churnkeyHash == null ? 0 : churnkeyHash!.hashCode) +
    (currentPeriod.hashCode) +
    (requiresVerification.hashCode) +
    (requiredVerificationTypes == null ? 0 : requiredVerificationTypes!.hashCode) +
    (defaultCurrency.hashCode) +
    (defaultSchedule.hashCode) +
    (hasBadSubscriptionItemStatuses == null ? 0 : hasBadSubscriptionItemStatuses!.hashCode) +
    (trialsEnabled.hashCode) +
    (hasAnyActiveTrialSubscription.hashCode) +
    (canEndTrial.hashCode) +
    (freeAccountExpiresInDays == null ? 0 : freeAccountExpiresInDays!.hashCode) +
    (freeAccountExpired.hashCode) +
    (freeAccountEvaluationDenied.hashCode) +
    (freeAccountEvaluationDeniedReason == null ? 0 : freeAccountEvaluationDeniedReason!.hashCode) +
    (freeAccountEvaluationDeniedAllowTrial.hashCode) +
    (freeAccountMode.hashCode) +
    (requiresTermsAndConditionsAgreement == null ? 0 : requiresTermsAndConditionsAgreement!.hashCode) +
    (enforceSendingAgreement.hashCode) +
    (adminSendPause == null ? 0 : adminSendPause!.hashCode) +
    (organizationName == null ? 0 : organizationName!.hashCode) +
    (organizationSlug == null ? 0 : organizationSlug!.hashCode) +
    (organizationBrandColor == null ? 0 : organizationBrandColor!.hashCode) +
    (organizationLogoUrl == null ? 0 : organizationLogoUrl!.hashCode) +
    (userPermissionRole == null ? 0 : userPermissionRole!.hashCode) +
    (environmentAccounts == null ? 0 : environmentAccounts!.hashCode) +
    (domainPlanQuantity.hashCode) +
    (assignedDomainCount.hashCode) +
    (effectiveDomainLimit == null ? 0 : effectiveDomainLimit!.hashCode) +
    (requiresDashboardOnboardingV2.hashCode);

  @override
  String toString() => 'AccountDto[user=$user, subscription=$subscription, addons=$addons, intercomHash=$intercomHash, churnkeyHash=$churnkeyHash, currentPeriod=$currentPeriod, requiresVerification=$requiresVerification, requiredVerificationTypes=$requiredVerificationTypes, defaultCurrency=$defaultCurrency, defaultSchedule=$defaultSchedule, hasBadSubscriptionItemStatuses=$hasBadSubscriptionItemStatuses, trialsEnabled=$trialsEnabled, hasAnyActiveTrialSubscription=$hasAnyActiveTrialSubscription, canEndTrial=$canEndTrial, freeAccountExpiresInDays=$freeAccountExpiresInDays, freeAccountExpired=$freeAccountExpired, freeAccountEvaluationDenied=$freeAccountEvaluationDenied, freeAccountEvaluationDeniedReason=$freeAccountEvaluationDeniedReason, freeAccountEvaluationDeniedAllowTrial=$freeAccountEvaluationDeniedAllowTrial, freeAccountMode=$freeAccountMode, requiresTermsAndConditionsAgreement=$requiresTermsAndConditionsAgreement, enforceSendingAgreement=$enforceSendingAgreement, adminSendPause=$adminSendPause, organizationName=$organizationName, organizationSlug=$organizationSlug, organizationBrandColor=$organizationBrandColor, organizationLogoUrl=$organizationLogoUrl, userPermissionRole=$userPermissionRole, environmentAccounts=$environmentAccounts, domainPlanQuantity=$domainPlanQuantity, assignedDomainCount=$assignedDomainCount, effectiveDomainLimit=$effectiveDomainLimit, requiresDashboardOnboardingV2=$requiresDashboardOnboardingV2]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user'] = this.user;
    if (this.subscription != null) {
      json[r'subscription'] = this.subscription;
    } else {
      json[r'subscription'] = null;
    }
    if (this.addons != null) {
      json[r'addons'] = this.addons;
    } else {
      json[r'addons'] = null;
    }
    if (this.intercomHash != null) {
      json[r'intercomHash'] = this.intercomHash;
    } else {
      json[r'intercomHash'] = null;
    }
    if (this.churnkeyHash != null) {
      json[r'churnkeyHash'] = this.churnkeyHash;
    } else {
      json[r'churnkeyHash'] = null;
    }
      json[r'currentPeriod'] = this.currentPeriod;
      json[r'requiresVerification'] = this.requiresVerification;
    if (this.requiredVerificationTypes != null) {
      json[r'requiredVerificationTypes'] = this.requiredVerificationTypes;
    } else {
      json[r'requiredVerificationTypes'] = null;
    }
      json[r'defaultCurrency'] = this.defaultCurrency;
      json[r'defaultSchedule'] = this.defaultSchedule;
    if (this.hasBadSubscriptionItemStatuses != null) {
      json[r'hasBadSubscriptionItemStatuses'] = this.hasBadSubscriptionItemStatuses;
    } else {
      json[r'hasBadSubscriptionItemStatuses'] = null;
    }
      json[r'trialsEnabled'] = this.trialsEnabled;
      json[r'hasAnyActiveTrialSubscription'] = this.hasAnyActiveTrialSubscription;
      json[r'canEndTrial'] = this.canEndTrial;
    if (this.freeAccountExpiresInDays != null) {
      json[r'freeAccountExpiresInDays'] = this.freeAccountExpiresInDays;
    } else {
      json[r'freeAccountExpiresInDays'] = null;
    }
      json[r'freeAccountExpired'] = this.freeAccountExpired;
      json[r'freeAccountEvaluationDenied'] = this.freeAccountEvaluationDenied;
    if (this.freeAccountEvaluationDeniedReason != null) {
      json[r'freeAccountEvaluationDeniedReason'] = this.freeAccountEvaluationDeniedReason;
    } else {
      json[r'freeAccountEvaluationDeniedReason'] = null;
    }
      json[r'freeAccountEvaluationDeniedAllowTrial'] = this.freeAccountEvaluationDeniedAllowTrial;
      json[r'freeAccountMode'] = this.freeAccountMode;
    if (this.requiresTermsAndConditionsAgreement != null) {
      json[r'requiresTermsAndConditionsAgreement'] = this.requiresTermsAndConditionsAgreement;
    } else {
      json[r'requiresTermsAndConditionsAgreement'] = null;
    }
      json[r'enforceSendingAgreement'] = this.enforceSendingAgreement;
    if (this.adminSendPause != null) {
      json[r'adminSendPause'] = this.adminSendPause;
    } else {
      json[r'adminSendPause'] = null;
    }
    if (this.organizationName != null) {
      json[r'organizationName'] = this.organizationName;
    } else {
      json[r'organizationName'] = null;
    }
    if (this.organizationSlug != null) {
      json[r'organizationSlug'] = this.organizationSlug;
    } else {
      json[r'organizationSlug'] = null;
    }
    if (this.organizationBrandColor != null) {
      json[r'organizationBrandColor'] = this.organizationBrandColor;
    } else {
      json[r'organizationBrandColor'] = null;
    }
    if (this.organizationLogoUrl != null) {
      json[r'organizationLogoUrl'] = this.organizationLogoUrl;
    } else {
      json[r'organizationLogoUrl'] = null;
    }
    if (this.userPermissionRole != null) {
      json[r'userPermissionRole'] = this.userPermissionRole;
    } else {
      json[r'userPermissionRole'] = null;
    }
    if (this.environmentAccounts != null) {
      json[r'environmentAccounts'] = this.environmentAccounts;
    } else {
      json[r'environmentAccounts'] = null;
    }
      json[r'domainPlanQuantity'] = this.domainPlanQuantity;
      json[r'assignedDomainCount'] = this.assignedDomainCount;
    if (this.effectiveDomainLimit != null) {
      json[r'effectiveDomainLimit'] = this.effectiveDomainLimit;
    } else {
      json[r'effectiveDomainLimit'] = null;
    }
      json[r'requiresDashboardOnboardingV2'] = this.requiresDashboardOnboardingV2;
    return json;
  }

  /// Returns a new [AccountDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccountDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccountDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountDto(
        user: UserDto.fromJson(json[r'user'])!,
        subscription: SubscriptionDto.fromJson(json[r'subscription']),
        addons: AccountDtoAddonsEnum.listFromJson(json[r'addons']),
        intercomHash: mapValueOfType<String>(json, r'intercomHash'),
        churnkeyHash: mapValueOfType<String>(json, r'churnkeyHash'),
        currentPeriod: CurrentPeriodDto.fromJson(json[r'currentPeriod'])!,
        requiresVerification: mapValueOfType<bool>(json, r'requiresVerification')!,
        requiredVerificationTypes: AccountDtoRequiredVerificationTypesEnum.listFromJson(json[r'requiredVerificationTypes']),
        defaultCurrency: AccountDtoDefaultCurrencyEnum.fromJson(json[r'defaultCurrency'])!,
        defaultSchedule: AccountDtoDefaultScheduleEnum.fromJson(json[r'defaultSchedule'])!,
        hasBadSubscriptionItemStatuses: mapValueOfType<bool>(json, r'hasBadSubscriptionItemStatuses'),
        trialsEnabled: mapValueOfType<bool>(json, r'trialsEnabled')!,
        hasAnyActiveTrialSubscription: mapValueOfType<bool>(json, r'hasAnyActiveTrialSubscription')!,
        canEndTrial: mapValueOfType<bool>(json, r'canEndTrial')!,
        freeAccountExpiresInDays: mapValueOfType<int>(json, r'freeAccountExpiresInDays'),
        freeAccountExpired: mapValueOfType<bool>(json, r'freeAccountExpired')!,
        freeAccountEvaluationDenied: mapValueOfType<bool>(json, r'freeAccountEvaluationDenied')!,
        freeAccountEvaluationDeniedReason: AccountDtoFreeAccountEvaluationDeniedReasonEnum.fromJson(json[r'freeAccountEvaluationDeniedReason']),
        freeAccountEvaluationDeniedAllowTrial: mapValueOfType<bool>(json, r'freeAccountEvaluationDeniedAllowTrial')!,
        freeAccountMode: AccountDtoFreeAccountModeEnum.fromJson(json[r'freeAccountMode'])!,
        requiresTermsAndConditionsAgreement: mapValueOfType<bool>(json, r'requiresTermsAndConditionsAgreement'),
        enforceSendingAgreement: mapValueOfType<bool>(json, r'enforceSendingAgreement')!,
        adminSendPause: AdminSendPauseDto.fromJson(json[r'adminSendPause']),
        organizationName: mapValueOfType<String>(json, r'organizationName'),
        organizationSlug: mapValueOfType<String>(json, r'organizationSlug'),
        organizationBrandColor: mapValueOfType<String>(json, r'organizationBrandColor'),
        organizationLogoUrl: mapValueOfType<String>(json, r'organizationLogoUrl'),
        userPermissionRole: mapValueOfType<String>(json, r'userPermissionRole'),
        environmentAccounts: EnvironmentAccountsDto.fromJson(json[r'environmentAccounts']),
        domainPlanQuantity: mapValueOfType<int>(json, r'domainPlanQuantity')!,
        assignedDomainCount: mapValueOfType<int>(json, r'assignedDomainCount')!,
        effectiveDomainLimit: mapValueOfType<int>(json, r'effectiveDomainLimit'),
        requiresDashboardOnboardingV2: mapValueOfType<bool>(json, r'requiresDashboardOnboardingV2')!,
      );
    }
    return null;
  }

  static List<AccountDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountDto> mapFromJson(dynamic json) {
    final map = <String, AccountDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountDto-objects as value to a dart map
  static Map<String, List<AccountDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user',
    'currentPeriod',
    'requiresVerification',
    'defaultCurrency',
    'defaultSchedule',
    'trialsEnabled',
    'hasAnyActiveTrialSubscription',
    'canEndTrial',
    'freeAccountExpired',
    'freeAccountEvaluationDenied',
    'freeAccountEvaluationDeniedAllowTrial',
    'freeAccountMode',
    'enforceSendingAgreement',
    'domainPlanQuantity',
    'assignedDomainCount',
    'requiresDashboardOnboardingV2',
  };
}


class AccountDtoAddonsEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountDtoAddonsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STORAGE = AccountDtoAddonsEnum._(r'STORAGE');
  static const INBOXES = AccountDtoAddonsEnum._(r'INBOXES');
  static const CONNECTORS = AccountDtoAddonsEnum._(r'CONNECTORS');
  static const DOMAIN_MONITOR = AccountDtoAddonsEnum._(r'DOMAIN_MONITOR');
  static const DEVICE_RENDER = AccountDtoAddonsEnum._(r'DEVICE_RENDER');
  static const INBOX_PLACEMENT_TESTS = AccountDtoAddonsEnum._(r'INBOX_PLACEMENT_TESTS');
  static const WARMUP_SENDERS = AccountDtoAddonsEnum._(r'WARMUP_SENDERS');
  static const WARMUP_USAGE = AccountDtoAddonsEnum._(r'WARMUP_USAGE');
  static const EMAILS = AccountDtoAddonsEnum._(r'EMAILS');
  static const AI = AccountDtoAddonsEnum._(r'AI');
  static const VALIDATION = AccountDtoAddonsEnum._(r'VALIDATION');
  static const GUEST = AccountDtoAddonsEnum._(r'GUEST');

  /// List of all possible values in this [enum][AccountDtoAddonsEnum].
  static const values = <AccountDtoAddonsEnum>[
    STORAGE,
    INBOXES,
    CONNECTORS,
    DOMAIN_MONITOR,
    DEVICE_RENDER,
    INBOX_PLACEMENT_TESTS,
    WARMUP_SENDERS,
    WARMUP_USAGE,
    EMAILS,
    AI,
    VALIDATION,
    GUEST,
  ];

  static AccountDtoAddonsEnum? fromJson(dynamic value) => AccountDtoAddonsEnumTypeTransformer().decode(value);

  static List<AccountDtoAddonsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountDtoAddonsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDtoAddonsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountDtoAddonsEnum] to String,
/// and [decode] dynamic data back to [AccountDtoAddonsEnum].
class AccountDtoAddonsEnumTypeTransformer {
  factory AccountDtoAddonsEnumTypeTransformer() => _instance ??= const AccountDtoAddonsEnumTypeTransformer._();

  const AccountDtoAddonsEnumTypeTransformer._();

  String encode(AccountDtoAddonsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountDtoAddonsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountDtoAddonsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STORAGE': return AccountDtoAddonsEnum.STORAGE;
        case r'INBOXES': return AccountDtoAddonsEnum.INBOXES;
        case r'CONNECTORS': return AccountDtoAddonsEnum.CONNECTORS;
        case r'DOMAIN_MONITOR': return AccountDtoAddonsEnum.DOMAIN_MONITOR;
        case r'DEVICE_RENDER': return AccountDtoAddonsEnum.DEVICE_RENDER;
        case r'INBOX_PLACEMENT_TESTS': return AccountDtoAddonsEnum.INBOX_PLACEMENT_TESTS;
        case r'WARMUP_SENDERS': return AccountDtoAddonsEnum.WARMUP_SENDERS;
        case r'WARMUP_USAGE': return AccountDtoAddonsEnum.WARMUP_USAGE;
        case r'EMAILS': return AccountDtoAddonsEnum.EMAILS;
        case r'AI': return AccountDtoAddonsEnum.AI;
        case r'VALIDATION': return AccountDtoAddonsEnum.VALIDATION;
        case r'GUEST': return AccountDtoAddonsEnum.GUEST;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountDtoAddonsEnumTypeTransformer] instance.
  static AccountDtoAddonsEnumTypeTransformer? _instance;
}



class AccountDtoRequiredVerificationTypesEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountDtoRequiredVerificationTypesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_ADDRESS = AccountDtoRequiredVerificationTypesEnum._(r'EMAIL_ADDRESS');
  static const PHONE_NUMBER = AccountDtoRequiredVerificationTypesEnum._(r'PHONE_NUMBER');

  /// List of all possible values in this [enum][AccountDtoRequiredVerificationTypesEnum].
  static const values = <AccountDtoRequiredVerificationTypesEnum>[
    EMAIL_ADDRESS,
    PHONE_NUMBER,
  ];

  static AccountDtoRequiredVerificationTypesEnum? fromJson(dynamic value) => AccountDtoRequiredVerificationTypesEnumTypeTransformer().decode(value);

  static List<AccountDtoRequiredVerificationTypesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountDtoRequiredVerificationTypesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDtoRequiredVerificationTypesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountDtoRequiredVerificationTypesEnum] to String,
/// and [decode] dynamic data back to [AccountDtoRequiredVerificationTypesEnum].
class AccountDtoRequiredVerificationTypesEnumTypeTransformer {
  factory AccountDtoRequiredVerificationTypesEnumTypeTransformer() => _instance ??= const AccountDtoRequiredVerificationTypesEnumTypeTransformer._();

  const AccountDtoRequiredVerificationTypesEnumTypeTransformer._();

  String encode(AccountDtoRequiredVerificationTypesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountDtoRequiredVerificationTypesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountDtoRequiredVerificationTypesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL_ADDRESS': return AccountDtoRequiredVerificationTypesEnum.EMAIL_ADDRESS;
        case r'PHONE_NUMBER': return AccountDtoRequiredVerificationTypesEnum.PHONE_NUMBER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountDtoRequiredVerificationTypesEnumTypeTransformer] instance.
  static AccountDtoRequiredVerificationTypesEnumTypeTransformer? _instance;
}



class AccountDtoDefaultCurrencyEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountDtoDefaultCurrencyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EUR = AccountDtoDefaultCurrencyEnum._(r'EUR');
  static const USD = AccountDtoDefaultCurrencyEnum._(r'USD');
  static const JPY = AccountDtoDefaultCurrencyEnum._(r'JPY');
  static const GBP = AccountDtoDefaultCurrencyEnum._(r'GBP');
  static const AUD = AccountDtoDefaultCurrencyEnum._(r'AUD');
  static const CAD = AccountDtoDefaultCurrencyEnum._(r'CAD');
  static const CHF = AccountDtoDefaultCurrencyEnum._(r'CHF');
  static const CNY = AccountDtoDefaultCurrencyEnum._(r'CNY');
  static const INR = AccountDtoDefaultCurrencyEnum._(r'INR');
  static const NZD = AccountDtoDefaultCurrencyEnum._(r'NZD');

  /// List of all possible values in this [enum][AccountDtoDefaultCurrencyEnum].
  static const values = <AccountDtoDefaultCurrencyEnum>[
    EUR,
    USD,
    JPY,
    GBP,
    AUD,
    CAD,
    CHF,
    CNY,
    INR,
    NZD,
  ];

  static AccountDtoDefaultCurrencyEnum? fromJson(dynamic value) => AccountDtoDefaultCurrencyEnumTypeTransformer().decode(value);

  static List<AccountDtoDefaultCurrencyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountDtoDefaultCurrencyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDtoDefaultCurrencyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountDtoDefaultCurrencyEnum] to String,
/// and [decode] dynamic data back to [AccountDtoDefaultCurrencyEnum].
class AccountDtoDefaultCurrencyEnumTypeTransformer {
  factory AccountDtoDefaultCurrencyEnumTypeTransformer() => _instance ??= const AccountDtoDefaultCurrencyEnumTypeTransformer._();

  const AccountDtoDefaultCurrencyEnumTypeTransformer._();

  String encode(AccountDtoDefaultCurrencyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountDtoDefaultCurrencyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountDtoDefaultCurrencyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EUR': return AccountDtoDefaultCurrencyEnum.EUR;
        case r'USD': return AccountDtoDefaultCurrencyEnum.USD;
        case r'JPY': return AccountDtoDefaultCurrencyEnum.JPY;
        case r'GBP': return AccountDtoDefaultCurrencyEnum.GBP;
        case r'AUD': return AccountDtoDefaultCurrencyEnum.AUD;
        case r'CAD': return AccountDtoDefaultCurrencyEnum.CAD;
        case r'CHF': return AccountDtoDefaultCurrencyEnum.CHF;
        case r'CNY': return AccountDtoDefaultCurrencyEnum.CNY;
        case r'INR': return AccountDtoDefaultCurrencyEnum.INR;
        case r'NZD': return AccountDtoDefaultCurrencyEnum.NZD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountDtoDefaultCurrencyEnumTypeTransformer] instance.
  static AccountDtoDefaultCurrencyEnumTypeTransformer? _instance;
}



class AccountDtoDefaultScheduleEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountDtoDefaultScheduleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MONTHLY = AccountDtoDefaultScheduleEnum._(r'MONTHLY');
  static const YEARLY = AccountDtoDefaultScheduleEnum._(r'YEARLY');

  /// List of all possible values in this [enum][AccountDtoDefaultScheduleEnum].
  static const values = <AccountDtoDefaultScheduleEnum>[
    MONTHLY,
    YEARLY,
  ];

  static AccountDtoDefaultScheduleEnum? fromJson(dynamic value) => AccountDtoDefaultScheduleEnumTypeTransformer().decode(value);

  static List<AccountDtoDefaultScheduleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountDtoDefaultScheduleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDtoDefaultScheduleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountDtoDefaultScheduleEnum] to String,
/// and [decode] dynamic data back to [AccountDtoDefaultScheduleEnum].
class AccountDtoDefaultScheduleEnumTypeTransformer {
  factory AccountDtoDefaultScheduleEnumTypeTransformer() => _instance ??= const AccountDtoDefaultScheduleEnumTypeTransformer._();

  const AccountDtoDefaultScheduleEnumTypeTransformer._();

  String encode(AccountDtoDefaultScheduleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountDtoDefaultScheduleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountDtoDefaultScheduleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MONTHLY': return AccountDtoDefaultScheduleEnum.MONTHLY;
        case r'YEARLY': return AccountDtoDefaultScheduleEnum.YEARLY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountDtoDefaultScheduleEnumTypeTransformer] instance.
  static AccountDtoDefaultScheduleEnumTypeTransformer? _instance;
}



class AccountDtoFreeAccountEvaluationDeniedReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountDtoFreeAccountEvaluationDeniedReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const COUNTRY = AccountDtoFreeAccountEvaluationDeniedReasonEnum._(r'COUNTRY');
  static const DOMAIN = AccountDtoFreeAccountEvaluationDeniedReasonEnum._(r'DOMAIN');
  static const FREE_EMAIL_PROVIDER = AccountDtoFreeAccountEvaluationDeniedReasonEnum._(r'FREE_EMAIL_PROVIDER');

  /// List of all possible values in this [enum][AccountDtoFreeAccountEvaluationDeniedReasonEnum].
  static const values = <AccountDtoFreeAccountEvaluationDeniedReasonEnum>[
    COUNTRY,
    DOMAIN,
    FREE_EMAIL_PROVIDER,
  ];

  static AccountDtoFreeAccountEvaluationDeniedReasonEnum? fromJson(dynamic value) => AccountDtoFreeAccountEvaluationDeniedReasonEnumTypeTransformer().decode(value);

  static List<AccountDtoFreeAccountEvaluationDeniedReasonEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountDtoFreeAccountEvaluationDeniedReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDtoFreeAccountEvaluationDeniedReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountDtoFreeAccountEvaluationDeniedReasonEnum] to String,
/// and [decode] dynamic data back to [AccountDtoFreeAccountEvaluationDeniedReasonEnum].
class AccountDtoFreeAccountEvaluationDeniedReasonEnumTypeTransformer {
  factory AccountDtoFreeAccountEvaluationDeniedReasonEnumTypeTransformer() => _instance ??= const AccountDtoFreeAccountEvaluationDeniedReasonEnumTypeTransformer._();

  const AccountDtoFreeAccountEvaluationDeniedReasonEnumTypeTransformer._();

  String encode(AccountDtoFreeAccountEvaluationDeniedReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountDtoFreeAccountEvaluationDeniedReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountDtoFreeAccountEvaluationDeniedReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'COUNTRY': return AccountDtoFreeAccountEvaluationDeniedReasonEnum.COUNTRY;
        case r'DOMAIN': return AccountDtoFreeAccountEvaluationDeniedReasonEnum.DOMAIN;
        case r'FREE_EMAIL_PROVIDER': return AccountDtoFreeAccountEvaluationDeniedReasonEnum.FREE_EMAIL_PROVIDER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountDtoFreeAccountEvaluationDeniedReasonEnumTypeTransformer] instance.
  static AccountDtoFreeAccountEvaluationDeniedReasonEnumTypeTransformer? _instance;
}



class AccountDtoFreeAccountModeEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountDtoFreeAccountModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = AccountDtoFreeAccountModeEnum._(r'NONE');
  static const LEGACY_EVALUATION = AccountDtoFreeAccountModeEnum._(r'LEGACY_EVALUATION');
  static const PERMANENT_SANDBOX = AccountDtoFreeAccountModeEnum._(r'PERMANENT_SANDBOX');

  /// List of all possible values in this [enum][AccountDtoFreeAccountModeEnum].
  static const values = <AccountDtoFreeAccountModeEnum>[
    NONE,
    LEGACY_EVALUATION,
    PERMANENT_SANDBOX,
  ];

  static AccountDtoFreeAccountModeEnum? fromJson(dynamic value) => AccountDtoFreeAccountModeEnumTypeTransformer().decode(value);

  static List<AccountDtoFreeAccountModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountDtoFreeAccountModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountDtoFreeAccountModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountDtoFreeAccountModeEnum] to String,
/// and [decode] dynamic data back to [AccountDtoFreeAccountModeEnum].
class AccountDtoFreeAccountModeEnumTypeTransformer {
  factory AccountDtoFreeAccountModeEnumTypeTransformer() => _instance ??= const AccountDtoFreeAccountModeEnumTypeTransformer._();

  const AccountDtoFreeAccountModeEnumTypeTransformer._();

  String encode(AccountDtoFreeAccountModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountDtoFreeAccountModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountDtoFreeAccountModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return AccountDtoFreeAccountModeEnum.NONE;
        case r'LEGACY_EVALUATION': return AccountDtoFreeAccountModeEnum.LEGACY_EVALUATION;
        case r'PERMANENT_SANDBOX': return AccountDtoFreeAccountModeEnum.PERMANENT_SANDBOX;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountDtoFreeAccountModeEnumTypeTransformer] instance.
  static AccountDtoFreeAccountModeEnumTypeTransformer? _instance;
}


