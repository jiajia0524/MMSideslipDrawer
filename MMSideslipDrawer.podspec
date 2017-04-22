
Pod::Spec.new do |s|
  s.name             = "MMSideslipDrawer"
  s.version          = "1.0"
  s.summary          = "A side slip drawer used on iOS."
  s.homepage         = "https://github.com/dexianyinjiu/MMSideslipDrawer"
  s.license          = 'MIT'
  s.author           = { "得闲饮酒" => "1625977078@qq.com" }
  s.source           = { :git => "https://github.com/dexianyinjiu/MMSideslipDrawer.git", :tag => s.version.to_s }
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.source_files     = 'MMSideslipDrawer/**/*.{h,m}'
  s.frameworks       = 'Foundation', 'UIKit'

end
