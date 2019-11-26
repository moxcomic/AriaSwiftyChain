Pod::Spec.new do |s|
  s.name = "AriaSwiftyChain"
  s.version = "0.0.1"
  #主要标题
  s.summary = "a swifty code chain"
  s.summary = <<-DESC 
  一个Swift链式代码库
   DESC
  #仓库主页
  s.homepage = "https://github.com/moxcomic/AriaSwiftyChain.git"
  s.license = "MIT"
  s.author = { "moxcomic" => "656469762@qq.com" }
  s.platform = :ios, "11.0"
  #仓库地址
  s.source = { :git => "https://github.com/moxcomic/AriaSwiftyChain.git", :tag => "#{s.version}" }
  s.source_files = "Classes/*.swift"
  s.framework = "UIKit", "Foundation"
  s.requires_arc = true
end