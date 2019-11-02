
Pod::Spec.new do |s|
  s.name         = "RNAppStoreReview"
  s.version      = "0.0.1"
  s.summary      = "RNAppStoreReview"
  s.description  = <<-DESC
                  Rate on app store inside your app
                   DESC
  s.homepage     = "https://github.com/magrinj/react-native-app-store-review"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "jeremy.magrin@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/magrinj/react-native-app-store-review.git", :tag => "master" }
  s.source_files  = "RNAppStoreReview/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end
