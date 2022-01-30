#
# Be sure to run `pod lib lint KittyImages.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'KittyImages'
    s.version          = '0.0.1'
    s.summary          = 'A library that provides random images of kittens.'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
    Not much to say about it. Just some awesome library that provides kitten images. Everyone likes kittens!
    DESC

    s.homepage         = 'https://github.com/viktorvrchlavsky/i-dont-like-cocoapods'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Viktor Vrchlavský' => 'viktor.vrchlavsky@applifting.cz' }
    s.source           = { :git => 'https://github.com/viktorvrchlavsky/i-dont-like-cocoapods.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '15.0'
    s.swift_version = "5.5"

    s.source_files = 'KittyImages/Classes/**/*'

    # s.resource_bundles = {
    #   'KittyImages' => ['KittyImages/Assets/*.png']
    # }

    # s.public_header_files = 'Pod/Classes/**/*.h'
    s.frameworks = 'SwiftUI'
    s.dependency 'Alamofire', '5.5.0'
end
