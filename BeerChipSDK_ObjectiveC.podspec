

Pod::Spec.new do |s|


  s.name         = "BeerChipSDK_ObjectiveC"
  s.version      = "1.3"
  s.summary      = "BeerChipSDK is used to display the webpage."

  s.description  = "BeerChipSDK contains a webview , it will display a web page for the corresponding URL address"

  s.homepage     = "http://vmokshagroup.com"

  s.license      = "MIT"
  
  s.author    = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }
  

   s.platform     = :ios, "8.0"

  s.ios.deployment_target = "8.0"



  s.source       = { :git => "https://github.com/Srinivasulu3264/BeerChipSDK_ObjectiveC.git", :tag => "1.3"  ,:commit => "a93670bdc284a7601977dcdb4403a163c5e0d3db" }


  s.source_files  = "BeerChipSDK_ObjectiveC", "BeerChipSDK_ObjectiveC/*.{h,m}"


  s.public_header_files = "BeerChipSDK_ObjectiveC/*.h"


  s.requires_arc = true



end
