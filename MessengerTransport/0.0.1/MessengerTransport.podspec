
Pod::Spec.new do |s|
s.name             = 'MessengerTransport'
s.version = '0.0.1'
s.summary          = 'MessengerTransport.'

s.description      = <<-DESC
BoldCore
DESC

s.homepage         = ''
s.license = 'private'
s.author           = 'MessengerTransport'
s.source = {
    "http" => "https://bold360ai-mobile-artifacts.s3.amazonaws.com/dx/MessengerTransport.framework.zip"
}
s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
s.vendored_frameworks = 'MessengerTransport.framework'
s.requires_arc = true
s.static_framework = true
s.ios.deployment_target  = '10.0'

end
