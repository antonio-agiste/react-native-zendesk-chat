require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'RNZendeskChat'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, '12.0'
  s.source       = { git: 'https://github.com/taskrabbit/react-native-zendesk-chat.git', tag: "v#{s.version}" }
  s.source_files = 'ios/*.{h,m}'

  s.static_framework = true

  s.frameworks    = ['Foundation', 'UIKit']

  s.dependency 'React-Core'
  s.dependency 'ZendeskChatSDK', '~> 5.0'
end