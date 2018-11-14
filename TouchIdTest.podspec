
Pod::Spec.new do |s|

  s.name          = "TouchIdTest"
  s.version       = "0.0.1"
  s.summary       = "Use to Check Touch ID"

  s.description   = "Touch Test ID can use to check Touch ID"          

  s.homepage      = "https://github.com/Duong2233/TouchIdTest"

  s.license       = "MIT"
   s.author       = { "Duong Nguyen" => "duong.nh@sutrixsolution.com" }
    s.source      = { :git => "https://github.com/Duong2233/TouchIdTest.git", :tag => "#{s.version}" }
  s.platform      = :ios, "11.0"
  s.swift_version = "4.2"
  s.source_files  = "TouchIdTest/**/*"
  s.exclude_files = "Classes/Exclude"
	
 
end
