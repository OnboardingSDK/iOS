Pod::Spec.new do |s|
  s.name                  = "IosOCR"
  s.version               = "4.0.0-no-dd"
  s.summary               = "IosOCR"
  s.homepage              = "https://github.com/OnboardingSDK/iOS"
  s.license               = { :type => 'ProprietarySoftware'}
  s.author                = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }
  s.source                = { :http => "https://onboarding-white-label-sdks-production.s3.amazonaws.com/com/onboarding/ios/IosOCR/4.0.0-no-dd/IosOCR.xcframework.zip" }
  s.vendored_frameworks   = "IosOCR.xcframework"
  s.platform              = :ios
  s.swift_version         = "5"
  s.ios.deployment_target = '15.5'
  s.dependency 'GoogleMLKit/FaceDetection', '~> 8.0'
  s.dependency 'DatadogCore', '~> 2.0'
  s.dependency 'DatadogCrashReporting', '~> 2.0'
  s.dependency 'DatadogLogs', '~> 2.0'

  s.user_target_xcconfig = {
  'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  'IPHONEOS_DEPLOYMENT_TARGET' => '15.5'
}

s.pod_target_xcconfig = {
  'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  'IPHONEOS_DEPLOYMENT_TARGET' => '15.5'
}

end