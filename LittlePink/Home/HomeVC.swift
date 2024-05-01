//
//  HomeVC.swift
//  LittlePink
//
//  Created by Aragorn Cheng on 2024/4/28.
//

import UIKit
import XLPagerTabStrip

class HomeVC: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        // MARK: 设置上方的bar，按钮，条的UI
        
        // buttonBarItem -- 文本或图片的按钮
        self.settings.style.buttonBarItemBackgroundColor = .clear
        self.settings.style.buttonBarItemTitleColor = .label
        self.settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        self.settings.style.buttonBarItemLeftRightMargin = 0
        // selectedBar -- 按钮下方的条
        self.settings.style.selectedBarHeight = 3
        self.settings.style.selectedBarBackgroundColor = UIColor.theme
        
        super.viewDidLoad()
        
        containerView.bounces = false // 禁止tab切换弹动效果
        // 顶部tab选中状态
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }

            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label

        }
        
        // 默认选中发现
        DispatchQueue.main.async {
            self.moveToViewController(at: 1, animated: false)
        }
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = storyboard!.instantiateViewController(identifier: kFollowVCID)
        let discoveryVC = storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        let nearByVC = storyboard!.instantiateViewController(identifier: kNearByVCID)
        
        return [followVC, discoveryVC, nearByVC]
    }
    
}
