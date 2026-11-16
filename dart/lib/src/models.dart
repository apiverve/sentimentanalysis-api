/// Response models for the Sentiment Analysis API.

/// API Response wrapper.
class SentimentanalysisResponse {
  final String status;
  final dynamic error;
  final SentimentanalysisData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  SentimentanalysisResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory SentimentanalysisResponse.fromJson(Map<String, dynamic> json) => SentimentanalysisResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? SentimentanalysisData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Sentiment Analysis API.

class SentimentanalysisData {
  num? comparative;
  String? sentimentText;
  num? sentiment;
  bool? isPositive;
  bool? isNegative;
  num? normalizedScore;
  num? magnitude;
  List<String>? positiveWords;
  List<dynamic>? negativeWords;
  String? modelSentiment;
  num? modelScore;
  bool? isMixed;
  List<SentimentanalysisDataSentencesItem>? sentences;

  SentimentanalysisData({
    this.comparative,
    this.sentimentText,
    this.sentiment,
    this.isPositive,
    this.isNegative,
    this.normalizedScore,
    this.magnitude,
    this.positiveWords,
    this.negativeWords,
    this.modelSentiment,
    this.modelScore,
    this.isMixed,
    this.sentences,
  });

  factory SentimentanalysisData.fromJson(Map<String, dynamic> json) => SentimentanalysisData(
      comparative: json['comparative'],
      sentimentText: json['sentimentText'],
      sentiment: json['sentiment'],
      isPositive: json['isPositive'],
      isNegative: json['isNegative'],
      normalizedScore: json['normalizedScore'],
      magnitude: json['magnitude'],
      positiveWords: (json['positiveWords'] as List?)?.cast<String>(),
      negativeWords: (json['negativeWords'] as List?)?.cast<dynamic>(),
      modelSentiment: json['modelSentiment'],
      modelScore: json['modelScore'],
      isMixed: json['isMixed'],
      sentences: (json['sentences'] as List?)?.map((e) => SentimentanalysisDataSentencesItem.fromJson(e)).toList(),
    );
}

class SentimentanalysisDataSentencesItem {
  String? text;
  String? label;
  num? confidence;
  SentimentanalysisDataSentencesItemScores? scores;

  SentimentanalysisDataSentencesItem({
    this.text,
    this.label,
    this.confidence,
    this.scores,
  });

  factory SentimentanalysisDataSentencesItem.fromJson(Map<String, dynamic> json) => SentimentanalysisDataSentencesItem(
      text: json['text'],
      label: json['label'],
      confidence: json['confidence'],
      scores: json['scores'] != null ? SentimentanalysisDataSentencesItemScores.fromJson(json['scores']) : null,
    );
}

class SentimentanalysisDataSentencesItemScores {
  num? positive;
  num? neutral;
  num? negative;

  SentimentanalysisDataSentencesItemScores({
    this.positive,
    this.neutral,
    this.negative,
  });

  factory SentimentanalysisDataSentencesItemScores.fromJson(Map<String, dynamic> json) => SentimentanalysisDataSentencesItemScores(
      positive: json['positive'],
      neutral: json['neutral'],
      negative: json['negative'],
    );
}

class SentimentanalysisRequest {
  String text;

  SentimentanalysisRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}
