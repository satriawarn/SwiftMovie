# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'SwiftMovie' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  #Network
  pod 'Alamofire'
  pod 'Moya'
  pod 'Moya/RxSwift'
  pod 'MoyaSugar',
    :git => 'https://github.com/devxoul/MoyaSugar.git',
    :branch => 'master'
  pod 'MoyaSugar/RxSwift',
    :git => 'https://github.com/devxoul/MoyaSugar.git',
    :branch => 'master'

  #RX
  pod 'RxSwift'
  pod 'RxCocoa'
  pod 'RxSwiftExt', '~> 5'

  #Logging
  pod 'CocoaLumberjack/Swift'
  pod 'Then'

end

target 'SwiftMovieTests' do
    inherit! :search_paths
    # Pods for testing
end

target 'SwiftMovieUITests' do
    # Pods for testing
end