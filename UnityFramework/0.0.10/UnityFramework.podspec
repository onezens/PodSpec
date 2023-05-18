Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "UnityFramework"
  spec.version      = "0.0.10"
  spec.summary      = "A short description of UnityFramework."
  spec.description  = <<-DESC
  UnityFramework Bundle 二进制依赖
  DESC
  spec.homepage     = "https://git.51k1k.com/funny-world/frontend/app/ios-frameworks"


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "莫名" => "devhuang0714@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.static_framework = true
  spec.platform     = :ios, "9.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 二进制依赖
  spec.source        = { :http => "http://localhost/UnityFramework.framework.zip" }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "UnityFramework.framework/Headers/**/*"
  spec.exclude_files = "UnityFramework.framework/Info.plist"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #spec.resources = "UnityFramework.framework/Data/**/*"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.vendored_frameworks = "UnityFramework.framework"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.requires_arc = true

  #需要添加这个配置，不然pod spec验证时 xcodebuild验证不通过
  #spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  #spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

end
