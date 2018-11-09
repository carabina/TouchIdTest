
Pod::Spec.new do |s|

  s.name         = "TouchIdTest"
  s.version      = "0.0.1"
  s.summary      = "A short description of TouchIdTest."

  s.description  = "A short description of TouchIdTest."          

  s.homepage     = "https://github.com/Duong2233/TouchIdTest.git"

  s.license      = "MIT"
   s.author             = { "Duong Nguyen" => "duong.nh@sutruxsolution.com" }
    s.source       = { :git => "https://github.com/Duong2233/TouchIdTest.git", :tag => "#{s.version}" }
  s.platform     = :ios, "12.0"
  s.swift_version = "4.2" 

  s.source_files  = "TouchIdTest", "TouchIdTest/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
	
 
end
