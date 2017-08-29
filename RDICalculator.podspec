Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '11.0'
  s.requires_arc = true

  s.name = "RDICalculator"
  s.summary = "RDICalculator Calculates RDI (Recommended Daily Intake)"

  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Michael Thomas" => "mike_thomas1@me.com" }
  s.homepage = "https://github.com/MikeThomas1/RDICalculator"
  s.source = { :git => "https://github.com/MikeThomas1/RDICalculator.git", :tag => "#{s.version}"}

  s.framework = "UIKit"
  s.source_files = "RDICalculator/**/*.{swift}"
  s.resources = "RDICalculator/**/*.{png,jpeg,jpg,storyboard,xib}"

  s.version = "0.1.0"

end
