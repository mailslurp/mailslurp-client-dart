//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureFamilyStatistics {
  /// Returns a new [EmailFeatureFamilyStatistics] instance.
  EmailFeatureFamilyStatistics({
    required this.feature,
    required this.family,
    this.platforms = const [],
  });

  EmailFeatureFamilyStatisticsFeatureEnum feature;

  EmailFeatureFamilyStatisticsFamilyEnum family;

  List<EmailFeaturePlatformStatistics> platforms;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureFamilyStatistics &&
     other.feature == feature &&
     other.family == family &&
     other.platforms == platforms;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (feature.hashCode) +
    (family.hashCode) +
    (platforms.hashCode);

  @override
  String toString() => 'EmailFeatureFamilyStatistics[feature=$feature, family=$family, platforms=$platforms]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'feature'] = this.feature;
      json[r'family'] = this.family;
      json[r'platforms'] = this.platforms;
    return json;
  }

  /// Returns a new [EmailFeatureFamilyStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureFamilyStatistics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureFamilyStatistics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureFamilyStatistics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureFamilyStatistics(
        feature: EmailFeatureFamilyStatisticsFeatureEnum.fromJson(json[r'feature'])!,
        family: EmailFeatureFamilyStatisticsFamilyEnum.fromJson(json[r'family'])!,
        platforms: EmailFeaturePlatformStatistics.listFromJson(json[r'platforms']),
      );
    }
    return null;
  }

  static List<EmailFeatureFamilyStatistics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureFamilyStatistics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureFamilyStatistics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureFamilyStatistics> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureFamilyStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureFamilyStatistics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureFamilyStatistics-objects as value to a dart map
  static Map<String, List<EmailFeatureFamilyStatistics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureFamilyStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureFamilyStatistics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'feature',
    'family',
    'platforms',
  };
}


