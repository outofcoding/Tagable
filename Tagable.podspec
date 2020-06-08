Pod::Spec.new do |s|
  s.name             = 'Tagable'
  s.version          = '1.0.0'
  s.summary          = 'Save the variable in Tag.'
  s.description      = <<-DESC
  Save the variable in Tag. Quick!!
  DESC

  s.homepage         = 'https://github.com/outofcoding/Tagable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'outofcoding' => 'outofcoding@gmail.com' }
  s.source           = { :git => 'https://github.com/outofcoding/Tagable.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  s.source_files = 'Tagable/Classes/**/*'
end
