#===================================================================================================
# Copyright © 2023 GenesysCloud(Genesys).
# GenesysCloud SDK.
# All rights reserved.
# ===================================================================================================

Pod::Spec.new do |s|
  s.name             = 'GenesysCloud'
  s.version = '4.3.0'
  s.summary          = 'The GenesysCloud Chat SDK.'
  s.description      = <<-DESC
    The GenesysCloud Chat SDK framework enables you to implement a fully customized Chat Window and integrate GenesysCloud with your applications more deeply.
                       DESC
  s.homepage         = 'https://docs.genesys.com/Documentation'
  s.license          = 'Apache License, Version 2.0'
  s.author           = 'GenesysCloud by Genesys'
  s.source = {
  "http" => "https://genesysdx.jfrog.io/artifactory/genesysdx-ios.dev/GenesysCloud/GenesysCloud_version_v4.3.0.rc9_commit_b08b3be11c7bf7ced5bb11e2f2bde4468397bd9d.zip"
  }

  s.ios.deployment_target  = '13.0'
  s.static_framework = true
  s.swift_version = '5.0'

  s.subspec 'Core' do |sp|
    sp.vendored_frameworks = 'GenesysCloud.xcframework'
    sp.requires_arc = true

    # Private Pod frameworks
    sp.dependency 'GenesysCloudAccessibility', '2.1.1'
    sp.dependency 'GenesysCloudBot', '2.1.1'
    sp.dependency 'GenesysCloudBold', '3.1.1'
    sp.dependency 'GenesysCloudMessenger', '1.3.0'
    sp.pod_target_xcconfig = { 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO'}
  end

s.default_subspec = 'Core'

end
