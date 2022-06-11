require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = "RNAReleases"
  s.version        = package['version']
  s.summary        = package['description']

  s.authors        = { "Actbase LLC" => "project@actbase.io" }
  s.homepage       = package['homepage']
  s.license        = package['license']

  s.platform       = :ios, "11.0"
  s.framework      = 'MobileCoreServices'
  s.requires_arc   = true

  s.source         = { :git => package['repository']['url'] }
  s.source_files   = "ios/*.{h,m,swift}"

  s.swift_version = '5.1'

  s.ios.deployment_target = '11.0'
  s.ios.framework         = 'MobileCoreServices'

  s.dependency 'React'
  s.dependency 'React-Core'
end



