Pod::Spec.new do |s|
  s.name                  = "IosOCR"
  s.version               = "3.0.2"
  s.summary               = "IosOCR"
  s.homepage              = "https://github.com/OnboardingSDK/iOS"
  s.license               = { :type => 'ProprietarySoftware'}
  s.author                = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }
  s.source                = { :http => "https://onboarding-white-label-sdks-production.s3.amazonaws.com/com/onboarding/ios/IosOCR/3.0.2/IosOCR.xcframework.zip" }
  s.vendored_frameworks   = "IosOCR.xcframework"
  s.platform              = :ios
  s.swift_version         = "5"
  s.ios.deployment_target = '12.0'
  s.dependency 'GoogleMLKit/FaceDetection', '>= 3.2.0', '<= 6.0.0'
  s.dependency 'DatadogCore', '= 2.18.0'
  s.dependency 'DatadogCrashReporting', '= 2.18.0'
  s.dependency 'DatadogLogs', '= 2.18.0'
  s.static_framework      = true

  s.user_target_xcconfig = {
  'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  'IPHONEOS_DEPLOYMENT_TARGET' => '12.0'
}

s.pod_target_xcconfig = {
  'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  'IPHONEOS_DEPLOYMENT_TARGET' => '12.0'
}
end