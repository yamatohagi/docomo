//
//  CusstomView.swift
//  docomo
//
//  Created by 萩　山登 on 2019/08/23.
//  Copyright © 2019 萩　山登. All rights reserved.
//
//スライダーをカスタムしたクラス
class TappableSlider: UISlider {
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        return true // どんなtouchでもスライダー調節を行う
        }
    override func awakeFromNib() {
        super.awakeFromNib()
    transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
    setThumbImage(UIImage(named: "knob.png"), for: [])
    setMinimumTrackImage(UIImage(named: "slider-active.png"), for: [])
    setMaximumTrackImage(UIImage(named: "slider.png"), for: [])
        }
}

import UIKit

class CustomView: UIView {
    
    @IBOutlet weak var gbCountslider: TappableSlider!
    @IBOutlet weak var inTaxlabel: UILabel!
    
    @IBAction func GbCountSet(_ sender: UISlider) {
        let roundValue = roundf(sender.value * 1) * 1
           sender.value = roundValue//GbSliderを一定間隔で動かす
    }
    
    @IBAction func CollPlanSet(_ sender: Any) {
        
    }
 // コードから生成した時の初期化処理
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.nibInit()
    }
    
    // ストーリーボードで配置した時の初期化処理
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.nibInit()
    }
    // xibファイルを読み込んでviewに重ねる
    fileprivate func nibInit() {
        
        // File's OwnerをXibViewにしたので ownerはself になる
        guard let view = UINib(nibName: "CustomView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else {
            return
        }
        
        view.frame = self.bounds
        
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.addSubview(view)
    }
}
    

