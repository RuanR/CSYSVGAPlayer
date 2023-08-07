
Pod::Spec.new do |s|
  s.name         = "CSYSVGAPlayer"
  s.version      = "1.0.2"
  s.summary      = "SVGAPlayer 是一个高性能的动画播放器"
  s.description  = <<-DESC
                   SVGA 是一种全新的动画格式，由 YY UED 团队主导开发；
                   SVGA 可以在 iOS / Android / Web / Flutter 实现高性能的动画播放。
                   DESC

  s.homepage     = "https://github.com/RuanR/CSYSVGAPlayer"
  s.license      = "Apache 2.0"
  s.author       = { "shine sun" => "1525196995@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/RuanR/CSYSVGAPlayer.git", :tag => s.version }
    s.subspec 'Core' do |ss|
    ss.source_files  = "Source/*.{h,m}"
    ss.requires_arc = true
    ss.dependency 'SSZipArchive', '>= 1.8.1'
    ss.library = "z"
    ss.framework = "AVFoundation"
    ss.dependency 'CSYSVGAPlayer/ProtoFiles'
  end
  s.subspec 'ProtoFiles' do |ss|
    ss.source_files  = "Source/pbobjc/*.{h,m}"
    ss.requires_arc = false
    ss.dependency 'Protobuf', '~> 3.4'
    ss.pod_target_xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1',
    }
  end
end
