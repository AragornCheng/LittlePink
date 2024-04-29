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
        self.settings.style.buttonBarItemBackgroundColor = .clear
        self.settings.style.buttonBarItemTitleColor = .label
        self.settings.style.buttonBarItemFont = .systemFont(ofSize: 16)
        self.settings.style.buttonBarItemLeftRightMargin = 0
        
        self.settings.style.selectedBarHeight = 3
        self.settings.style.selectedBarBackgroundColor = UIColor.theme
        
        super.viewDidLoad()
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = storyboard!.instantiateViewController(identifier: kFollowVCID)
        let discoveryVC = storyboard!.instantiateViewController(identifier: kDiscoveryVCID)
        let nearByVC = storyboard!.instantiateViewController(identifier: kNearByVCID)
        
        return [followVC, discoveryVC, nearByVC]
    }
    
}
