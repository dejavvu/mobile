#
#  Be sure to run `pod spec lint RNKiwiMobile.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name             = 'RNKiwiMobile'
  spec.version          = '1.0.0'
  spec.license          = { :type => 'BSD' }
  spec.homepage         = 'https://github.com/kiwicom/mobile'
  spec.authors          = { 'Vedran Blazenka' => 'vedran.blazenka@kiwi.com' }
  spec.summary          = 'Bridge'
  spec.source           = { :git => 'https://github.com/kiwicom/mobile.git', :branch => 'ancillaries-integration' }
  spec.source_files     = '*.{h,m}'
end
