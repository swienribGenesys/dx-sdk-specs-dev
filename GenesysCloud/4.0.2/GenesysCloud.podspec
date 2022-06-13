#===================================================================================================
# Copyright © 2021 GenesysCloud(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloud'
  s.version = '4.0.2'
  s.summary          = 'The GenesysCloud Chat SDK.'
  s.description      = <<-DESC
    The GenesysCloud Chat SDK framework enables you to implement a fully customized Chat Window and integrate GenesysCloud with your applications more deeply.
                       DESC
  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloud by Genesys'
  s.source = {
  "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloud/GenesysCloud_version_v4.0.2.rc2_commit_a96ec8e5c6ed1b115ad4f24472e22998aa4a3c08.zip"
  }

  s.ios.deployment_target  = '11.0'
  s.static_framework = true
  s.swift_version = '5.0'

  s.subspec 'Core' do |sp|
  sp.vendored_frameworks = 'GenesysCloud.framework'
  sp.requires_arc = true

  # Private Pod frameworks
  sp.dependency 'GenesysCloudAccessibility', '2.0.1'
  sp.dependency 'GenesysCloudBot', '2.0.2'
  sp.dependency 'GenesysCloudBold', '3.0.1'
  sp.dependency "GenesysCloudMessenger"
  sp.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
  sp.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end

s.default_subspec = 'Core'

end
