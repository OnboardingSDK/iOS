Pod::Spec.new do |s|
    s.name         = "IosBundle"
    s.summary      = "IosBundle"
    s.version      = "2.0.4"
    s.summary      = "IosBundle"
  
    s.homepage     = "https://github.com/OnboardingSDK/iOS"
    s.license      = { :type => 'ProprietarySoftware'}
    s.author       = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }
  
    s.ios.deployment_target = "13.0"
    s.osx.deployment_target = "13.0"
    s.watchos.deployment_target = "3.0"
    s.tvos.deployment_target = "9.0"
  
    s.source       = { :http => "https://white-label-sdks-production.s3.amazonaws.com/com/onboarding/ios/IosOnboardingSdk/2-0-4-IosBundle.xcframework.zip"}
    s.vendored_frameworks = 'IosBundle.xcframework'
    s.dependency 'IosDeviceScan', '= 1.0.0'
    s.dependency 'IosFaceRecon', '= 2.1.3'
    s.dependency 'IosOCR', '= 2.0.3'
  
    s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = {
      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  end
