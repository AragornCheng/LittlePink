//
//  FollowVC.swift
//  LittlePink
//
//  Created by Aragorn Cheng on 2024/4/29.
//

import UIKit
import XLPagerTabStrip

class FollowVC: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        return IndicatorInfo(title: NSLocalizedString("follow", comment: "首页上方的关注标签"))
    }
    
}
