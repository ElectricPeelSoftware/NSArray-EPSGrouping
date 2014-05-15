Pod::Spec.new do |s|
  s.name             = "NSArray+EPSGrouping"
  s.version          = "0.1"
  s.summary          = "Category methods on NSArray to support grouping."
  
  s.homepage         = "https://github.com/ElectricPeelSoftware/NSArray-EPSGrouping"
  s.license          = "MIT"
  s.author           = { "Peter Stuart" => "peter@electricpeelsoftware.com" }
  s.source           = { :git => "https://github.com/ElectricPeelSoftware/NSArray-EPSGrouping.git", :tag => s.version.to_s }
  
  s.platform              = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.requires_arc          = true

  s.source_files = 'Classes'

  s.public_header_files = 'Classes/*.h'
end