class EmailFeatureFamilyStatisticsFeatureEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureFamilyStatisticsFeatureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const amp = EmailFeatureFamilyStatisticsFeatureEnum._(r'amp');
  static const cssAccentColor = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-accent-color');
  static const cssAlignItems = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-align-items');
  static const cssAnimation = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-animation');
  static const cssAspectRatio = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-aspect-ratio');
  static const cssAtFontFace = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-at-font-face');
  static const cssAtImport = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-at-import');
  static const cssAtKeyframes = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-at-keyframes');
  static const cssAtMedia = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-at-media');
  static const cssAtSupports = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-at-supports');
  static const cssBackgroundBlendMode = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-blend-mode');
  static const cssBackgroundClip = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-clip');
  static const cssBackgroundColor = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-color');
  static const cssBackgroundImage = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-image');
  static const cssBackgroundOrigin = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-origin');
  static const cssBackgroundPosition = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-position');
  static const cssBackgroundRepeat = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-repeat');
  static const cssBackgroundSize = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background-size');
  static const cssBackground = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-background');
  static const cssBlockInlineSize = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-block-inline-size');
  static const cssBorderImage = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-border-image');
  static const cssBorderInlineBlockIndividual = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-border-inline-block-individual');
  static const cssBorderInlineBlockLonghand = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-border-inline-block-longhand');
  static const cssBorderInlineBlock = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-border-inline-block');
  static const cssBorderRadiusLogical = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-border-radius-logical');
  static const cssBorderRadius = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-border-radius');
  static const cssBorder = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-border');
  static const cssBoxShadow = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-box-shadow');
  static const cssBoxSizing = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-box-sizing');
  static const cssCaptionSide = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-caption-side');
  static const cssClipPath = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-clip-path');
  static const cssColumnCount = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-column-count');
  static const cssColumnLayoutProperties = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-column-layout-properties');
  static const cssDirection = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-direction');
  static const cssDisplayFlex = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-display-flex');
  static const cssDisplayGrid = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-display-grid');
  static const cssDisplayNone = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-display-none');
  static const cssDisplay = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-display');
  static const cssFilter = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-filter');
  static const cssFlexDirection = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-flex-direction');
  static const cssFlexWrap = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-flex-wrap');
  static const cssFloat = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-float');
  static const cssFontKerning = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-font-kerning');
  static const cssFontWeight = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-font-weight');
  static const cssFont = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-font');
  static const cssGap = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-gap');
  static const cssGridTemplate = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-grid-template');
  static const cssHeight = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-height');
  static const cssHyphens = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-hyphens');
  static const cssInlineSize = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-inline-size');
  static const cssJustifyContent = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-justify-content');
  static const cssLeftRightTopBottom = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-left-right-top-bottom');
  static const cssLetterSpacing = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-letter-spacing');
  static const cssLineHeight = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-line-height');
  static const cssListStyleImage = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-list-style-image');
  static const cssListStylePosition = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-list-style-position');
  static const cssListStyleType = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-list-style-type');
  static const cssListStyle = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-list-style');
  static const cssMarginBlockStartEnd = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-margin-block-start-end');
  static const cssMarginInlineBlock = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-margin-inline-block');
  static const cssMarginInlineStartEnd = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-margin-inline-start-end');
  static const cssMarginInline = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-margin-inline');
  static const cssMargin = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-margin');
  static const cssMaxBlockSize = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-max-block-size');
  static const cssMaxHeight = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-max-height');
  static const cssMaxWidth = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-max-width');
  static const cssMinHeight = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-min-height');
  static const cssMinInlineSize = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-min-inline-size');
  static const cssMinWidth = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-min-width');
  static const cssMixBlendMode = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-mix-blend-mode');
  static const cssObjectFit = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-object-fit');
  static const cssObjectPosition = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-object-position');
  static const cssOpacity = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-opacity');
  static const cssOutlineOffset = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-outline-offset');
  static const cssOutline = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-outline');
  static const cssOverflowWrap = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-overflow-wrap');
  static const cssOverflow = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-overflow');
  static const cssPaddingBlockStartEnd = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-padding-block-start-end');
  static const cssPaddingInlineBlock = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-padding-inline-block');
  static const cssPaddingInlineStartEnd = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-padding-inline-start-end');
  static const cssPadding = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-padding');
  static const cssPosition = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-position');
  static const cssTabSize = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-tab-size');
  static const cssTableLayout = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-table-layout');
  static const cssTextAlignLast = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-align-last');
  static const cssTextAlign = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-align');
  static const cssTextDecorationColor = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-decoration-color');
  static const cssTextDecorationThickness = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-decoration-thickness');
  static const cssTextDecoration = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-decoration');
  static const cssTextEmphasisPosition = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-emphasis-position');
  static const cssTextEmphasis = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-emphasis');
  static const cssTextIndent = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-indent');
  static const cssTextOverflow = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-overflow');
  static const cssTextShadow = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-shadow');
  static const cssTextTransform = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-transform');
  static const cssTextUnderlineOffset = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-text-underline-offset');
  static const cssTransform = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-transform');
  static const cssVerticalAlign = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-vertical-align');
  static const cssVisibility = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-visibility');
  static const cssWhiteSpace = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-white-space');
  static const cssWidth = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-width');
  static const cssWordBreak = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-word-break');
  static const cssWritingMode = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-writing-mode');
  static const cssZIndex = EmailFeatureFamilyStatisticsFeatureEnum._(r'css-z-index');
  static const htmlAbbr = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-abbr');
  static const htmlAddress = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-address');
  static const htmlAlign = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-align');
  static const htmlAnchorLinks = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-anchor-links');
  static const htmlAriaDescribedby = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-aria-describedby');
  static const htmlAriaHidden = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-aria-hidden');
  static const htmlAriaLabel = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-aria-label');
  static const htmlAriaLabelledby = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-aria-labelledby');
  static const htmlAriaLive = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-aria-live');
  static const htmlAudio = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-audio');
  static const htmlBackground = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-background');
  static const htmlBase = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-base');
  static const htmlBlockquote = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-blockquote');
  static const htmlBody = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-body');
  static const htmlButtonReset = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-button-reset');
  static const htmlButtonSubmit = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-button-submit');
  static const htmlCode = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-code');
  static const htmlDel = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-del');
  static const htmlDfn = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-dfn');
  static const htmlDialog = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-dialog');
  static const htmlDir = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-dir');
  static const htmlDiv = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-div');
  static const htmlDoctype = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-doctype');
  static const htmlForm = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-form');
  static const htmlH1H6 = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-h1-h6');
  static const htmlHeight = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-height');
  static const htmlImageMaps = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-image-maps');
  static const htmlInputCheckbox = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-input-checkbox');
  static const htmlInputHidden = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-input-hidden');
  static const htmlInputRadio = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-input-radio');
  static const htmlInputReset = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-input-reset');
  static const htmlInputSubmit = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-input-submit');
  static const htmlInputText = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-input-text');
  static const htmlLang = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-lang');
  static const htmlLink = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-link');
  static const htmlLists = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-lists');
  static const htmlLoadingAttribute = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-loading-attribute');
  static const htmlMailtoLinks = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-mailto-links');
  static const htmlMarquee = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-marquee');
  static const htmlMeter = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-meter');
  static const htmlObject = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-object');
  static const htmlP = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-p');
  static const htmlPicture = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-picture');
  static const htmlPre = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-pre');
  static const htmlProgress = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-progress');
  static const htmlRequired = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-required');
  static const htmlRole = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-role');
  static const htmlRp = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-rp');
  static const htmlRt = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-rt');
  static const htmlRuby = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-ruby');
  static const htmlSelect = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-select');
  static const htmlSemantics = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-semantics');
  static const htmlSmall = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-small');
  static const htmlSpan = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-span');
  static const htmlSrcset = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-srcset');
  static const htmlStrike = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-strike');
  static const htmlStrong = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-strong');
  static const htmlStyle = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-style');
  static const htmlSvg = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-svg');
  static const htmlTable = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-table');
  static const htmlTarget = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-target');
  static const htmlTextarea = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-textarea');
  static const htmlValign = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-valign');
  static const htmlVideo = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-video');
  static const htmlWbr = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-wbr');
  static const htmlWidth = EmailFeatureFamilyStatisticsFeatureEnum._(r'html-width');
  static const imageAvif = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-avif');
  static const imageBase64 = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-base64');
  static const imageBmp = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-bmp');
  static const imageGif = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-gif');
  static const imageIco = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-ico');
  static const imageJpg = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-jpg');
  static const imagePng = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-png');
  static const imageSvg = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-svg');
  static const imageWebp = EmailFeatureFamilyStatisticsFeatureEnum._(r'image-webp');
  static const unsupported = EmailFeatureFamilyStatisticsFeatureEnum._(r'unsupported');

  /// List of all possible values in this [enum][EmailFeatureFamilyStatisticsFeatureEnum].
  static const values = <EmailFeatureFamilyStatisticsFeatureEnum>[
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

  static EmailFeatureFamilyStatisticsFeatureEnum? fromJson(dynamic value) => EmailFeatureFamilyStatisticsFeatureEnumTypeTransformer().decode(value);

  static List<EmailFeatureFamilyStatisticsFeatureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureFamilyStatisticsFeatureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureFamilyStatisticsFeatureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureFamilyStatisticsFeatureEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureFamilyStatisticsFeatureEnum].
