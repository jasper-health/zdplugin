#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_zendes_plugin.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_zendes_plugin'
  s.version          = '0.0.3'
  s.summary          = 'A Zendes Flutter plugin.'
  s.description      = <<-DESC
A Zendes Flutter plugin.
                       DESC
  s.homepage         = 'http://hellojasper.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jasper' => 'dd.dyach@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

  s.swift_version = '5.0'
  #s.dependency 'ZendeskSupportSDK'
  #s.dependency 'ZendeskSupportProvidersSDK'
  s.dependency 'ZendeskSDKMessaging'
  
  #s.dependency 'ZendeskAnswerBotSDK' # AnswerBot-only on the Unified SDK
  #s.dependency 'ZendeskChatSDK'      # Chat-only on the Unified SDK
  #s.dependency 'ZendeskChatProvidersSDK'
  #s.dependency 'ZDCChat'
end
