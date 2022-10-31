Pod::Spec.new do |s|
  s.name         = "IosDeviceScan"
  s.version      = "1.0.0"
  s.summary      = "IosDeviceScan"
  s.homepage     = "https://github.com/OnboardingSDK/iOS"
  s.license = { :type => 'ProprietarySoftware'}
  s.author             = { 'onboardingsdk@gmail.com' => 'onboardingsdk@gmail.com' }
  s.source       = { :git => "https://github.com/OnboardingSDK/iOS.git", :tag => s.name + "-" + s.version.to_s }
  s.vendored_frameworks = "build/IosDeviceScan.xcframework"
  s.platform = :ios
  s.swift_version = "5"
  s.ios.deployment_target  = '12.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