class EmailFeatureFamilyStatisticsFeatureEnumTypeTransformer {
  factory EmailFeatureFamilyStatisticsFeatureEnumTypeTransformer() => _instance ??= const EmailFeatureFamilyStatisticsFeatureEnumTypeTransformer._();

  const EmailFeatureFamilyStatisticsFeatureEnumTypeTransformer._();

  String encode(EmailFeatureFamilyStatisticsFeatureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureFamilyStatisticsFeatureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureFamilyStatisticsFeatureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'amp': return EmailFeatureFamilyStatisticsFeatureEnum.amp;
        case r'css-accent-color': return EmailFeatureFamilyStatisticsFeatureEnum.cssAccentColor;
        case r'css-align-items': return EmailFeatureFamilyStatisticsFeatureEnum.cssAlignItems;
        case r'css-animation': return EmailFeatureFamilyStatisticsFeatureEnum.cssAnimation;
        case r'css-aspect-ratio': return EmailFeatureFamilyStatisticsFeatureEnum.cssAspectRatio;
        case r'css-at-font-face': return EmailFeatureFamilyStatisticsFeatureEnum.cssAtFontFace;
        case r'css-at-import': return EmailFeatureFamilyStatisticsFeatureEnum.cssAtImport;
        case r'css-at-keyframes': return EmailFeatureFamilyStatisticsFeatureEnum.cssAtKeyframes;
        case r'css-at-media': return EmailFeatureFamilyStatisticsFeatureEnum.cssAtMedia;
        case r'css-at-supports': return EmailFeatureFamilyStatisticsFeatureEnum.cssAtSupports;
        case r'css-background-blend-mode': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundBlendMode;
        case r'css-background-clip': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundClip;
        case r'css-background-color': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundColor;
        case r'css-background-image': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundImage;
        case r'css-background-origin': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundOrigin;
        case r'css-background-position': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundPosition;
        case r'css-background-repeat': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundRepeat;
        case r'css-background-size': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackgroundSize;
        case r'css-background': return EmailFeatureFamilyStatisticsFeatureEnum.cssBackground;
        case r'css-block-inline-size': return EmailFeatureFamilyStatisticsFeatureEnum.cssBlockInlineSize;
        case r'css-border-image': return EmailFeatureFamilyStatisticsFeatureEnum.cssBorderImage;
        case r'css-border-inline-block-individual': return EmailFeatureFamilyStatisticsFeatureEnum.cssBorderInlineBlockIndividual;
        case r'css-border-inline-block-longhand': return EmailFeatureFamilyStatisticsFeatureEnum.cssBorderInlineBlockLonghand;
        case r'css-border-inline-block': return EmailFeatureFamilyStatisticsFeatureEnum.cssBorderInlineBlock;
        case r'css-border-radius-logical': return EmailFeatureFamilyStatisticsFeatureEnum.cssBorderRadiusLogical;
        case r'css-border-radius': return EmailFeatureFamilyStatisticsFeatureEnum.cssBorderRadius;
        case r'css-border': return EmailFeatureFamilyStatisticsFeatureEnum.cssBorder;
        case r'css-box-shadow': return EmailFeatureFamilyStatisticsFeatureEnum.cssBoxShadow;
        case r'css-box-sizing': return EmailFeatureFamilyStatisticsFeatureEnum.cssBoxSizing;
        case r'css-caption-side': return EmailFeatureFamilyStatisticsFeatureEnum.cssCaptionSide;
        case r'css-clip-path': return EmailFeatureFamilyStatisticsFeatureEnum.cssClipPath;
        case r'css-column-count': return EmailFeatureFamilyStatisticsFeatureEnum.cssColumnCount;
        case r'css-column-layout-properties': return EmailFeatureFamilyStatisticsFeatureEnum.cssColumnLayoutProperties;
        case r'css-direction': return EmailFeatureFamilyStatisticsFeatureEnum.cssDirection;
        case r'css-display-flex': return EmailFeatureFamilyStatisticsFeatureEnum.cssDisplayFlex;
        case r'css-display-grid': return EmailFeatureFamilyStatisticsFeatureEnum.cssDisplayGrid;
        case r'css-display-none': return EmailFeatureFamilyStatisticsFeatureEnum.cssDisplayNone;
        case r'css-display': return EmailFeatureFamilyStatisticsFeatureEnum.cssDisplay;
        case r'css-filter': return EmailFeatureFamilyStatisticsFeatureEnum.cssFilter;
        case r'css-flex-direction': return EmailFeatureFamilyStatisticsFeatureEnum.cssFlexDirection;
        case r'css-flex-wrap': return EmailFeatureFamilyStatisticsFeatureEnum.cssFlexWrap;
        case r'css-float': return EmailFeatureFamilyStatisticsFeatureEnum.cssFloat;
        case r'css-font-kerning': return EmailFeatureFamilyStatisticsFeatureEnum.cssFontKerning;
        case r'css-font-weight': return EmailFeatureFamilyStatisticsFeatureEnum.cssFontWeight;
        case r'css-font': return EmailFeatureFamilyStatisticsFeatureEnum.cssFont;
        case r'css-gap': return EmailFeatureFamilyStatisticsFeatureEnum.cssGap;
        case r'css-grid-template': return EmailFeatureFamilyStatisticsFeatureEnum.cssGridTemplate;
        case r'css-height': return EmailFeatureFamilyStatisticsFeatureEnum.cssHeight;
        case r'css-hyphens': return EmailFeatureFamilyStatisticsFeatureEnum.cssHyphens;
        case r'css-inline-size': return EmailFeatureFamilyStatisticsFeatureEnum.cssInlineSize;
        case r'css-justify-content': return EmailFeatureFamilyStatisticsFeatureEnum.cssJustifyContent;
        case r'css-left-right-top-bottom': return EmailFeatureFamilyStatisticsFeatureEnum.cssLeftRightTopBottom;
        case r'css-letter-spacing': return EmailFeatureFamilyStatisticsFeatureEnum.cssLetterSpacing;
        case r'css-line-height': return EmailFeatureFamilyStatisticsFeatureEnum.cssLineHeight;
        case r'css-list-style-image': return EmailFeatureFamilyStatisticsFeatureEnum.cssListStyleImage;
        case r'css-list-style-position': return EmailFeatureFamilyStatisticsFeatureEnum.cssListStylePosition;
        case r'css-list-style-type': return EmailFeatureFamilyStatisticsFeatureEnum.cssListStyleType;
        case r'css-list-style': return EmailFeatureFamilyStatisticsFeatureEnum.cssListStyle;
        case r'css-margin-block-start-end': return EmailFeatureFamilyStatisticsFeatureEnum.cssMarginBlockStartEnd;
        case r'css-margin-inline-block': return EmailFeatureFamilyStatisticsFeatureEnum.cssMarginInlineBlock;
        case r'css-margin-inline-start-end': return EmailFeatureFamilyStatisticsFeatureEnum.cssMarginInlineStartEnd;
        case r'css-margin-inline': return EmailFeatureFamilyStatisticsFeatureEnum.cssMarginInline;
        case r'css-margin': return EmailFeatureFamilyStatisticsFeatureEnum.cssMargin;
        case r'css-max-block-size': return EmailFeatureFamilyStatisticsFeatureEnum.cssMaxBlockSize;
        case r'css-max-height': return EmailFeatureFamilyStatisticsFeatureEnum.cssMaxHeight;
        case r'css-max-width': return EmailFeatureFamilyStatisticsFeatureEnum.cssMaxWidth;
        case r'css-min-height': return EmailFeatureFamilyStatisticsFeatureEnum.cssMinHeight;
        case r'css-min-inline-size': return EmailFeatureFamilyStatisticsFeatureEnum.cssMinInlineSize;
        case r'css-min-width': return EmailFeatureFamilyStatisticsFeatureEnum.cssMinWidth;
        case r'css-mix-blend-mode': return EmailFeatureFamilyStatisticsFeatureEnum.cssMixBlendMode;
        case r'css-object-fit': return EmailFeatureFamilyStatisticsFeatureEnum.cssObjectFit;
        case r'css-object-position': return EmailFeatureFamilyStatisticsFeatureEnum.cssObjectPosition;
        case r'css-opacity': return EmailFeatureFamilyStatisticsFeatureEnum.cssOpacity;
        case r'css-outline-offset': return EmailFeatureFamilyStatisticsFeatureEnum.cssOutlineOffset;
        case r'css-outline': return EmailFeatureFamilyStatisticsFeatureEnum.cssOutline;
        case r'css-overflow-wrap': return EmailFeatureFamilyStatisticsFeatureEnum.cssOverflowWrap;
        case r'css-overflow': return EmailFeatureFamilyStatisticsFeatureEnum.cssOverflow;
        case r'css-padding-block-start-end': return EmailFeatureFamilyStatisticsFeatureEnum.cssPaddingBlockStartEnd;
        case r'css-padding-inline-block': return EmailFeatureFamilyStatisticsFeatureEnum.cssPaddingInlineBlock;
        case r'css-padding-inline-start-end': return EmailFeatureFamilyStatisticsFeatureEnum.cssPaddingInlineStartEnd;
        case r'css-padding': return EmailFeatureFamilyStatisticsFeatureEnum.cssPadding;
        case r'css-position': return EmailFeatureFamilyStatisticsFeatureEnum.cssPosition;
        case r'css-tab-size': return EmailFeatureFamilyStatisticsFeatureEnum.cssTabSize;
        case r'css-table-layout': return EmailFeatureFamilyStatisticsFeatureEnum.cssTableLayout;
        case r'css-text-align-last': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextAlignLast;
        case r'css-text-align': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextAlign;
        case r'css-text-decoration-color': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextDecorationColor;
        case r'css-text-decoration-thickness': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextDecorationThickness;
        case r'css-text-decoration': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextDecoration;
        case r'css-text-emphasis-position': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextEmphasisPosition;
        case r'css-text-emphasis': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextEmphasis;
        case r'css-text-indent': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextIndent;
        case r'css-text-overflow': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextOverflow;
        case r'css-text-shadow': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextShadow;
        case r'css-text-transform': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextTransform;
        case r'css-text-underline-offset': return EmailFeatureFamilyStatisticsFeatureEnum.cssTextUnderlineOffset;
        case r'css-transform': return EmailFeatureFamilyStatisticsFeatureEnum.cssTransform;
        case r'css-vertical-align': return EmailFeatureFamilyStatisticsFeatureEnum.cssVerticalAlign;
        case r'css-visibility': return EmailFeatureFamilyStatisticsFeatureEnum.cssVisibility;
        case r'css-white-space': return EmailFeatureFamilyStatisticsFeatureEnum.cssWhiteSpace;
        case r'css-width': return EmailFeatureFamilyStatisticsFeatureEnum.cssWidth;
        case r'css-word-break': return EmailFeatureFamilyStatisticsFeatureEnum.cssWordBreak;
        case r'css-writing-mode': return EmailFeatureFamilyStatisticsFeatureEnum.cssWritingMode;
        case r'css-z-index': return EmailFeatureFamilyStatisticsFeatureEnum.cssZIndex;
        case r'html-abbr': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAbbr;
        case r'html-address': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAddress;
        case r'html-align': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAlign;
        case r'html-anchor-links': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAnchorLinks;
        case r'html-aria-describedby': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAriaDescribedby;
        case r'html-aria-hidden': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAriaHidden;
        case r'html-aria-label': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAriaLabel;
        case r'html-aria-labelledby': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAriaLabelledby;
        case r'html-aria-live': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAriaLive;
        case r'html-audio': return EmailFeatureFamilyStatisticsFeatureEnum.htmlAudio;
        case r'html-background': return EmailFeatureFamilyStatisticsFeatureEnum.htmlBackground;
        case r'html-base': return EmailFeatureFamilyStatisticsFeatureEnum.htmlBase;
        case r'html-blockquote': return EmailFeatureFamilyStatisticsFeatureEnum.htmlBlockquote;
        case r'html-body': return EmailFeatureFamilyStatisticsFeatureEnum.htmlBody;
        case r'html-button-reset': return EmailFeatureFamilyStatisticsFeatureEnum.htmlButtonReset;
        case r'html-button-submit': return EmailFeatureFamilyStatisticsFeatureEnum.htmlButtonSubmit;
        case r'html-code': return EmailFeatureFamilyStatisticsFeatureEnum.htmlCode;
        case r'html-del': return EmailFeatureFamilyStatisticsFeatureEnum.htmlDel;
        case r'html-dfn': return EmailFeatureFamilyStatisticsFeatureEnum.htmlDfn;
        case r'html-dialog': return EmailFeatureFamilyStatisticsFeatureEnum.htmlDialog;
        case r'html-dir': return EmailFeatureFamilyStatisticsFeatureEnum.htmlDir;
        case r'html-div': return EmailFeatureFamilyStatisticsFeatureEnum.htmlDiv;
        case r'html-doctype': return EmailFeatureFamilyStatisticsFeatureEnum.htmlDoctype;
        case r'html-form': return EmailFeatureFamilyStatisticsFeatureEnum.htmlForm;
        case r'html-h1-h6': return EmailFeatureFamilyStatisticsFeatureEnum.htmlH1H6;
        case r'html-height': return EmailFeatureFamilyStatisticsFeatureEnum.htmlHeight;
        case r'html-image-maps': return EmailFeatureFamilyStatisticsFeatureEnum.htmlImageMaps;
        case r'html-input-checkbox': return EmailFeatureFamilyStatisticsFeatureEnum.htmlInputCheckbox;
        case r'html-input-hidden': return EmailFeatureFamilyStatisticsFeatureEnum.htmlInputHidden;
        case r'html-input-radio': return EmailFeatureFamilyStatisticsFeatureEnum.htmlInputRadio;
        case r'html-input-reset': return EmailFeatureFamilyStatisticsFeatureEnum.htmlInputReset;
        case r'html-input-submit': return EmailFeatureFamilyStatisticsFeatureEnum.htmlInputSubmit;
        case r'html-input-text': return EmailFeatureFamilyStatisticsFeatureEnum.htmlInputText;
        case r'html-lang': return EmailFeatureFamilyStatisticsFeatureEnum.htmlLang;
        case r'html-link': return EmailFeatureFamilyStatisticsFeatureEnum.htmlLink;
        case r'html-lists': return EmailFeatureFamilyStatisticsFeatureEnum.htmlLists;
        case r'html-loading-attribute': return EmailFeatureFamilyStatisticsFeatureEnum.htmlLoadingAttribute;
        case r'html-mailto-links': return EmailFeatureFamilyStatisticsFeatureEnum.htmlMailtoLinks;
        case r'html-marquee': return EmailFeatureFamilyStatisticsFeatureEnum.htmlMarquee;
        case r'html-meter': return EmailFeatureFamilyStatisticsFeatureEnum.htmlMeter;
        case r'html-object': return EmailFeatureFamilyStatisticsFeatureEnum.htmlObject;
        case r'html-p': return EmailFeatureFamilyStatisticsFeatureEnum.htmlP;
        case r'html-picture': return EmailFeatureFamilyStatisticsFeatureEnum.htmlPicture;
        case r'html-pre': return EmailFeatureFamilyStatisticsFeatureEnum.htmlPre;
        case r'html-progress': return EmailFeatureFamilyStatisticsFeatureEnum.htmlProgress;
        case r'html-required': return EmailFeatureFamilyStatisticsFeatureEnum.htmlRequired;
        case r'html-role': return EmailFeatureFamilyStatisticsFeatureEnum.htmlRole;
        case r'html-rp': return EmailFeatureFamilyStatisticsFeatureEnum.htmlRp;
        case r'html-rt': return EmailFeatureFamilyStatisticsFeatureEnum.htmlRt;
        case r'html-ruby': return EmailFeatureFamilyStatisticsFeatureEnum.htmlRuby;
        case r'html-select': return EmailFeatureFamilyStatisticsFeatureEnum.htmlSelect;
        case r'html-semantics': return EmailFeatureFamilyStatisticsFeatureEnum.htmlSemantics;
        case r'html-small': return EmailFeatureFamilyStatisticsFeatureEnum.htmlSmall;
        case r'html-span': return EmailFeatureFamilyStatisticsFeatureEnum.htmlSpan;
        case r'html-srcset': return EmailFeatureFamilyStatisticsFeatureEnum.htmlSrcset;
        case r'html-strike': return EmailFeatureFamilyStatisticsFeatureEnum.htmlStrike;
        case r'html-strong': return EmailFeatureFamilyStatisticsFeatureEnum.htmlStrong;
        case r'html-style': return EmailFeatureFamilyStatisticsFeatureEnum.htmlStyle;
        case r'html-svg': return EmailFeatureFamilyStatisticsFeatureEnum.htmlSvg;
        case r'html-table': return EmailFeatureFamilyStatisticsFeatureEnum.htmlTable;
        case r'html-target': return EmailFeatureFamilyStatisticsFeatureEnum.htmlTarget;
        case r'html-textarea': return EmailFeatureFamilyStatisticsFeatureEnum.htmlTextarea;
        case r'html-valign': return EmailFeatureFamilyStatisticsFeatureEnum.htmlValign;
        case r'html-video': return EmailFeatureFamilyStatisticsFeatureEnum.htmlVideo;
        case r'html-wbr': return EmailFeatureFamilyStatisticsFeatureEnum.htmlWbr;
        case r'html-width': return EmailFeatureFamilyStatisticsFeatureEnum.htmlWidth;
        case r'image-avif': return EmailFeatureFamilyStatisticsFeatureEnum.imageAvif;
        case r'image-base64': return EmailFeatureFamilyStatisticsFeatureEnum.imageBase64;
        case r'image-bmp': return EmailFeatureFamilyStatisticsFeatureEnum.imageBmp;
        case r'image-gif': return EmailFeatureFamilyStatisticsFeatureEnum.imageGif;
        case r'image-ico': return EmailFeatureFamilyStatisticsFeatureEnum.imageIco;
        case r'image-jpg': return EmailFeatureFamilyStatisticsFeatureEnum.imageJpg;
        case r'image-png': return EmailFeatureFamilyStatisticsFeatureEnum.imagePng;
        case r'image-svg': return EmailFeatureFamilyStatisticsFeatureEnum.imageSvg;
        case r'image-webp': return EmailFeatureFamilyStatisticsFeatureEnum.imageWebp;
        case r'unsupported': return EmailFeatureFamilyStatisticsFeatureEnum.unsupported;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureFamilyStatisticsFeatureEnumTypeTransformer] instance.
  static EmailFeatureFamilyStatisticsFeatureEnumTypeTransformer? _instance;
}



