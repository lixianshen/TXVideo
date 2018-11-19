Pod::Spec.new do |spec|
  spec.name             = "TXVideoPod"
  spec.version          = "1.0.0"
  spec.summary          = "腾讯视频去广告，开屏广告，视频列表广告"
  spec.description      = <<-DESC
                          - 腾讯视频去广告，开屏广告，视频列表广告,方式一
                        DESC

  spec.homepage         = "https://github.com/lixianshen/TXVideo"

  spec.license          = { :type => "BSD", :file => "LICENSE" }
  spec.author           = { "LiChengFu" => "lichengfu575@gmail.com" }
  spec.platform         = :ios, "8.0"
  spec.source           = { :git => "https://github.com/lixianshen/TXVideo.git", :tag => spec.version.to_s }  #代码的git地址以及tag
  spec.source_files     = "TXVideoPod/TXVideoPod/**/*.{h,m}"
  spec.public_header_files = "TXVideoPod/TXVideoPod/TXVideoPod.h"
  spec.requires_arc     = true
  spec.pod_target_xcconfig = { "ONLY_ACTIVE_ARCH" => "NO", "HEADER_SEARCH_PATHS" => "/opt/MonkeyDev/include" }          #这个必须有，不要修改
end
