//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureOverview {
  /// Returns a new [EmailFeatureOverview] instance.
  EmailFeatureOverview({
    required this.feature,
    this.title,
    this.description,
    this.category,
    this.notes,
    this.notesNumbers = const {},
    this.featureStatistics = const [],
    this.statuses = const {},
  });

  EmailFeatureOverviewFeatureEnum feature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  EmailFeatureOverviewCategoryEnum? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

  Map<String, String> notesNumbers;

  List<EmailFeatureFamilyStatistics> featureStatistics;

  Set<EmailFeatureOverviewStatusesEnum> statuses;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureOverview &&
     other.feature == feature &&
     other.title == title &&
     other.description == description &&
     other.category == category &&
     other.notes == notes &&
     other.notesNumbers == notesNumbers &&
     other.featureStatistics == featureStatistics &&
     other.statuses == statuses;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (feature.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (notesNumbers.hashCode) +
    (featureStatistics.hashCode) +
    (statuses.hashCode);

  @override
  String toString() => 'EmailFeatureOverview[feature=$feature, title=$title, description=$description, category=$category, notes=$notes, notesNumbers=$notesNumbers, featureStatistics=$featureStatistics, statuses=$statuses]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'feature'] = this.feature;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
      json[r'notesNumbers'] = this.notesNumbers;
      json[r'featureStatistics'] = this.featureStatistics;
      json[r'statuses'] = this.statuses;
    return json;
  }

  /// Returns a new [EmailFeatureOverview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureOverview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureOverview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureOverview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureOverview(
        feature: EmailFeatureOverviewFeatureEnum.fromJson(json[r'feature'])!,
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        category: EmailFeatureOverviewCategoryEnum.fromJson(json[r'category']),
        notes: mapValueOfType<String>(json, r'notes'),
        notesNumbers: mapCastOfType<String, String>(json, r'notesNumbers') ?? const {},
        featureStatistics: EmailFeatureFamilyStatistics.listFromJson(json[r'featureStatistics']),
        statuses: EmailFeatureOverviewStatusesEnum.listFromJson(json[r'statuses']).toSet(),
      );
    }
    return null;
  }

  static List<EmailFeatureOverview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureOverview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureOverview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureOverview> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureOverview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureOverview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureOverview-objects as value to a dart map
  static Map<String, List<EmailFeatureOverview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureOverview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureOverview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'feature',
    'statuses',
  };
}


class EmailFeatureOverviewFeatureEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureOverviewFeatureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const amp = EmailFeatureOverviewFeatureEnum._(r'amp');
  static const cssAccentColor = EmailFeatureOverviewFeatureEnum._(r'css-accent-color');
  static const cssAlignItems = EmailFeatureOverviewFeatureEnum._(r'css-align-items');
  static const cssAnimation = EmailFeatureOverviewFeatureEnum._(r'css-animation');
  static const cssAspectRatio = EmailFeatureOverviewFeatureEnum._(r'css-aspect-ratio');
  static const cssAtFontFace = EmailFeatureOverviewFeatureEnum._(r'css-at-font-face');
  static const cssAtImport = EmailFeatureOverviewFeatureEnum._(r'css-at-import');
  static const cssAtKeyframes = EmailFeatureOverviewFeatureEnum._(r'css-at-keyframes');
  static const cssAtMedia = EmailFeatureOverviewFeatureEnum._(r'css-at-media');
  static const cssAtSupports = EmailFeatureOverviewFeatureEnum._(r'css-at-supports');
  static const cssBackgroundBlendMode = EmailFeatureOverviewFeatureEnum._(r'css-background-blend-mode');
  static const cssBackgroundClip = EmailFeatureOverviewFeatureEnum._(r'css-background-clip');
  static const cssBackgroundColor = EmailFeatureOverviewFeatureEnum._(r'css-background-color');
  static const cssBackgroundImage = EmailFeatureOverviewFeatureEnum._(r'css-background-image');
  static const cssBackgroundOrigin = EmailFeatureOverviewFeatureEnum._(r'css-background-origin');
  static const cssBackgroundPosition = EmailFeatureOverviewFeatureEnum._(r'css-background-position');
  static const cssBackgroundRepeat = EmailFeatureOverviewFeatureEnum._(r'css-background-repeat');
  static const cssBackgroundSize = EmailFeatureOverviewFeatureEnum._(r'css-background-size');
  static const cssBackground = EmailFeatureOverviewFeatureEnum._(r'css-background');
  static const cssBlockInlineSize = EmailFeatureOverviewFeatureEnum._(r'css-block-inline-size');
  static const cssBorderImage = EmailFeatureOverviewFeatureEnum._(r'css-border-image');
  static const cssBorderInlineBlockIndividual = EmailFeatureOverviewFeatureEnum._(r'css-border-inline-block-individual');
  static const cssBorderInlineBlockLonghand = EmailFeatureOverviewFeatureEnum._(r'css-border-inline-block-longhand');
  static const cssBorderInlineBlock = EmailFeatureOverviewFeatureEnum._(r'css-border-inline-block');
  static const cssBorderRadiusLogical = EmailFeatureOverviewFeatureEnum._(r'css-border-radius-logical');
  static const cssBorderRadius = EmailFeatureOverviewFeatureEnum._(r'css-border-radius');
  static const cssBorder = EmailFeatureOverviewFeatureEnum._(r'css-border');
  static const cssBoxShadow = EmailFeatureOverviewFeatureEnum._(r'css-box-shadow');
  static const cssBoxSizing = EmailFeatureOverviewFeatureEnum._(r'css-box-sizing');
  static const cssCaptionSide = EmailFeatureOverviewFeatureEnum._(r'css-caption-side');
  static const cssClipPath = EmailFeatureOverviewFeatureEnum._(r'css-clip-path');
  static const cssColumnCount = EmailFeatureOverviewFeatureEnum._(r'css-column-count');
  static const cssColumnLayoutProperties = EmailFeatureOverviewFeatureEnum._(r'css-column-layout-properties');
  static const cssDirection = EmailFeatureOverviewFeatureEnum._(r'css-direction');
  static const cssDisplayFlex = EmailFeatureOverviewFeatureEnum._(r'css-display-flex');
  static const cssDisplayGrid = EmailFeatureOverviewFeatureEnum._(r'css-display-grid');
  static const cssDisplayNone = EmailFeatureOverviewFeatureEnum._(r'css-display-none');
  static const cssDisplay = EmailFeatureOverviewFeatureEnum._(r'css-display');
  static const cssFilter = EmailFeatureOverviewFeatureEnum._(r'css-filter');
  static const cssFlexDirection = EmailFeatureOverviewFeatureEnum._(r'css-flex-direction');
  static const cssFlexWrap = EmailFeatureOverviewFeatureEnum._(r'css-flex-wrap');
  static const cssFloat = EmailFeatureOverviewFeatureEnum._(r'css-float');
  static const cssFontKerning = EmailFeatureOverviewFeatureEnum._(r'css-font-kerning');
  static const cssFontWeight = EmailFeatureOverviewFeatureEnum._(r'css-font-weight');
  static const cssFont = EmailFeatureOverviewFeatureEnum._(r'css-font');
  static const cssGap = EmailFeatureOverviewFeatureEnum._(r'css-gap');
  static const cssGridTemplate = EmailFeatureOverviewFeatureEnum._(r'css-grid-template');
  static const cssHeight = EmailFeatureOverviewFeatureEnum._(r'css-height');
  static const cssHyphens = EmailFeatureOverviewFeatureEnum._(r'css-hyphens');
  static const cssInlineSize = EmailFeatureOverviewFeatureEnum._(r'css-inline-size');
  static const cssJustifyContent = EmailFeatureOverviewFeatureEnum._(r'css-justify-content');
  static const cssLeftRightTopBottom = EmailFeatureOverviewFeatureEnum._(r'css-left-right-top-bottom');
  static const cssLetterSpacing = EmailFeatureOverviewFeatureEnum._(r'css-letter-spacing');
  static const cssLineHeight = EmailFeatureOverviewFeatureEnum._(r'css-line-height');
  static const cssListStyleImage = EmailFeatureOverviewFeatureEnum._(r'css-list-style-image');
  static const cssListStylePosition = EmailFeatureOverviewFeatureEnum._(r'css-list-style-position');
  static const cssListStyleType = EmailFeatureOverviewFeatureEnum._(r'css-list-style-type');
  static const cssListStyle = EmailFeatureOverviewFeatureEnum._(r'css-list-style');
  static const cssMarginBlockStartEnd = EmailFeatureOverviewFeatureEnum._(r'css-margin-block-start-end');
  static const cssMarginInlineBlock = EmailFeatureOverviewFeatureEnum._(r'css-margin-inline-block');
  static const cssMarginInlineStartEnd = EmailFeatureOverviewFeatureEnum._(r'css-margin-inline-start-end');
  static const cssMarginInline = EmailFeatureOverviewFeatureEnum._(r'css-margin-inline');
  static const cssMargin = EmailFeatureOverviewFeatureEnum._(r'css-margin');
  static const cssMaxBlockSize = EmailFeatureOverviewFeatureEnum._(r'css-max-block-size');
  static const cssMaxHeight = EmailFeatureOverviewFeatureEnum._(r'css-max-height');
  static const cssMaxWidth = EmailFeatureOverviewFeatureEnum._(r'css-max-width');
  static const cssMinHeight = EmailFeatureOverviewFeatureEnum._(r'css-min-height');
  static const cssMinInlineSize = EmailFeatureOverviewFeatureEnum._(r'css-min-inline-size');
  static const cssMinWidth = EmailFeatureOverviewFeatureEnum._(r'css-min-width');
  static const cssMixBlendMode = EmailFeatureOverviewFeatureEnum._(r'css-mix-blend-mode');
  static const cssObjectFit = EmailFeatureOverviewFeatureEnum._(r'css-object-fit');
  static const cssObjectPosition = EmailFeatureOverviewFeatureEnum._(r'css-object-position');
  static const cssOpacity = EmailFeatureOverviewFeatureEnum._(r'css-opacity');
  static const cssOutlineOffset = EmailFeatureOverviewFeatureEnum._(r'css-outline-offset');
  static const cssOutline = EmailFeatureOverviewFeatureEnum._(r'css-outline');
  static const cssOverflowWrap = EmailFeatureOverviewFeatureEnum._(r'css-overflow-wrap');
  static const cssOverflow = EmailFeatureOverviewFeatureEnum._(r'css-overflow');
  static const cssPaddingBlockStartEnd = EmailFeatureOverviewFeatureEnum._(r'css-padding-block-start-end');
  static const cssPaddingInlineBlock = EmailFeatureOverviewFeatureEnum._(r'css-padding-inline-block');
  static const cssPaddingInlineStartEnd = EmailFeatureOverviewFeatureEnum._(r'css-padding-inline-start-end');
  static const cssPadding = EmailFeatureOverviewFeatureEnum._(r'css-padding');
  static const cssPosition = EmailFeatureOverviewFeatureEnum._(r'css-position');
  static const cssTabSize = EmailFeatureOverviewFeatureEnum._(r'css-tab-size');
  static const cssTableLayout = EmailFeatureOverviewFeatureEnum._(r'css-table-layout');
  static const cssTextAlignLast = EmailFeatureOverviewFeatureEnum._(r'css-text-align-last');
  static const cssTextAlign = EmailFeatureOverviewFeatureEnum._(r'css-text-align');
  static const cssTextDecorationColor = EmailFeatureOverviewFeatureEnum._(r'css-text-decoration-color');
  static const cssTextDecorationThickness = EmailFeatureOverviewFeatureEnum._(r'css-text-decoration-thickness');
  static const cssTextDecoration = EmailFeatureOverviewFeatureEnum._(r'css-text-decoration');
  static const cssTextEmphasisPosition = EmailFeatureOverviewFeatureEnum._(r'css-text-emphasis-position');
  static const cssTextEmphasis = EmailFeatureOverviewFeatureEnum._(r'css-text-emphasis');
  static const cssTextIndent = EmailFeatureOverviewFeatureEnum._(r'css-text-indent');
  static const cssTextOverflow = EmailFeatureOverviewFeatureEnum._(r'css-text-overflow');
  static const cssTextShadow = EmailFeatureOverviewFeatureEnum._(r'css-text-shadow');
  static const cssTextTransform = EmailFeatureOverviewFeatureEnum._(r'css-text-transform');
  static const cssTextUnderlineOffset = EmailFeatureOverviewFeatureEnum._(r'css-text-underline-offset');
  static const cssTransform = EmailFeatureOverviewFeatureEnum._(r'css-transform');
  static const cssVerticalAlign = EmailFeatureOverviewFeatureEnum._(r'css-vertical-align');
  static const cssVisibility = EmailFeatureOverviewFeatureEnum._(r'css-visibility');
  static const cssWhiteSpace = EmailFeatureOverviewFeatureEnum._(r'css-white-space');
  static const cssWidth = EmailFeatureOverviewFeatureEnum._(r'css-width');
  static const cssWordBreak = EmailFeatureOverviewFeatureEnum._(r'css-word-break');
  static const cssWritingMode = EmailFeatureOverviewFeatureEnum._(r'css-writing-mode');
  static const cssZIndex = EmailFeatureOverviewFeatureEnum._(r'css-z-index');
  static const htmlAbbr = EmailFeatureOverviewFeatureEnum._(r'html-abbr');
  static const htmlAddress = EmailFeatureOverviewFeatureEnum._(r'html-address');
  static const htmlAlign = EmailFeatureOverviewFeatureEnum._(r'html-align');
  static const htmlAnchorLinks = EmailFeatureOverviewFeatureEnum._(r'html-anchor-links');
  static const htmlAriaDescribedby = EmailFeatureOverviewFeatureEnum._(r'html-aria-describedby');
  static const htmlAriaHidden = EmailFeatureOverviewFeatureEnum._(r'html-aria-hidden');
  static const htmlAriaLabel = EmailFeatureOverviewFeatureEnum._(r'html-aria-label');
  static const htmlAriaLabelledby = EmailFeatureOverviewFeatureEnum._(r'html-aria-labelledby');
  static const htmlAriaLive = EmailFeatureOverviewFeatureEnum._(r'html-aria-live');
  static const htmlAudio = EmailFeatureOverviewFeatureEnum._(r'html-audio');
  static const htmlBackground = EmailFeatureOverviewFeatureEnum._(r'html-background');
  static const htmlBase = EmailFeatureOverviewFeatureEnum._(r'html-base');
  static const htmlBlockquote = EmailFeatureOverviewFeatureEnum._(r'html-blockquote');
  static const htmlBody = EmailFeatureOverviewFeatureEnum._(r'html-body');
  static const htmlButtonReset = EmailFeatureOverviewFeatureEnum._(r'html-button-reset');
  static const htmlButtonSubmit = EmailFeatureOverviewFeatureEnum._(r'html-button-submit');
  static const htmlCode = EmailFeatureOverviewFeatureEnum._(r'html-code');
  static const htmlDel = EmailFeatureOverviewFeatureEnum._(r'html-del');
  static const htmlDfn = EmailFeatureOverviewFeatureEnum._(r'html-dfn');
  static const htmlDialog = EmailFeatureOverviewFeatureEnum._(r'html-dialog');
  static const htmlDir = EmailFeatureOverviewFeatureEnum._(r'html-dir');
  static const htmlDiv = EmailFeatureOverviewFeatureEnum._(r'html-div');
  static const htmlDoctype = EmailFeatureOverviewFeatureEnum._(r'html-doctype');
  static const htmlForm = EmailFeatureOverviewFeatureEnum._(r'html-form');
  static const htmlH1H6 = EmailFeatureOverviewFeatureEnum._(r'html-h1-h6');
  static const htmlHeight = EmailFeatureOverviewFeatureEnum._(r'html-height');
  static const htmlImageMaps = EmailFeatureOverviewFeatureEnum._(r'html-image-maps');
  static const htmlInputCheckbox = EmailFeatureOverviewFeatureEnum._(r'html-input-checkbox');
  static const htmlInputHidden = EmailFeatureOverviewFeatureEnum._(r'html-input-hidden');
  static const htmlInputRadio = EmailFeatureOverviewFeatureEnum._(r'html-input-radio');
  static const htmlInputReset = EmailFeatureOverviewFeatureEnum._(r'html-input-reset');
  static const htmlInputSubmit = EmailFeatureOverviewFeatureEnum._(r'html-input-submit');
  static const htmlInputText = EmailFeatureOverviewFeatureEnum._(r'html-input-text');
  static const htmlLang = EmailFeatureOverviewFeatureEnum._(r'html-lang');
  static const htmlLink = EmailFeatureOverviewFeatureEnum._(r'html-link');
  static const htmlLists = EmailFeatureOverviewFeatureEnum._(r'html-lists');
  static const htmlLoadingAttribute = EmailFeatureOverviewFeatureEnum._(r'html-loading-attribute');
  static const htmlMailtoLinks = EmailFeatureOverviewFeatureEnum._(r'html-mailto-links');
  static const htmlMarquee = EmailFeatureOverviewFeatureEnum._(r'html-marquee');
  static const htmlMeter = EmailFeatureOverviewFeatureEnum._(r'html-meter');
  static const htmlObject = EmailFeatureOverviewFeatureEnum._(r'html-object');
  static const htmlP = EmailFeatureOverviewFeatureEnum._(r'html-p');
  static const htmlPicture = EmailFeatureOverviewFeatureEnum._(r'html-picture');
  static const htmlPre = EmailFeatureOverviewFeatureEnum._(r'html-pre');
  static const htmlProgress = EmailFeatureOverviewFeatureEnum._(r'html-progress');
  static const htmlRequired = EmailFeatureOverviewFeatureEnum._(r'html-required');
  static const htmlRole = EmailFeatureOverviewFeatureEnum._(r'html-role');
  static const htmlRp = EmailFeatureOverviewFeatureEnum._(r'html-rp');
  static const htmlRt = EmailFeatureOverviewFeatureEnum._(r'html-rt');
  static const htmlRuby = EmailFeatureOverviewFeatureEnum._(r'html-ruby');
  static const htmlSelect = EmailFeatureOverviewFeatureEnum._(r'html-select');
  static const htmlSemantics = EmailFeatureOverviewFeatureEnum._(r'html-semantics');
  static const htmlSmall = EmailFeatureOverviewFeatureEnum._(r'html-small');
  static const htmlSpan = EmailFeatureOverviewFeatureEnum._(r'html-span');
  static const htmlSrcset = EmailFeatureOverviewFeatureEnum._(r'html-srcset');
  static const htmlStrike = EmailFeatureOverviewFeatureEnum._(r'html-strike');
  static const htmlStrong = EmailFeatureOverviewFeatureEnum._(r'html-strong');
  static const htmlStyle = EmailFeatureOverviewFeatureEnum._(r'html-style');
  static const htmlSvg = EmailFeatureOverviewFeatureEnum._(r'html-svg');
  static const htmlTable = EmailFeatureOverviewFeatureEnum._(r'html-table');
  static const htmlTarget = EmailFeatureOverviewFeatureEnum._(r'html-target');
  static const htmlTextarea = EmailFeatureOverviewFeatureEnum._(r'html-textarea');
  static const htmlValign = EmailFeatureOverviewFeatureEnum._(r'html-valign');
  static const htmlVideo = EmailFeatureOverviewFeatureEnum._(r'html-video');
  static const htmlWbr = EmailFeatureOverviewFeatureEnum._(r'html-wbr');
  static const htmlWidth = EmailFeatureOverviewFeatureEnum._(r'html-width');
  static const imageAvif = EmailFeatureOverviewFeatureEnum._(r'image-avif');
  static const imageBase64 = EmailFeatureOverviewFeatureEnum._(r'image-base64');
  static const imageBmp = EmailFeatureOverviewFeatureEnum._(r'image-bmp');
  static const imageGif = EmailFeatureOverviewFeatureEnum._(r'image-gif');
  static const imageIco = EmailFeatureOverviewFeatureEnum._(r'image-ico');
  static const imageJpg = EmailFeatureOverviewFeatureEnum._(r'image-jpg');
  static const imagePng = EmailFeatureOverviewFeatureEnum._(r'image-png');
  static const imageSvg = EmailFeatureOverviewFeatureEnum._(r'image-svg');
  static const imageWebp = EmailFeatureOverviewFeatureEnum._(r'image-webp');
  static const unsupported = EmailFeatureOverviewFeatureEnum._(r'unsupported');

  /// List of all possible values in this [enum][EmailFeatureOverviewFeatureEnum].
  static const values = <EmailFeatureOverviewFeatureEnum>[
    amp,
    cssAccentColor,
    cssAlignItems,
    cssAnimation,
    cssAspectRatio,
    cssAtFontFace,
    cssAtImport,
    cssAtKeyframes,
    cssAtMedia,
    cssAtSupports,
    cssBackgroundBlendMode,
    cssBackgroundClip,
    cssBackgroundColor,
    cssBackgroundImage,
    cssBackgroundOrigin,
    cssBackgroundPosition,
    cssBackgroundRepeat,
    cssBackgroundSize,
    cssBackground,
    cssBlockInlineSize,
    cssBorderImage,
    cssBorderInlineBlockIndividual,
    cssBorderInlineBlockLonghand,
    cssBorderInlineBlock,
    cssBorderRadiusLogical,
    cssBorderRadius,
    cssBorder,
    cssBoxShadow,
    cssBoxSizing,
    cssCaptionSide,
    cssClipPath,
    cssColumnCount,
    cssColumnLayoutProperties,
    cssDirection,
    cssDisplayFlex,
    cssDisplayGrid,
    cssDisplayNone,
    cssDisplay,
    cssFilter,
    cssFlexDirection,
    cssFlexWrap,
    cssFloat,
    cssFontKerning,
    cssFontWeight,
    cssFont,
    cssGap,
    cssGridTemplate,
    cssHeight,
    cssHyphens,
    cssInlineSize,
    cssJustifyContent,
    cssLeftRightTopBottom,
    cssLetterSpacing,
    cssLineHeight,
    cssListStyleImage,
    cssListStylePosition,
    cssListStyleType,
    cssListStyle,
    cssMarginBlockStartEnd,
    cssMarginInlineBlock,
    cssMarginInlineStartEnd,
    cssMarginInline,
    cssMargin,
    cssMaxBlockSize,
    cssMaxHeight,
    cssMaxWidth,
    cssMinHeight,
    cssMinInlineSize,
    cssMinWidth,
    cssMixBlendMode,
    cssObjectFit,
    cssObjectPosition,
    cssOpacity,
    cssOutlineOffset,
    cssOutline,
    cssOverflowWrap,
    cssOverflow,
    cssPaddingBlockStartEnd,
    cssPaddingInlineBlock,
    cssPaddingInlineStartEnd,
    cssPadding,
    cssPosition,
    cssTabSize,
    cssTableLayout,
    cssTextAlignLast,
    cssTextAlign,
    cssTextDecorationColor,
    cssTextDecorationThickness,
    cssTextDecoration,
    cssTextEmphasisPosition,
    cssTextEmphasis,
    cssTextIndent,
    cssTextOverflow,
    cssTextShadow,
    cssTextTransform,
    cssTextUnderlineOffset,
    cssTransform,
    cssVerticalAlign,
    cssVisibility,
    cssWhiteSpace,
    cssWidth,
    cssWordBreak,
    cssWritingMode,
    cssZIndex,
    htmlAbbr,
    htmlAddress,
    htmlAlign,
    htmlAnchorLinks,
    htmlAriaDescribedby,
    htmlAriaHidden,
    htmlAriaLabel,
    htmlAriaLabelledby,
    htmlAriaLive,
    htmlAudio,
    htmlBackground,
    htmlBase,
    htmlBlockquote,
    htmlBody,
    htmlButtonReset,
    htmlButtonSubmit,
    htmlCode,
    htmlDel,
    htmlDfn,
    htmlDialog,
    htmlDir,
    htmlDiv,
    htmlDoctype,
    htmlForm,
    htmlH1H6,
    htmlHeight,
    htmlImageMaps,
    htmlInputCheckbox,
    htmlInputHidden,
    htmlInputRadio,
    htmlInputReset,
    htmlInputSubmit,
    htmlInputText,
    htmlLang,
    htmlLink,
    htmlLists,
    htmlLoadingAttribute,
    htmlMailtoLinks,
    htmlMarquee,
    htmlMeter,
    htmlObject,
    htmlP,
    htmlPicture,
    htmlPre,
    htmlProgress,
    htmlRequired,
    htmlRole,
    htmlRp,
    htmlRt,
    htmlRuby,
    htmlSelect,
    htmlSemantics,
    htmlSmall,
    htmlSpan,
    htmlSrcset,
    htmlStrike,
    htmlStrong,
    htmlStyle,
    htmlSvg,
    htmlTable,
    htmlTarget,
    htmlTextarea,
    htmlValign,
    htmlVideo,
    htmlWbr,
    htmlWidth,
    imageAvif,
    imageBase64,
    imageBmp,
    imageGif,
    imageIco,
    imageJpg,
    imagePng,
    imageSvg,
    imageWebp,
    unsupported,
  ];

  static EmailFeatureOverviewFeatureEnum? fromJson(dynamic value) => EmailFeatureOverviewFeatureEnumTypeTransformer().decode(value);

  static List<EmailFeatureOverviewFeatureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureOverviewFeatureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureOverviewFeatureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureOverviewFeatureEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureOverviewFeatureEnum].
