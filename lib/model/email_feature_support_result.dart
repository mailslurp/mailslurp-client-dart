//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureSupportResult {
  /// Returns a new [EmailFeatureSupportResult] instance.
  EmailFeatureSupportResult({
    required this.names,
    this.detectedFeatures = const {},
    this.featureOverviews = const [],
    this.featurePercentages = const [],
  });

  EmailFeatureNames names;

  Set<EmailFeatureSupportResultDetectedFeaturesEnum> detectedFeatures;

  List<EmailFeatureOverview> featureOverviews;

  List<EmailFeatureSupportStatusPercentage> featurePercentages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureSupportResult &&
     other.names == names &&
     other.detectedFeatures == detectedFeatures &&
     other.featureOverviews == featureOverviews &&
     other.featurePercentages == featurePercentages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (names.hashCode) +
    (detectedFeatures.hashCode) +
    (featureOverviews.hashCode) +
    (featurePercentages.hashCode);

  @override
  String toString() => 'EmailFeatureSupportResult[names=$names, detectedFeatures=$detectedFeatures, featureOverviews=$featureOverviews, featurePercentages=$featurePercentages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'names'] = this.names;
      json[r'detectedFeatures'] = this.detectedFeatures;
      json[r'featureOverviews'] = this.featureOverviews;
      json[r'featurePercentages'] = this.featurePercentages;
    return json;
  }

  /// Returns a new [EmailFeatureSupportResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureSupportResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureSupportResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureSupportResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureSupportResult(
        names: EmailFeatureNames.fromJson(json[r'names'])!,
        detectedFeatures: EmailFeatureSupportResultDetectedFeaturesEnum.listFromJson(json[r'detectedFeatures']).toSet(),
        featureOverviews: EmailFeatureOverview.listFromJson(json[r'featureOverviews']),
        featurePercentages: EmailFeatureSupportStatusPercentage.listFromJson(json[r'featurePercentages']),
      );
    }
    return null;
  }

  static List<EmailFeatureSupportResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureSupportResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureSupportResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureSupportResult> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureSupportResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureSupportResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureSupportResult-objects as value to a dart map
  static Map<String, List<EmailFeatureSupportResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureSupportResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureSupportResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'names',
    'detectedFeatures',
    'featureOverviews',
    'featurePercentages',
  };
}


