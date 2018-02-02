# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'
# Uncomment this line if you're using Swift
use_frameworks!

target 'SwipeViews' do
 platform :ios, '9.0'
 pod 'SSKeychain'
 pod 'Alamofire', '~> 4.0’
 pod 'AlamofireNetworkActivityIndicator', '~> 2.0’
 pod 'MBProgressHUD'
 pod 'Firebase/Auth'
 pod 'Firebase/Core'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = ‘4.0’
        end
    end
end