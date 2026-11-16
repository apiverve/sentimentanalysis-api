/// Sentiment Analysis API client for Dart/Flutter
///
/// Sentiment Analysis evaluates the emotional tone of any text string. It returns an AFINN valence score, a comparative word-normalized score, and a five-tier sentiment label from very negative to very positive. Paid plans add sentence-level labels from a transformer model, a mixed-sentiment flag, magnitude, and the words that drove the score.
///
/// For more information, visit: https://apiverve.com/marketplace/sentimentanalysis?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_sentimentanalysis;

export 'src/client.dart';
export 'src/models.dart';