class EmailFeatureFamilyStatisticsFamilyEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureFamilyStatisticsFamilyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const aol = EmailFeatureFamilyStatisticsFamilyEnum._(r'aol');
  static const appleMail = EmailFeatureFamilyStatisticsFamilyEnum._(r'apple-mail');
  static const fastmail = EmailFeatureFamilyStatisticsFamilyEnum._(r'fastmail');
  static const freeFr = EmailFeatureFamilyStatisticsFamilyEnum._(r'free-fr');
  static const gmail = EmailFeatureFamilyStatisticsFamilyEnum._(r'gmail');
  static const gmx = EmailFeatureFamilyStatisticsFamilyEnum._(r'gmx');
  static const hey = EmailFeatureFamilyStatisticsFamilyEnum._(r'hey');
  static const ionos1and1 = EmailFeatureFamilyStatisticsFamilyEnum._(r'ionos-1and1');
  static const laposte = EmailFeatureFamilyStatisticsFamilyEnum._(r'laposte');
  static const mailRu = EmailFeatureFamilyStatisticsFamilyEnum._(r'mail-ru');
  static const microsoft = EmailFeatureFamilyStatisticsFamilyEnum._(r'microsoft');
  static const orange = EmailFeatureFamilyStatisticsFamilyEnum._(r'orange');
  static const outlook = EmailFeatureFamilyStatisticsFamilyEnum._(r'outlook');
  static const protonmail = EmailFeatureFamilyStatisticsFamilyEnum._(r'protonmail');
  static const rainloop = EmailFeatureFamilyStatisticsFamilyEnum._(r'rainloop');
  static const samsungEmail = EmailFeatureFamilyStatisticsFamilyEnum._(r'samsung-email');
  static const sfr = EmailFeatureFamilyStatisticsFamilyEnum._(r'sfr');
  static const tOnlineDe = EmailFeatureFamilyStatisticsFamilyEnum._(r't-online-de');
  static const thunderbird = EmailFeatureFamilyStatisticsFamilyEnum._(r'thunderbird');
  static const webDe = EmailFeatureFamilyStatisticsFamilyEnum._(r'web-de');
  static const yahoo = EmailFeatureFamilyStatisticsFamilyEnum._(r'yahoo');

  /// List of all possible values in this [enum][EmailFeatureFamilyStatisticsFamilyEnum].
  static const values = <EmailFeatureFamilyStatisticsFamilyEnum>[
    aol,
    appleMail,
    fastmail,
    freeFr,
    gmail,
    gmx,
    hey,
    ionos1and1,
    laposte,
    mailRu,
    microsoft,
    orange,
    outlook,
    protonmail,
    rainloop,
    samsungEmail,
    sfr,
    tOnlineDe,
    thunderbird,
    webDe,
    yahoo,
  ];

  static EmailFeatureFamilyStatisticsFamilyEnum? fromJson(dynamic value) => EmailFeatureFamilyStatisticsFamilyEnumTypeTransformer().decode(value);

  static List<EmailFeatureFamilyStatisticsFamilyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureFamilyStatisticsFamilyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureFamilyStatisticsFamilyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureFamilyStatisticsFamilyEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureFamilyStatisticsFamilyEnum].
