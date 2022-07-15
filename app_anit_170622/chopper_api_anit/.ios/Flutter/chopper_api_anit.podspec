Pod::Spec.new do |s|
  s.name                  = 'chopper_api_anit'
  s.version               = '0.0.1'
  s.summary               = 'Flutter module'
  s.description           = 'Flutter module - chopper_api_anit'
  s.homepage              = 'https://flutter.dev'
  s.license               = { :type => 'BSD' }
  s.author                = { 'Flutter Dev Team' => 'flutter-dev@googlegroups.com' }
  s.source                = { :path => '.' }
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks   = 'App.framework'
  s.dependency 'Flutter'
end
