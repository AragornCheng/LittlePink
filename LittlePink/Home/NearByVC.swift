//
//  NearByVC.swift
//  LittlePink
//
//  Created by Aragorn Cheng on 2024/4/29.
//

import UIKit
import XLPagerTabStrip

class NearByVC: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
        return IndicatorInfo(title: NSLocalizedString("nearBy", comment: "首页上方的附近标签"))
    }

}
