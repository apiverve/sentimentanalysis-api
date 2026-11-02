# Sentiment Analysis API - PHP Package

Sentiment Analysis evaluates the emotional tone of any text string. It returns an AFINN valence score, a comparative word-normalized score, and a five-tier sentiment label from very negative to very positive. Paid plans add sentence-level labels from a transformer model, a mixed-sentiment flag, magnitude, and the words that drove the score.

## Installation

Install via Composer:

```bash
composer require apiverve/sentimentanalysis
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Sentimentanalysis\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'I\'m so excited that tomorrow is going to be sunny! Can\'t wait!']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Sentimentanalysis\Client;
use APIVerve\Sentimentanalysis\Exceptions\APIException;
use APIVerve\Sentimentanalysis\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'I\'m so excited that tomorrow is going to be sunny! Can\'t wait!']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/sentimentanalysis?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/sentimentanalysis?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/sentimentanalysis?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