class EmailFeatureOverviewFeatureEnumTypeTransformer {
  factory EmailFeatureOverviewFeatureEnumTypeTransformer() => _instance ??= const EmailFeatureOverviewFeatureEnumTypeTransformer._();

  const EmailFeatureOverviewFeatureEnumTypeTransformer._();

  String encode(EmailFeatureOverviewFeatureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureOverviewFeatureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureOverviewFeatureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'amp': return EmailFeatureOverviewFeatureEnum.amp;
        case r'css-accent-color': return EmailFeatureOverviewFeatureEnum.cssAccentColor;
        case r'css-align-items': return EmailFeatureOverviewFeatureEnum.cssAlignItems;
        case r'css-animation': return EmailFeatureOverviewFeatureEnum.cssAnimation;
        case r'css-aspect-ratio': return EmailFeatureOverviewFeatureEnum.cssAspectRatio;
        case r'css-at-font-face': return EmailFeatureOverviewFeatureEnum.cssAtFontFace;
        case r'css-at-import': return EmailFeatureOverviewFeatureEnum.cssAtImport;
        case r'css-at-keyframes': return EmailFeatureOverviewFeatureEnum.cssAtKeyframes;
        case r'css-at-media': return EmailFeatureOverviewFeatureEnum.cssAtMedia;
        case r'css-at-supports': return EmailFeatureOverviewFeatureEnum.cssAtSupports;
        case r'css-background-blend-mode': return EmailFeatureOverviewFeatureEnum.cssBackgroundBlendMode;
        case r'css-background-clip': return EmailFeatureOverviewFeatureEnum.cssBackgroundClip;
        case r'css-background-color': return EmailFeatureOverviewFeatureEnum.cssBackgroundColor;
        case r'css-background-image': return EmailFeatureOverviewFeatureEnum.cssBackgroundImage;
        case r'css-background-origin': return EmailFeatureOverviewFeatureEnum.cssBackgroundOrigin;
        case r'css-background-position': return EmailFeatureOverviewFeatureEnum.cssBackgroundPosition;
        case r'css-background-repeat': return EmailFeatureOverviewFeatureEnum.cssBackgroundRepeat;
        case r'css-background-size': return EmailFeatureOverviewFeatureEnum.cssBackgroundSize;
        case r'css-background': return EmailFeatureOverviewFeatureEnum.cssBackground;
        case r'css-block-inline-size': return EmailFeatureOverviewFeatureEnum.cssBlockInlineSize;
        case r'css-border-image': return EmailFeatureOverviewFeatureEnum.cssBorderImage;
        case r'css-border-inline-block-individual': return EmailFeatureOverviewFeatureEnum.cssBorderInlineBlockIndividual;
        case r'css-border-inline-block-longhand': return EmailFeatureOverviewFeatureEnum.cssBorderInlineBlockLonghand;
        case r'css-border-inline-block': return EmailFeatureOverviewFeatureEnum.cssBorderInlineBlock;
        case r'css-border-radius-logical': return EmailFeatureOverviewFeatureEnum.cssBorderRadiusLogical;
        case r'css-border-radius': return EmailFeatureOverviewFeatureEnum.cssBorderRadius;
        case r'css-border': return EmailFeatureOverviewFeatureEnum.cssBorder;
        case r'css-box-shadow': return EmailFeatureOverviewFeatureEnum.cssBoxShadow;
        case r'css-box-sizing': return EmailFeatureOverviewFeatureEnum.cssBoxSizing;
        case r'css-caption-side': return EmailFeatureOverviewFeatureEnum.cssCaptionSide;
        case r'css-clip-path': return EmailFeatureOverviewFeatureEnum.cssClipPath;
        case r'css-column-count': return EmailFeatureOverviewFeatureEnum.cssColumnCount;
        case r'css-column-layout-properties': return EmailFeatureOverviewFeatureEnum.cssColumnLayoutProperties;
        case r'css-direction': return EmailFeatureOverviewFeatureEnum.cssDirection;
        case r'css-display-flex': return EmailFeatureOverviewFeatureEnum.cssDisplayFlex;
        case r'css-display-grid': return EmailFeatureOverviewFeatureEnum.cssDisplayGrid;
        case r'css-display-none': return EmailFeatureOverviewFeatureEnum.cssDisplayNone;
        case r'css-display': return EmailFeatureOverviewFeatureEnum.cssDisplay;
        case r'css-filter': return EmailFeatureOverviewFeatureEnum.cssFilter;
        case r'css-flex-direction': return EmailFeatureOverviewFeatureEnum.cssFlexDirection;
        case r'css-flex-wrap': return EmailFeatureOverviewFeatureEnum.cssFlexWrap;
        case r'css-float': return EmailFeatureOverviewFeatureEnum.cssFloat;
        case r'css-font-kerning': return EmailFeatureOverviewFeatureEnum.cssFontKerning;
        case r'css-font-weight': return EmailFeatureOverviewFeatureEnum.cssFontWeight;
        case r'css-font': return EmailFeatureOverviewFeatureEnum.cssFont;
        case r'css-gap': return EmailFeatureOverviewFeatureEnum.cssGap;
        case r'css-grid-template': return EmailFeatureOverviewFeatureEnum.cssGridTemplate;
        case r'css-height': return EmailFeatureOverviewFeatureEnum.cssHeight;
        case r'css-hyphens': return EmailFeatureOverviewFeatureEnum.cssHyphens;
        case r'css-inline-size': return EmailFeatureOverviewFeatureEnum.cssInlineSize;
        case r'css-justify-content': return EmailFeatureOverviewFeatureEnum.cssJustifyContent;
        case r'css-left-right-top-bottom': return EmailFeatureOverviewFeatureEnum.cssLeftRightTopBottom;
        case r'css-letter-spacing': return EmailFeatureOverviewFeatureEnum.cssLetterSpacing;
        case r'css-line-height': return EmailFeatureOverviewFeatureEnum.cssLineHeight;
        case r'css-list-style-image': return EmailFeatureOverviewFeatureEnum.cssListStyleImage;
        case r'css-list-style-position': return EmailFeatureOverviewFeatureEnum.cssListStylePosition;
        case r'css-list-style-type': return EmailFeatureOverviewFeatureEnum.cssListStyleType;
        case r'css-list-style': return EmailFeatureOverviewFeatureEnum.cssListStyle;
        case r'css-margin-block-start-end': return EmailFeatureOverviewFeatureEnum.cssMarginBlockStartEnd;
        case r'css-margin-inline-block': return EmailFeatureOverviewFeatureEnum.cssMarginInlineBlock;
        case r'css-margin-inline-start-end': return EmailFeatureOverviewFeatureEnum.cssMarginInlineStartEnd;
        case r'css-margin-inline': return EmailFeatureOverviewFeatureEnum.cssMarginInline;
        case r'css-margin': return EmailFeatureOverviewFeatureEnum.cssMargin;
        case r'css-max-block-size': return EmailFeatureOverviewFeatureEnum.cssMaxBlockSize;
        case r'css-max-height': return EmailFeatureOverviewFeatureEnum.cssMaxHeight;
        case r'css-max-width': return EmailFeatureOverviewFeatureEnum.cssMaxWidth;
        case r'css-min-height': return EmailFeatureOverviewFeatureEnum.cssMinHeight;
        case r'css-min-inline-size': return EmailFeatureOverviewFeatureEnum.cssMinInlineSize;
        case r'css-min-width': return EmailFeatureOverviewFeatureEnum.cssMinWidth;
        case r'css-mix-blend-mode': return EmailFeatureOverviewFeatureEnum.cssMixBlendMode;
        case r'css-object-fit': return EmailFeatureOverviewFeatureEnum.cssObjectFit;
        case r'css-object-position': return EmailFeatureOverviewFeatureEnum.cssObjectPosition;
        case r'css-opacity': return EmailFeatureOverviewFeatureEnum.cssOpacity;
        case r'css-outline-offset': return EmailFeatureOverviewFeatureEnum.cssOutlineOffset;
        case r'css-outline': return EmailFeatureOverviewFeatureEnum.cssOutline;
        case r'css-overflow-wrap': return EmailFeatureOverviewFeatureEnum.cssOverflowWrap;
        case r'css-overflow': return EmailFeatureOverviewFeatureEnum.cssOverflow;
        case r'css-padding-block-start-end': return EmailFeatureOverviewFeatureEnum.cssPaddingBlockStartEnd;
        case r'css-padding-inline-block': return EmailFeatureOverviewFeatureEnum.cssPaddingInlineBlock;
        case r'css-padding-inline-start-end': return EmailFeatureOverviewFeatureEnum.cssPaddingInlineStartEnd;
        case r'css-padding': return EmailFeatureOverviewFeatureEnum.cssPadding;
        case r'css-position': return EmailFeatureOverviewFeatureEnum.cssPosition;
        case r'css-tab-size': return EmailFeatureOverviewFeatureEnum.cssTabSize;
        case r'css-table-layout': return EmailFeatureOverviewFeatureEnum.cssTableLayout;
        case r'css-text-align-last': return EmailFeatureOverviewFeatureEnum.cssTextAlignLast;
        case r'css-text-align': return EmailFeatureOverviewFeatureEnum.cssTextAlign;
        case r'css-text-decoration-color': return EmailFeatureOverviewFeatureEnum.cssTextDecorationColor;
        case r'css-text-decoration-thickness': return EmailFeatureOverviewFeatureEnum.cssTextDecorationThickness;
        case r'css-text-decoration': return EmailFeatureOverviewFeatureEnum.cssTextDecoration;
        case r'css-text-emphasis-position': return EmailFeatureOverviewFeatureEnum.cssTextEmphasisPosition;
        case r'css-text-emphasis': return EmailFeatureOverviewFeatureEnum.cssTextEmphasis;
        case r'css-text-indent': return EmailFeatureOverviewFeatureEnum.cssTextIndent;
        case r'css-text-overflow': return EmailFeatureOverviewFeatureEnum.cssTextOverflow;
        case r'css-text-shadow': return EmailFeatureOverviewFeatureEnum.cssTextShadow;
        case r'css-text-transform': return EmailFeatureOverviewFeatureEnum.cssTextTransform;
        case r'css-text-underline-offset': return EmailFeatureOverviewFeatureEnum.cssTextUnderlineOffset;
        case r'css-transform': return EmailFeatureOverviewFeatureEnum.cssTransform;
        case r'css-vertical-align': return EmailFeatureOverviewFeatureEnum.cssVerticalAlign;
        case r'css-visibility': return EmailFeatureOverviewFeatureEnum.cssVisibility;
        case r'css-white-space': return EmailFeatureOverviewFeatureEnum.cssWhiteSpace;
        case r'css-width': return EmailFeatureOverviewFeatureEnum.cssWidth;
        case r'css-word-break': return EmailFeatureOverviewFeatureEnum.cssWordBreak;
        case r'css-writing-mode': return EmailFeatureOverviewFeatureEnum.cssWritingMode;
        case r'css-z-index': return EmailFeatureOverviewFeatureEnum.cssZIndex;
        case r'html-abbr': return EmailFeatureOverviewFeatureEnum.htmlAbbr;
        case r'html-address': return EmailFeatureOverviewFeatureEnum.htmlAddress;
        case r'html-align': return EmailFeatureOverviewFeatureEnum.htmlAlign;
        case r'html-anchor-links': return EmailFeatureOverviewFeatureEnum.htmlAnchorLinks;
        case r'html-aria-describedby': return EmailFeatureOverviewFeatureEnum.htmlAriaDescribedby;
        case r'html-aria-hidden': return EmailFeatureOverviewFeatureEnum.htmlAriaHidden;
        case r'html-aria-label': return EmailFeatureOverviewFeatureEnum.htmlAriaLabel;
        case r'html-aria-labelledby': return EmailFeatureOverviewFeatureEnum.htmlAriaLabelledby;
        case r'html-aria-live': return EmailFeatureOverviewFeatureEnum.htmlAriaLive;
        case r'html-audio': return EmailFeatureOverviewFeatureEnum.htmlAudio;
        case r'html-background': return EmailFeatureOverviewFeatureEnum.htmlBackground;
        case r'html-base': return EmailFeatureOverviewFeatureEnum.htmlBase;
        case r'html-blockquote': return EmailFeatureOverviewFeatureEnum.htmlBlockquote;
        case r'html-body': return EmailFeatureOverviewFeatureEnum.htmlBody;
        case r'html-button-reset': return EmailFeatureOverviewFeatureEnum.htmlButtonReset;
        case r'html-button-submit': return EmailFeatureOverviewFeatureEnum.htmlButtonSubmit;
        case r'html-code': return EmailFeatureOverviewFeatureEnum.htmlCode;
        case r'html-del': return EmailFeatureOverviewFeatureEnum.htmlDel;
        case r'html-dfn': return EmailFeatureOverviewFeatureEnum.htmlDfn;
        case r'html-dialog': return EmailFeatureOverviewFeatureEnum.htmlDialog;
        case r'html-dir': return EmailFeatureOverviewFeatureEnum.htmlDir;
        case r'html-div': return EmailFeatureOverviewFeatureEnum.htmlDiv;
        case r'html-doctype': return EmailFeatureOverviewFeatureEnum.htmlDoctype;
        case r'html-form': return EmailFeatureOverviewFeatureEnum.htmlForm;
        case r'html-h1-h6': return EmailFeatureOverviewFeatureEnum.htmlH1H6;
        case r'html-height': return EmailFeatureOverviewFeatureEnum.htmlHeight;
        case r'html-image-maps': return EmailFeatureOverviewFeatureEnum.htmlImageMaps;
        case r'html-input-checkbox': return EmailFeatureOverviewFeatureEnum.htmlInputCheckbox;
        case r'html-input-hidden': return EmailFeatureOverviewFeatureEnum.htmlInputHidden;
        case r'html-input-radio': return EmailFeatureOverviewFeatureEnum.htmlInputRadio;
        case r'html-input-reset': return EmailFeatureOverviewFeatureEnum.htmlInputReset;
        case r'html-input-submit': return EmailFeatureOverviewFeatureEnum.htmlInputSubmit;
        case r'html-input-text': return EmailFeatureOverviewFeatureEnum.htmlInputText;
        case r'html-lang': return EmailFeatureOverviewFeatureEnum.htmlLang;
        case r'html-link': return EmailFeatureOverviewFeatureEnum.htmlLink;
        case r'html-lists': return EmailFeatureOverviewFeatureEnum.htmlLists;
        case r'html-loading-attribute': return EmailFeatureOverviewFeatureEnum.htmlLoadingAttribute;
        case r'html-mailto-links': return EmailFeatureOverviewFeatureEnum.htmlMailtoLinks;
        case r'html-marquee': return EmailFeatureOverviewFeatureEnum.htmlMarquee;
        case r'html-meter': return EmailFeatureOverviewFeatureEnum.htmlMeter;
        case r'html-object': return EmailFeatureOverviewFeatureEnum.htmlObject;
        case r'html-p': return EmailFeatureOverviewFeatureEnum.htmlP;
        case r'html-picture': return EmailFeatureOverviewFeatureEnum.htmlPicture;
        case r'html-pre': return EmailFeatureOverviewFeatureEnum.htmlPre;
        case r'html-progress': return EmailFeatureOverviewFeatureEnum.htmlProgress;
        case r'html-required': return EmailFeatureOverviewFeatureEnum.htmlRequired;
        case r'html-role': return EmailFeatureOverviewFeatureEnum.htmlRole;
        case r'html-rp': return EmailFeatureOverviewFeatureEnum.htmlRp;
        case r'html-rt': return EmailFeatureOverviewFeatureEnum.htmlRt;
        case r'html-ruby': return EmailFeatureOverviewFeatureEnum.htmlRuby;
        case r'html-select': return EmailFeatureOverviewFeatureEnum.htmlSelect;
        case r'html-semantics': return EmailFeatureOverviewFeatureEnum.htmlSemantics;
        case r'html-small': return EmailFeatureOverviewFeatureEnum.htmlSmall;
        case r'html-span': return EmailFeatureOverviewFeatureEnum.htmlSpan;
        case r'html-srcset': return EmailFeatureOverviewFeatureEnum.htmlSrcset;
        case r'html-strike': return EmailFeatureOverviewFeatureEnum.htmlStrike;
        case r'html-strong': return EmailFeatureOverviewFeatureEnum.htmlStrong;
        case r'html-style': return EmailFeatureOverviewFeatureEnum.htmlStyle;
        case r'html-svg': return EmailFeatureOverviewFeatureEnum.htmlSvg;
        case r'html-table': return EmailFeatureOverviewFeatureEnum.htmlTable;
        case r'html-target': return EmailFeatureOverviewFeatureEnum.htmlTarget;
        case r'html-textarea': return EmailFeatureOverviewFeatureEnum.htmlTextarea;
        case r'html-valign': return EmailFeatureOverviewFeatureEnum.htmlValign;
        case r'html-video': return EmailFeatureOverviewFeatureEnum.htmlVideo;
        case r'html-wbr': return EmailFeatureOverviewFeatureEnum.htmlWbr;
        case r'html-width': return EmailFeatureOverviewFeatureEnum.htmlWidth;
        case r'image-avif': return EmailFeatureOverviewFeatureEnum.imageAvif;
        case r'image-base64': return EmailFeatureOverviewFeatureEnum.imageBase64;
        case r'image-bmp': return EmailFeatureOverviewFeatureEnum.imageBmp;
        case r'image-gif': return EmailFeatureOverviewFeatureEnum.imageGif;
        case r'image-ico': return EmailFeatureOverviewFeatureEnum.imageIco;
        case r'image-jpg': return EmailFeatureOverviewFeatureEnum.imageJpg;
        case r'image-png': return EmailFeatureOverviewFeatureEnum.imagePng;
        case r'image-svg': return EmailFeatureOverviewFeatureEnum.imageSvg;
        case r'image-webp': return EmailFeatureOverviewFeatureEnum.imageWebp;
        case r'unsupported': return EmailFeatureOverviewFeatureEnum.unsupported;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureOverviewFeatureEnumTypeTransformer] instance.
  static EmailFeatureOverviewFeatureEnumTypeTransformer? _instance;
}



class EmailFeatureOverviewCategoryEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureOverviewCategoryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const css = EmailFeatureOverviewCategoryEnum._(r'css');
  static const html = EmailFeatureOverviewCategoryEnum._(r'html');
  static const image = EmailFeatureOverviewCategoryEnum._(r'image');
  static const others = EmailFeatureOverviewCategoryEnum._(r'others');

  /// List of all possible values in this [enum][EmailFeatureOverviewCategoryEnum].
  static const values = <EmailFeatureOverviewCategoryEnum>[
    css,
    html,
    image,
    others,
  ];

  static EmailFeatureOverviewCategoryEnum? fromJson(dynamic value) => EmailFeatureOverviewCategoryEnumTypeTransformer().decode(value);

  static List<EmailFeatureOverviewCategoryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureOverviewCategoryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureOverviewCategoryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureOverviewCategoryEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureOverviewCategoryEnum].
class EmailFeatureOverviewCategoryEnumTypeTransformer {
  factory EmailFeatureOverviewCategoryEnumTypeTransformer() => _instance ??= const EmailFeatureOverviewCategoryEnumTypeTransformer._();

  const EmailFeatureOverviewCategoryEnumTypeTransformer._();

  String encode(EmailFeatureOverviewCategoryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureOverviewCategoryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureOverviewCategoryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'css': return EmailFeatureOverviewCategoryEnum.css;
        case r'html': return EmailFeatureOverviewCategoryEnum.html;
        case r'image': return EmailFeatureOverviewCategoryEnum.image;
        case r'others': return EmailFeatureOverviewCategoryEnum.others;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureOverviewCategoryEnumTypeTransformer] instance.
  static EmailFeatureOverviewCategoryEnumTypeTransformer? _instance;
}



class EmailFeatureOverviewStatusesEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureOverviewStatusesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUPPORTED = EmailFeatureOverviewStatusesEnum._(r'SUPPORTED');
  static const PARTIAL = EmailFeatureOverviewStatusesEnum._(r'PARTIAL');
  static const NOT_SUPPORTED = EmailFeatureOverviewStatusesEnum._(r'NOT_SUPPORTED');
  static const UNKNOWN = EmailFeatureOverviewStatusesEnum._(r'UNKNOWN');

  /// List of all possible values in this [enum][EmailFeatureOverviewStatusesEnum].
  static const values = <EmailFeatureOverviewStatusesEnum>[
    SUPPORTED,
    PARTIAL,
    NOT_SUPPORTED,
    UNKNOWN,
  ];

  static EmailFeatureOverviewStatusesEnum? fromJson(dynamic value) => EmailFeatureOverviewStatusesEnumTypeTransformer().decode(value);

  static List<EmailFeatureOverviewStatusesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureOverviewStatusesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureOverviewStatusesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureOverviewStatusesEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureOverviewStatusesEnum].
class EmailFeatureOverviewStatusesEnumTypeTransformer {
  factory EmailFeatureOverviewStatusesEnumTypeTransformer() => _instance ??= const EmailFeatureOverviewStatusesEnumTypeTransformer._();

  const EmailFeatureOverviewStatusesEnumTypeTransformer._();

  String encode(EmailFeatureOverviewStatusesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureOverviewStatusesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureOverviewStatusesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUPPORTED': return EmailFeatureOverviewStatusesEnum.SUPPORTED;
        case r'PARTIAL': return EmailFeatureOverviewStatusesEnum.PARTIAL;
        case r'NOT_SUPPORTED': return EmailFeatureOverviewStatusesEnum.NOT_SUPPORTED;
        case r'UNKNOWN': return EmailFeatureOverviewStatusesEnum.UNKNOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureOverviewStatusesEnumTypeTransformer] instance.
  static EmailFeatureOverviewStatusesEnumTypeTransformer? _instance;
}


