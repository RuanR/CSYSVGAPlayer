
Pod::Spec.new do |s|
  s.name         = "CSYSVGAPlayer"
  s.version      = "1.0.1"
  s.summary      = "SVGAPlayer 是一个高性能的动画播放器"
  s.description  = <<-DESC
                   SVGA 是一种全新的动画格式，由 YY UED 团队主导开发；
                   SVGA 让动画开发分工明确，大大减少动画交互的沟通成本，提升开发效率；
                   SVGA 可以在 iOS / Android / Web / Flutter 实现高性能的动画播放。
                   DESC

  s.homepage     = "https://github.com/RuanR/CSYSVGAPlayer"
  s.license      = "Apache 2.0"
  s.author       = { "shine sun" => "1525196995@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/RuanR/CSYSVGAPlayer.git", :tag => s.version }
end
