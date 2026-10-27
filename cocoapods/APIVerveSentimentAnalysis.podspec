Pod::Spec.new do |s|
  s.name             = 'APIVerveSentimentAnalysis'
  s.version          = '1.2.3'
  s.summary          = 'Sentiment Analysis evaluates the emotional tone of any text string.'
  s.description      = <<-'DESC'
Sentiment Analysis evaluates the emotional tone of any text string. It returns an AFINN valence score, a comparative word-normalized score, and a five-tier sentiment label from very negative to very positive. Paid plans add sentence-level labels from a transformer model, a mixed-sentiment flag, magnitude, and the words that drove the score.

This iOS/macOS SDK provides a convenient way to access the Sentiment Analysis from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/sentimentanalysis?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/sentimentanalysis-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveSentimentAnalysis/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
