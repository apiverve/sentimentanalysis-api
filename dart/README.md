# Sentiment Analysis API - Dart/Flutter Client

Sentiment Analysis evaluates the emotional tone of any text string. It returns an AFINN valence score, a comparative word-normalized score, and a five-tier sentiment label from very negative to very positive. Paid plans add sentence-level labels from a transformer model, a mixed-sentiment flag, magnitude, and the words that drove the score.

[![pub package](https://img.shields.io/pub/v/apiverve_sentimentanalysis.svg)](https://pub.dev/packages/apiverve_sentimentanalysis)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Sentiment Analysis API](https://apiverve.com/marketplace/sentimentanalysis?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_sentimentanalysis: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_sentimentanalysis/apiverve_sentimentanalysis.dart';

void main() async {
  final client = SentimentanalysisClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'I\'m so excited that tomorrow is going to be sunny! Can\'t wait!'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "comparative": 0.25,
    "sentimentText": "positive",
    "sentiment": 3,
    "isPositive": true,
    "isNegative": false,
    "normalizedScore": 0.3,
    "magnitude": 3,
    "positiveWords": [
      "excited"
    ],
    "negativeWords": [],
    "modelSentiment": "positive",
    "modelScore": 0.98,
    "isMixed": false,
    "sentences": [
      {
        "text": "I'm so excited that tomorrow is going to be sunny!",
        "label": "positive",
        "confidence": 0.992,
        "scores": {
          "positive": 0.992,
          "neutral": 0.006,
          "negative": 0.002
        }
      },
      {
        "text": "Can't wait!",
        "label": "positive",
        "confidence": 0.973,
        "scores": {
          "positive": 0.973,
          "neutral": 0.024,
          "negative": 0.003
        }
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Sentiment Analysis API](https://apiverve.com/marketplace/sentimentanalysis?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/sentimentanalysis](https://docs.apiverve.com/ref/sentimentanalysis?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
