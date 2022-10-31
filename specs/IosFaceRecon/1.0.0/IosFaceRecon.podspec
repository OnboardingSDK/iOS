Pod::Spec.new do |s|
  s.name         = "IosFaceRecon"
  s.summary      = "IosFaceRecon"
  s.version      = "1.0.0"
  s.summary      = "IosFaceRecon"

  s.homepage     = "https://github.com/ZaigCoding/iOS"
  s.license      = { :type => 'ProprietarySoftware'}
  s.author       = { 'suporte@zaig.com.br' => 'suporte@zaig.com.br' }

  s.ios.deployment_target = "12.0"
  s.osx.deployment_target = "12.0"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/ZaigCoding/iOS.git", :tag => s.name + "-" + s.version.to_s }
  s.vendored_frameworks = 'build/IosFaceRecon.xcframework'
  s.dependency 'GoogleMLKit/FaceDetection'
  s.dependency 'DatadogSDK', '= 1.11.1'


  s.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
