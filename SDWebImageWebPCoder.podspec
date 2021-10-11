#
# Be sure to run `pod lib lint SDWebImageWebPCoder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SDWebImageWebPCoder'
  s.version          = '0.1.0'
  s.summary          = 'WebP decoder/encoder for SDWebImage coder plugin.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This is a SDWebImage coder plugin to support WebP image.
                       DESC

  s.homepage         = 'https://github.com/SDWebImage/SDWebImageWebPCoder'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CityFire' => 'wangjiucheng@lizhi.fm' }
  s.source           = { :git => 'https://github.com/SDWebImage/SDWebImageWebPCoder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  # s.module_map = 'SDWebImageWebPCoder/Module/SDWebImageWebPCoder.modulemap'

  s.source_files = 'SDWebImageWebPCoder/Classes/**/*',
        'SDWebImageWebPCoder/Module/SDWebImageWebPCoder.h'
    s.xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1',
      'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
    }
    s.watchos.xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1 WEBP_USE_INTRINSICS=1',
      'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
    }
    s.dependency 'SDWebImage/Core', '~> 5.12.0'
    s.dependency 'libwebp', '~> 1.0'
    
end
