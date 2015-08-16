#########  gem 源有s3 的资源有的被墙了 换国内的 源
#########
#########  gem sources --remove https://rubygems.org/
#########  gem sources -a http://ruby.taobao.org/

#########  gem sources -l # 保证只有淘宝的源
#########  sudo gem install cocoapods // 安装cocoapods
#########  pod --version == 0.38.2 # 请保证版本为0.38.2 否则 Podfile.lock 文件会有冲突


#########  pod repo remove master
#########  pod repo add master https://git.oschina.net/6david9/Specs.git
#########  pod install --verbose --no-repo-update 安装
#########  pod update  --verbose --no-repo-update 更新
#########

#国内镜像 github 太慢

source 'https://git.oschina.net/6david9/Specs.git'

platform :ios, '8.0'
use_frameworks!

pod 'Alamofire', '~> 1.2'  #网络请求库

pod 'SwiftyJSON', '~> 2.2.0'  #json解析库

pod 'PathKit'   #轻量级路径工具

pod 'XCGLogger' #log工具

pod 'Async', :git => 'https://github.com/duemunk/Async.git' #后台执行代码封装库

pod 'RavenSwift' #Raven

pod 'Dollar' # https://github.com/ankurp/Dollar.swift 很好用

pod 'Cent'  # 和上面同一个地址 一些拓展

pod 'Cartography' # https://github.com/robb/Cartography 自动布局

pod 'HanekeSwift' # https://github.com/Haneke/HanekeSwift #cache 库 同时可以做图片异步加载

pod 'JLToast' # https://github.com/devxoul/JLToast  Toastview