class EmailFeatureFamilyStatisticsFamilyEnumTypeTransformer {
  factory EmailFeatureFamilyStatisticsFamilyEnumTypeTransformer() => _instance ??= const EmailFeatureFamilyStatisticsFamilyEnumTypeTransformer._();

  const EmailFeatureFamilyStatisticsFamilyEnumTypeTransformer._();

  String encode(EmailFeatureFamilyStatisticsFamilyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureFamilyStatisticsFamilyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureFamilyStatisticsFamilyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'aol': return EmailFeatureFamilyStatisticsFamilyEnum.aol;
        case r'apple-mail': return EmailFeatureFamilyStatisticsFamilyEnum.appleMail;
        case r'fastmail': return EmailFeatureFamilyStatisticsFamilyEnum.fastmail;
        case r'free-fr': return EmailFeatureFamilyStatisticsFamilyEnum.freeFr;
        case r'gmail': return EmailFeatureFamilyStatisticsFamilyEnum.gmail;
        case r'gmx': return EmailFeatureFamilyStatisticsFamilyEnum.gmx;
        case r'hey': return EmailFeatureFamilyStatisticsFamilyEnum.hey;
        case r'ionos-1and1': return EmailFeatureFamilyStatisticsFamilyEnum.ionos1and1;
        case r'laposte': return EmailFeatureFamilyStatisticsFamilyEnum.laposte;
        case r'mail-ru': return EmailFeatureFamilyStatisticsFamilyEnum.mailRu;
        case r'microsoft': return EmailFeatureFamilyStatisticsFamilyEnum.microsoft;
        case r'orange': return EmailFeatureFamilyStatisticsFamilyEnum.orange;
        case r'outlook': return EmailFeatureFamilyStatisticsFamilyEnum.outlook;
        case r'protonmail': return EmailFeatureFamilyStatisticsFamilyEnum.protonmail;
        case r'rainloop': return EmailFeatureFamilyStatisticsFamilyEnum.rainloop;
        case r'samsung-email': return EmailFeatureFamilyStatisticsFamilyEnum.samsungEmail;
        case r'sfr': return EmailFeatureFamilyStatisticsFamilyEnum.sfr;
        case r't-online-de': return EmailFeatureFamilyStatisticsFamilyEnum.tOnlineDe;
        case r'thunderbird': return EmailFeatureFamilyStatisticsFamilyEnum.thunderbird;
        case r'web-de': return EmailFeatureFamilyStatisticsFamilyEnum.webDe;
        case r'yahoo': return EmailFeatureFamilyStatisticsFamilyEnum.yahoo;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureFamilyStatisticsFamilyEnumTypeTransformer] instance.
  static EmailFeatureFamilyStatisticsFamilyEnumTypeTransformer? _instance;
}


