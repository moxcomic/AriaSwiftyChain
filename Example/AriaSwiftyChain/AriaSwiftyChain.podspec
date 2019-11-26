Pod::Spec.new do |s|
  s.name             = 'AriaSwiftyChain'
  s.version          = '0.0.1'
  s.summary          = '一款链式调用框架.'
  s.homepage         = 'https://github.com/moxcomic/AriaSwiftyChain.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'moxcomic' => '656469762@qq.com' }
  s.source           = { :git => 'https://github.com/moxcomic/AriaSwiftyChain.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.source_files = 'AriaSwiftyChain/Classes/**/*'
  s.frameworks = 'UIKit'
end