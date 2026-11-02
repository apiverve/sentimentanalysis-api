# Sentiment Analysis API - Ruby Gem

Sentiment Analysis evaluates the emotional tone of any text string. It returns an AFINN valence score, a comparative word-normalized score, and a five-tier sentiment label from very negative to very positive. Paid plans add sentence-level labels from a transformer model, a mixed-sentiment flag, magnitude, and the words that drove the score.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_sentimentanalysis'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_sentimentanalysis
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_sentimentanalysis'

# Initialize the client
client = APIVerve::Sentimentanalysis::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "I'm so excited that tomorrow is going to be sunny! Can't wait!" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "I'm so excited that tomorrow is going to be sunny! Can't wait!" })
  puts response["data"]
rescue APIVerve::Sentimentanalysis::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Sentimentanalysis::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Sentimentanalysis::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/sentimentanalysis?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/sentimentanalysis?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/sentimentanalysis?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
