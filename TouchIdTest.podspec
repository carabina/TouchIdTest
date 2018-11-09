
Pod::Spec.new do |s|

  s.name         = "TouchIdTest"
  s.version      = "1.0.2"
  s.summary      = "A short description of TouchIdTest."

  s.description  = "A short description of TouchIdTest."          

  s.homepage     = "https://github.com/Duong2233/TouchIdTest.git"

  s.license      = "MIT"
   s.author             = { "Duong Nguyen" => "duong.nh@sutruxsolution.com" }
    s.source       = { :git => "https://github.com/Duong2233/TouchIdTest.git", :tag => "#{s.version}" }
  s.platform     = :ios, "10"

  s.source_files  = "TouchIdTest", "TouchIdTest/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
	
 
end
