Pod::Spec.new do |s|
    s.name         = "IosOCR"
    s.summary      = "IosOCR"
    s.version      = "2.0.0"
    s.summary      = "IosOCR"
  
    s.homepage     = "https://github.com/OnboardingSDK/iOS"
    s.license      = { :type => 'ProprietarySoftware'}
    s.author       = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }
  
    s.ios.deployment_target = "12.0"
    s.osx.deployment_target = "12.0"
    s.watchos.deployment_target = "3.0"
    s.tvos.deployment_target = "9.0"
  
    s.source       = { :http => "https://white-label-sdks-sandbox.s3.amazonaws.com/ios/IosOCR/2-0-0-IosOCR.xcframework.zip"}
    s.vendored_frameworks = 'IosOCR.xcframework'
    s.dependency 'GoogleMLKit/FaceDetection', '=3.2.0'
    s.dependency 'DatadogSDK', '= 1.11.1'
  
    s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = {
      'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  end