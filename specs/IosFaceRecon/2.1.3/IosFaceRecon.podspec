Pod::Spec.new do |s|
    s.name         = "IosFaceRecon"
    s.summary      = "IosFaceRecon"
    s.version      = "2.1.3"
    s.summary      = "IosFaceRecon"
  
    s.homepage     = "https://github.com/OnboardingSDK/iOS"
    s.license      = { :type => 'ProprietarySoftware'}
    s.author       = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }
  
    s.ios.deployment_target = "13.0"
    s.osx.deployment_target = "13.0"
    s.watchos.deployment_target = "2.0"
    s.tvos.deployment_target = "9.0"
  
    s.source       = { :http => "https://white-label-sdks-production.s3.amazonaws.com/com/onboarding/ios/IosFaceRecon/2-1-3-IosFaceRecon.xcframework.zip" }
    s.vendored_frameworks = 'IosFaceRecon.xcframework'
    s.dependency 'GoogleMLKit/FaceDetection', '= 3.2.0'
  
  
    s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = {
      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  end
  