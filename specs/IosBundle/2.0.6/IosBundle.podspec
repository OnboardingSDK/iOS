Pod::Spec.new do |s|
  s.name         = "IosBundle"
  s.summary      = "IosBundle"
  s.version      = "2.0.6"
  s.homepage     = "https://github.com/OnboardingSDK/iOS"
  s.license      = { :type => 'ProprietarySoftware'}
  s.author       = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }

  s.ios.deployment_target  = '12.0'
  s.platform               = :ios
  s.swift_version          = "5"
  s.static_framework       = true

  s.source                = { :http => "https://onboarding-white-label-sdks-production.s3.amazonaws.com/com/onboarding/ios/IosBundle/2.0.6/IosBundle.xcframework.zip" }
  s.vendored_frameworks   = 'IosBundle.xcframework'
  s.dependency 'IosDeviceScan', '= 1.3.6'
  s.dependency 'IosFaceRecon', '= 2.3.1'
  s.dependency 'IosOCR', '= 2.0.1-alpha1'

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