class EmailFeatureSupportResultDetectedFeaturesEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureSupportResultDetectedFeaturesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const amp = EmailFeatureSupportResultDetectedFeaturesEnum._(r'amp');
  static const cssAccentColor = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-accent-color');
  static const cssAlignItems = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-align-items');
  static const cssAnimation = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-animation');
  static const cssAspectRatio = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-aspect-ratio');
  static const cssAtFontFace = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-at-font-face');
  static const cssAtImport = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-at-import');
  static const cssAtKeyframes = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-at-keyframes');
  static const cssAtMedia = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-at-media');
  static const cssAtSupports = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-at-supports');
  static const cssBackgroundBlendMode = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-blend-mode');
  static const cssBackgroundClip = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-clip');
  static const cssBackgroundColor = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-color');
  static const cssBackgroundImage = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-image');
  static const cssBackgroundOrigin = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-origin');
  static const cssBackgroundPosition = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-position');
  static const cssBackgroundRepeat = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-repeat');
  static const cssBackgroundSize = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background-size');
  static const cssBackground = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-background');
  static const cssBlockInlineSize = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-block-inline-size');
  static const cssBorderImage = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-border-image');
  static const cssBorderInlineBlockIndividual = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-border-inline-block-individual');
  static const cssBorderInlineBlockLonghand = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-border-inline-block-longhand');
  static const cssBorderInlineBlock = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-border-inline-block');
  static const cssBorderRadiusLogical = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-border-radius-logical');
  static const cssBorderRadius = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-border-radius');
  static const cssBorder = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-border');
  static const cssBoxShadow = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-box-shadow');
  static const cssBoxSizing = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-box-sizing');
  static const cssCaptionSide = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-caption-side');
  static const cssClipPath = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-clip-path');
  static const cssColumnCount = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-column-count');
  static const cssColumnLayoutProperties = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-column-layout-properties');
  static const cssDirection = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-direction');
  static const cssDisplayFlex = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-display-flex');
  static const cssDisplayGrid = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-display-grid');
  static const cssDisplayNone = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-display-none');
  static const cssDisplay = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-display');
  static const cssFilter = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-filter');
  static const cssFlexDirection = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-flex-direction');
  static const cssFlexWrap = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-flex-wrap');
  static const cssFloat = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-float');
  static const cssFontKerning = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-font-kerning');
  static const cssFontWeight = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-font-weight');
  static const cssFont = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-font');
  static const cssGap = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-gap');
  static const cssGridTemplate = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-grid-template');
  static const cssHeight = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-height');
  static const cssHyphens = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-hyphens');
  static const cssInlineSize = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-inline-size');
  static const cssJustifyContent = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-justify-content');
  static const cssLeftRightTopBottom = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-left-right-top-bottom');
  static const cssLetterSpacing = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-letter-spacing');
  static const cssLineHeight = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-line-height');
  static const cssListStyleImage = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-list-style-image');
  static const cssListStylePosition = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-list-style-position');
  static const cssListStyleType = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-list-style-type');
  static const cssListStyle = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-list-style');
  static const cssMarginBlockStartEnd = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-margin-block-start-end');
  static const cssMarginInlineBlock = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-margin-inline-block');
  static const cssMarginInlineStartEnd = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-margin-inline-start-end');
  static const cssMarginInline = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-margin-inline');
  static const cssMargin = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-margin');
  static const cssMaxBlockSize = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-max-block-size');
  static const cssMaxHeight = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-max-height');
  static const cssMaxWidth = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-max-width');
  static const cssMinHeight = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-min-height');
  static const cssMinInlineSize = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-min-inline-size');
  static const cssMinWidth = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-min-width');
  static const cssMixBlendMode = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-mix-blend-mode');
  static const cssObjectFit = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-object-fit');
  static const cssObjectPosition = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-object-position');
  static const cssOpacity = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-opacity');
  static const cssOutlineOffset = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-outline-offset');
  static const cssOutline = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-outline');
  static const cssOverflowWrap = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-overflow-wrap');
  static const cssOverflow = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-overflow');
  static const cssPaddingBlockStartEnd = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-padding-block-start-end');
  static const cssPaddingInlineBlock = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-padding-inline-block');
  static const cssPaddingInlineStartEnd = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-padding-inline-start-end');
  static const cssPadding = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-padding');
  static const cssPosition = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-position');
  static const cssTabSize = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-tab-size');
  static const cssTableLayout = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-table-layout');
  static const cssTextAlignLast = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-align-last');
  static const cssTextAlign = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-align');
  static const cssTextDecorationColor = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-decoration-color');
  static const cssTextDecorationThickness = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-decoration-thickness');
  static const cssTextDecoration = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-decoration');
  static const cssTextEmphasisPosition = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-emphasis-position');
  static const cssTextEmphasis = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-emphasis');
  static const cssTextIndent = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-indent');
  static const cssTextOverflow = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-overflow');
  static const cssTextShadow = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-shadow');
  static const cssTextTransform = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-transform');
  static const cssTextUnderlineOffset = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-text-underline-offset');
  static const cssTransform = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-transform');
  static const cssVerticalAlign = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-vertical-align');
  static const cssVisibility = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-visibility');
  static const cssWhiteSpace = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-white-space');
  static const cssWidth = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-width');
  static const cssWordBreak = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-word-break');
  static const cssWritingMode = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-writing-mode');
  static const cssZIndex = EmailFeatureSupportResultDetectedFeaturesEnum._(r'css-z-index');
  static const htmlAbbr = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-abbr');
  static const htmlAddress = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-address');
  static const htmlAlign = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-align');
  static const htmlAnchorLinks = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-anchor-links');
  static const htmlAriaDescribedby = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-aria-describedby');
  static const htmlAriaHidden = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-aria-hidden');
  static const htmlAriaLabel = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-aria-label');
  static const htmlAriaLabelledby = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-aria-labelledby');
  static const htmlAriaLive = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-aria-live');
  static const htmlAudio = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-audio');
  static const htmlBackground = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-background');
  static const htmlBase = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-base');
  static const htmlBlockquote = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-blockquote');
  static const htmlBody = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-body');
  static const htmlButtonReset = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-button-reset');
  static const htmlButtonSubmit = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-button-submit');
  static const htmlCode = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-code');
  static const htmlDel = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-del');
  static const htmlDfn = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-dfn');
  static const htmlDialog = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-dialog');
  static const htmlDir = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-dir');
  static const htmlDiv = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-div');
  static const htmlDoctype = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-doctype');
  static const htmlForm = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-form');
  static const htmlH1H6 = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-h1-h6');
  static const htmlHeight = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-height');
  static const htmlImageMaps = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-image-maps');
  static const htmlInputCheckbox = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-input-checkbox');
  static const htmlInputHidden = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-input-hidden');
  static const htmlInputRadio = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-input-radio');
  static const htmlInputReset = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-input-reset');
  static const htmlInputSubmit = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-input-submit');
  static const htmlInputText = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-input-text');
  static const htmlLang = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-lang');
  static const htmlLink = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-link');
  static const htmlLists = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-lists');
  static const htmlLoadingAttribute = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-loading-attribute');
  static const htmlMailtoLinks = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-mailto-links');
  static const htmlMarquee = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-marquee');
  static const htmlMeter = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-meter');
  static const htmlObject = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-object');
  static const htmlP = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-p');
  static const htmlPicture = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-picture');
  static const htmlPre = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-pre');
  static const htmlProgress = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-progress');
  static const htmlRequired = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-required');
  static const htmlRole = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-role');
  static const htmlRp = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-rp');
  static const htmlRt = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-rt');
  static const htmlRuby = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-ruby');
  static const htmlSelect = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-select');
  static const htmlSemantics = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-semantics');
  static const htmlSmall = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-small');
  static const htmlSpan = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-span');
  static const htmlSrcset = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-srcset');
  static const htmlStrike = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-strike');
  static const htmlStrong = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-strong');
  static const htmlStyle = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-style');
  static const htmlSvg = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-svg');
  static const htmlTable = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-table');
  static const htmlTarget = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-target');
  static const htmlTextarea = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-textarea');
  static const htmlValign = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-valign');
  static const htmlVideo = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-video');
  static const htmlWbr = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-wbr');
  static const htmlWidth = EmailFeatureSupportResultDetectedFeaturesEnum._(r'html-width');
  static const imageAvif = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-avif');
  static const imageBase64 = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-base64');
  static const imageBmp = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-bmp');
  static const imageGif = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-gif');
  static const imageIco = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-ico');
  static const imageJpg = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-jpg');
  static const imagePng = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-png');
  static const imageSvg = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-svg');
  static const imageWebp = EmailFeatureSupportResultDetectedFeaturesEnum._(r'image-webp');
  static const unsupported = EmailFeatureSupportResultDetectedFeaturesEnum._(r'unsupported');

  /// List of all possible values in this [enum][EmailFeatureSupportResultDetectedFeaturesEnum].
  static const values = <EmailFeatureSupportResultDetectedFeaturesEnum>[
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

  static EmailFeatureSupportResultDetectedFeaturesEnum? fromJson(dynamic value) => EmailFeatureSupportResultDetectedFeaturesEnumTypeTransformer().decode(value);

  static List<EmailFeatureSupportResultDetectedFeaturesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureSupportResultDetectedFeaturesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureSupportResultDetectedFeaturesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureSupportResultDetectedFeaturesEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureSupportResultDetectedFeaturesEnum].
class EmailFeatureSupportResultDetectedFeaturesEnumTypeTransformer {
  factory EmailFeatureSupportResultDetectedFeaturesEnumTypeTransformer() => _instance ??= const EmailFeatureSupportResultDetectedFeaturesEnumTypeTransformer._();

  const EmailFeatureSupportResultDetectedFeaturesEnumTypeTransformer._();

  String encode(EmailFeatureSupportResultDetectedFeaturesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureSupportResultDetectedFeaturesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureSupportResultDetectedFeaturesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'amp': return EmailFeatureSupportResultDetectedFeaturesEnum.amp;
        case r'css-accent-color': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAccentColor;
        case r'css-align-items': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAlignItems;
        case r'css-animation': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAnimation;
        case r'css-aspect-ratio': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAspectRatio;
        case r'css-at-font-face': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAtFontFace;
        case r'css-at-import': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAtImport;
        case r'css-at-keyframes': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAtKeyframes;
        case r'css-at-media': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAtMedia;
        case r'css-at-supports': return EmailFeatureSupportResultDetectedFeaturesEnum.cssAtSupports;
        case r'css-background-blend-mode': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundBlendMode;
        case r'css-background-clip': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundClip;
        case r'css-background-color': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundColor;
        case r'css-background-image': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundImage;
        case r'css-background-origin': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundOrigin;
        case r'css-background-position': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundPosition;
        case r'css-background-repeat': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundRepeat;
        case r'css-background-size': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackgroundSize;
        case r'css-background': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBackground;
        case r'css-block-inline-size': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBlockInlineSize;
        case r'css-border-image': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBorderImage;
        case r'css-border-inline-block-individual': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBorderInlineBlockIndividual;
        case r'css-border-inline-block-longhand': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBorderInlineBlockLonghand;
        case r'css-border-inline-block': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBorderInlineBlock;
        case r'css-border-radius-logical': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBorderRadiusLogical;
        case r'css-border-radius': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBorderRadius;
        case r'css-border': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBorder;
        case r'css-box-shadow': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBoxShadow;
        case r'css-box-sizing': return EmailFeatureSupportResultDetectedFeaturesEnum.cssBoxSizing;
        case r'css-caption-side': return EmailFeatureSupportResultDetectedFeaturesEnum.cssCaptionSide;
        case r'css-clip-path': return EmailFeatureSupportResultDetectedFeaturesEnum.cssClipPath;
        case r'css-column-count': return EmailFeatureSupportResultDetectedFeaturesEnum.cssColumnCount;
        case r'css-column-layout-properties': return EmailFeatureSupportResultDetectedFeaturesEnum.cssColumnLayoutProperties;
        case r'css-direction': return EmailFeatureSupportResultDetectedFeaturesEnum.cssDirection;
        case r'css-display-flex': return EmailFeatureSupportResultDetectedFeaturesEnum.cssDisplayFlex;
        case r'css-display-grid': return EmailFeatureSupportResultDetectedFeaturesEnum.cssDisplayGrid;
        case r'css-display-none': return EmailFeatureSupportResultDetectedFeaturesEnum.cssDisplayNone;
        case r'css-display': return EmailFeatureSupportResultDetectedFeaturesEnum.cssDisplay;
        case r'css-filter': return EmailFeatureSupportResultDetectedFeaturesEnum.cssFilter;
        case r'css-flex-direction': return EmailFeatureSupportResultDetectedFeaturesEnum.cssFlexDirection;
        case r'css-flex-wrap': return EmailFeatureSupportResultDetectedFeaturesEnum.cssFlexWrap;
        case r'css-float': return EmailFeatureSupportResultDetectedFeaturesEnum.cssFloat;
        case r'css-font-kerning': return EmailFeatureSupportResultDetectedFeaturesEnum.cssFontKerning;
        case r'css-font-weight': return EmailFeatureSupportResultDetectedFeaturesEnum.cssFontWeight;
        case r'css-font': return EmailFeatureSupportResultDetectedFeaturesEnum.cssFont;
        case r'css-gap': return EmailFeatureSupportResultDetectedFeaturesEnum.cssGap;
        case r'css-grid-template': return EmailFeatureSupportResultDetectedFeaturesEnum.cssGridTemplate;
        case r'css-height': return EmailFeatureSupportResultDetectedFeaturesEnum.cssHeight;
        case r'css-hyphens': return EmailFeatureSupportResultDetectedFeaturesEnum.cssHyphens;
        case r'css-inline-size': return EmailFeatureSupportResultDetectedFeaturesEnum.cssInlineSize;
        case r'css-justify-content': return EmailFeatureSupportResultDetectedFeaturesEnum.cssJustifyContent;
        case r'css-left-right-top-bottom': return EmailFeatureSupportResultDetectedFeaturesEnum.cssLeftRightTopBottom;
        case r'css-letter-spacing': return EmailFeatureSupportResultDetectedFeaturesEnum.cssLetterSpacing;
        case r'css-line-height': return EmailFeatureSupportResultDetectedFeaturesEnum.cssLineHeight;
        case r'css-list-style-image': return EmailFeatureSupportResultDetectedFeaturesEnum.cssListStyleImage;
        case r'css-list-style-position': return EmailFeatureSupportResultDetectedFeaturesEnum.cssListStylePosition;
        case r'css-list-style-type': return EmailFeatureSupportResultDetectedFeaturesEnum.cssListStyleType;
        case r'css-list-style': return EmailFeatureSupportResultDetectedFeaturesEnum.cssListStyle;
        case r'css-margin-block-start-end': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMarginBlockStartEnd;
        case r'css-margin-inline-block': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMarginInlineBlock;
        case r'css-margin-inline-start-end': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMarginInlineStartEnd;
        case r'css-margin-inline': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMarginInline;
        case r'css-margin': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMargin;
        case r'css-max-block-size': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMaxBlockSize;
        case r'css-max-height': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMaxHeight;
        case r'css-max-width': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMaxWidth;
        case r'css-min-height': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMinHeight;
        case r'css-min-inline-size': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMinInlineSize;
        case r'css-min-width': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMinWidth;
        case r'css-mix-blend-mode': return EmailFeatureSupportResultDetectedFeaturesEnum.cssMixBlendMode;
        case r'css-object-fit': return EmailFeatureSupportResultDetectedFeaturesEnum.cssObjectFit;
        case r'css-object-position': return EmailFeatureSupportResultDetectedFeaturesEnum.cssObjectPosition;
        case r'css-opacity': return EmailFeatureSupportResultDetectedFeaturesEnum.cssOpacity;
        case r'css-outline-offset': return EmailFeatureSupportResultDetectedFeaturesEnum.cssOutlineOffset;
        case r'css-outline': return EmailFeatureSupportResultDetectedFeaturesEnum.cssOutline;
        case r'css-overflow-wrap': return EmailFeatureSupportResultDetectedFeaturesEnum.cssOverflowWrap;
        case r'css-overflow': return EmailFeatureSupportResultDetectedFeaturesEnum.cssOverflow;
        case r'css-padding-block-start-end': return EmailFeatureSupportResultDetectedFeaturesEnum.cssPaddingBlockStartEnd;
        case r'css-padding-inline-block': return EmailFeatureSupportResultDetectedFeaturesEnum.cssPaddingInlineBlock;
        case r'css-padding-inline-start-end': return EmailFeatureSupportResultDetectedFeaturesEnum.cssPaddingInlineStartEnd;
        case r'css-padding': return EmailFeatureSupportResultDetectedFeaturesEnum.cssPadding;
        case r'css-position': return EmailFeatureSupportResultDetectedFeaturesEnum.cssPosition;
        case r'css-tab-size': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTabSize;
        case r'css-table-layout': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTableLayout;
        case r'css-text-align-last': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextAlignLast;
        case r'css-text-align': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextAlign;
        case r'css-text-decoration-color': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextDecorationColor;
        case r'css-text-decoration-thickness': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextDecorationThickness;
        case r'css-text-decoration': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextDecoration;
        case r'css-text-emphasis-position': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextEmphasisPosition;
        case r'css-text-emphasis': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextEmphasis;
        case r'css-text-indent': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextIndent;
        case r'css-text-overflow': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextOverflow;
        case r'css-text-shadow': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextShadow;
        case r'css-text-transform': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextTransform;
        case r'css-text-underline-offset': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTextUnderlineOffset;
        case r'css-transform': return EmailFeatureSupportResultDetectedFeaturesEnum.cssTransform;
        case r'css-vertical-align': return EmailFeatureSupportResultDetectedFeaturesEnum.cssVerticalAlign;
        case r'css-visibility': return EmailFeatureSupportResultDetectedFeaturesEnum.cssVisibility;
        case r'css-white-space': return EmailFeatureSupportResultDetectedFeaturesEnum.cssWhiteSpace;
        case r'css-width': return EmailFeatureSupportResultDetectedFeaturesEnum.cssWidth;
        case r'css-word-break': return EmailFeatureSupportResultDetectedFeaturesEnum.cssWordBreak;
        case r'css-writing-mode': return EmailFeatureSupportResultDetectedFeaturesEnum.cssWritingMode;
        case r'css-z-index': return EmailFeatureSupportResultDetectedFeaturesEnum.cssZIndex;
        case r'html-abbr': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAbbr;
        case r'html-address': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAddress;
        case r'html-align': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAlign;
        case r'html-anchor-links': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAnchorLinks;
        case r'html-aria-describedby': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAriaDescribedby;
        case r'html-aria-hidden': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAriaHidden;
        case r'html-aria-label': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAriaLabel;
        case r'html-aria-labelledby': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAriaLabelledby;
        case r'html-aria-live': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAriaLive;
        case r'html-audio': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlAudio;
        case r'html-background': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlBackground;
        case r'html-base': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlBase;
        case r'html-blockquote': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlBlockquote;
        case r'html-body': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlBody;
        case r'html-button-reset': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlButtonReset;
        case r'html-button-submit': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlButtonSubmit;
        case r'html-code': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlCode;
        case r'html-del': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlDel;
        case r'html-dfn': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlDfn;
        case r'html-dialog': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlDialog;
        case r'html-dir': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlDir;
        case r'html-div': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlDiv;
        case r'html-doctype': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlDoctype;
        case r'html-form': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlForm;
        case r'html-h1-h6': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlH1H6;
        case r'html-height': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlHeight;
        case r'html-image-maps': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlImageMaps;
        case r'html-input-checkbox': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlInputCheckbox;
        case r'html-input-hidden': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlInputHidden;
        case r'html-input-radio': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlInputRadio;
        case r'html-input-reset': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlInputReset;
        case r'html-input-submit': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlInputSubmit;
        case r'html-input-text': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlInputText;
        case r'html-lang': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlLang;
        case r'html-link': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlLink;
        case r'html-lists': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlLists;
        case r'html-loading-attribute': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlLoadingAttribute;
        case r'html-mailto-links': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlMailtoLinks;
        case r'html-marquee': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlMarquee;
        case r'html-meter': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlMeter;
        case r'html-object': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlObject;
        case r'html-p': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlP;
        case r'html-picture': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlPicture;
        case r'html-pre': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlPre;
        case r'html-progress': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlProgress;
        case r'html-required': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlRequired;
        case r'html-role': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlRole;
        case r'html-rp': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlRp;
        case r'html-rt': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlRt;
        case r'html-ruby': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlRuby;
        case r'html-select': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlSelect;
        case r'html-semantics': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlSemantics;
        case r'html-small': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlSmall;
        case r'html-span': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlSpan;
        case r'html-srcset': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlSrcset;
        case r'html-strike': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlStrike;
        case r'html-strong': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlStrong;
        case r'html-style': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlStyle;
        case r'html-svg': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlSvg;
        case r'html-table': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlTable;
        case r'html-target': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlTarget;
        case r'html-textarea': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlTextarea;
        case r'html-valign': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlValign;
        case r'html-video': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlVideo;
        case r'html-wbr': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlWbr;
        case r'html-width': return EmailFeatureSupportResultDetectedFeaturesEnum.htmlWidth;
        case r'image-avif': return EmailFeatureSupportResultDetectedFeaturesEnum.imageAvif;
        case r'image-base64': return EmailFeatureSupportResultDetectedFeaturesEnum.imageBase64;
        case r'image-bmp': return EmailFeatureSupportResultDetectedFeaturesEnum.imageBmp;
        case r'image-gif': return EmailFeatureSupportResultDetectedFeaturesEnum.imageGif;
        case r'image-ico': return EmailFeatureSupportResultDetectedFeaturesEnum.imageIco;
        case r'image-jpg': return EmailFeatureSupportResultDetectedFeaturesEnum.imageJpg;
        case r'image-png': return EmailFeatureSupportResultDetectedFeaturesEnum.imagePng;
        case r'image-svg': return EmailFeatureSupportResultDetectedFeaturesEnum.imageSvg;
        case r'image-webp': return EmailFeatureSupportResultDetectedFeaturesEnum.imageWebp;
        case r'unsupported': return EmailFeatureSupportResultDetectedFeaturesEnum.unsupported;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureSupportResultDetectedFeaturesEnumTypeTransformer] instance.
  static EmailFeatureSupportResultDetectedFeaturesEnumTypeTransformer? _instance;
}


