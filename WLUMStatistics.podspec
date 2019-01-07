
Pod::Spec.new do |s|

s.name         = "WLUMStatistics"
s.version      = "1.0.0"
s.summary      = "A Lib For um."
s.description  = <<-DESC
友盟统计封装
DESC

s.homepage     = "https://github.com/StoneStoneStoneWang/WLUMStatistics"
s.license      = { :type => "MIT", :file => "LICENSE.md" }
s.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
s.platform     = :ios, "9.0"
s.ios.deployment_target = "9.0"

s.requires_arc = true

s.frameworks = 'UIKit', 'Foundation'

s.source = { :git => "https://github.com/StoneStoneStoneWang/WLUMStatistics.git", :tag => "#{s.version}" }

s.source_files = "Code/**/*.{h,m}"

s.dependency 'UMCCommon'

s.dependency 'UMCSecurityPlugins'

s.dependency 'UMCAnalytics'

end

