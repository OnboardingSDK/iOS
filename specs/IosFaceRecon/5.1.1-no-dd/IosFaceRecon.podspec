Pod::Spec.new do |s|
  s.name         = "IosFaceRecon"
  s.version      = "5.1.1-no-dd"
  s.summary      = "IosFaceRecon"
  s.homepage     = "https://github.com/OnboardingSDK/iOS"
  s.license      = { :type => 'ProprietarySoftware'}
  s.author       = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }
  s.source       = { :http => "https://onboarding-white-label-sdks-production.s3.amazonaws.com/com/onboarding/ios/IosFaceRecon/5.1.1-no-dd/IosFaceRecon.xcframework.zip" }
  s.vendored_frameworks = "IosFaceRecon.xcframework"
  s.platform     = :ios
  s.swift_version = "5"
  s.ios.deployment_target  = '15.5'
  s.dependency 'GoogleMLKit/FaceDetection', '~> 8.0'

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
