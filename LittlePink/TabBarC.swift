//
//  TabBarC.swift
//  LittlePink
//
//  Created by Aragorn Cheng on 2024/5/12.
//

import UIKit
import YPImagePicker

class TabBarC: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is PostVC {
            
            // 待做（判断是否登录）
            
            var config = YPImagePickerConfiguration()
            // MARK: 通用配置
            config.isScrollToChangeModesEnabled = false
            config.onlySquareImagesFromCamera = false
            config.shouldSaveNewPicturesToAlbum = true
            config.albumName = Bundle.main.appName
            config.startOnScreen = .library
            config.screens = [.library, .photo, .video]
            config.maxCameraZoomFactor = 5
            
            // 小红书的照片和视频逻辑：
            // 1. 照片和视频不可混排，且在相册中多选的视频最后会合成一个视频
            // 2. 无论是相册照片还是现拍照片，之后在编辑页面皆可追加
            // 总结：允许一个笔记本发布单个视频或多张照片
            
            // MARK: 相册配置
            config.library.defaultMultipleSelection = true
            config.library.maxNumberOfItems = kMaxPhotoCount
            config.library.spacingBetweenItems = 2
            
            config.gallery.hidesRemoveButton = false
            
            let picker = YPImagePicker(configuration: config)
            picker.didFinishPicking { [unowned picker] items, cancelled in
                if cancelled {
                    print("用户按了左上角的取消按钮")
                }
                picker.dismiss(animated: true, completion: nil)
            }
            present(picker, animated: true, completion: nil)
            
            return false
        }
        return true
    }

}
