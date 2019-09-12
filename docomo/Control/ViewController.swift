//
//  ViewController.swift
//  docomo
//
//  Created by 萩　山登 on 2019/08/17.
//  Copyright © 2019 萩　山登. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    
    let customView = CustomView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.inTaxlabel.text = "test"
        
        customView.gbCountslider.addTarget(self, action: #selector(sliderDidChangeValue(_:)), for: .valueChanged)
    }
    
    @objc func sliderDidChangeValue(_ sender: TappableSlider){
        
        customView.inTaxlabel.text = "test"
       }
   
//    @objc func sliderDidChangeValue(_ sender: UISlider) {
//                let roundValue = roundf(sender.value * 1) * 1
//                sender.value = roundValue
    
        
    
    
    
//    var GbCount:Int = 0
//
//
//    var GBcount:Int = 0
//
//    var GbCount01:Int = 0
//    var GbCount02:Int = 0
//    var GbCount03:Int = 0
//    var GbCount04:Int = 0
//    var GbCount05:Int = 0
//    var GbCount06:Int = 0
//
//
//
//    var Collset:Int = 0
//    var Collset01:Int = 0
//
//    var Equal:Int = 0
//
//    var Hikari = true
//
//    var equal = 0
//
//
//
//
//
//    @IBOutlet var zeinuki01: UILabel!
//    @IBOutlet var zeinuki02: UILabel!
//    @IBOutlet var zeinuki03: UILabel!
//    @IBOutlet var zeinuki04: UILabel!
//    @IBOutlet var zeinuki05: UILabel!
//    @IBOutlet var zeinuki06: UILabel!
//
//
//
//
//    @IBOutlet var taxEqual01: UILabel!
//    @IBOutlet var taxEqual02: UILabel!
//    @IBOutlet var taxEqual03: UILabel!
//    @IBOutlet var taxEqual04: UILabel!
//    @IBOutlet var taxEqual05: UILabel!
//    @IBOutlet var taxEqual06: UILabel!
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//        let sliderFrame1 = CGRect(x: -120, y: 300, width: 283, height: 30)
//        let sliderFrmae2 = CGRect(x: 30, y: 300, width: 283, height: 30)
//        let sliderFrmae3 = CGRect(x: 150, y: 300, width: 283, height: 30)
//        let sliderFrmae4 = CGRect(x: -120, y: 600, width: 284, height: 30)
//        let sliderFrmae5 = CGRect(x: -110, y: 600, width: 284, height: 30)
//        let sliderFrmae6 = CGRect(x: -100, y: 600, width: 283, height: 30)
//        generateSlider(frame: sliderFrame1, tag: 1)
//        generateSlider(frame: sliderFrmae2, tag: 2)
//        generateSlider(frame: sliderFrmae3, tag: 3)
//        generateSlider(frame: sliderFrmae4, tag: 4)
//        generateSlider(frame: sliderFrmae5, tag: 5)
//        generateSlider(frame: sliderFrmae6, tag: 6)
//
//    }
//
//    func generateSlider(frame: CGRect, tag: Int) {
//        let slider = TappableSlider()
//        slider.frame = frame
//        slider.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
//        slider.setThumbImage(UIImage(named: "knob.png"), for: [])
//        slider.setMinimumTrackImage(UIImage(named: "slider-active.png"), for: [])
//        slider.setMaximumTrackImage(UIImage(named: "slider.png"), for: [])
//        slider.addTarget(self, action: #selector(sliderDidChangeValue(_:)), for: .valueChanged)
//        slider.maximumValue = 5
//        slider.minimumValue = 0
//        slider.tag = tag
//        self.view.addSubview(slider)
//    }
//
//
//
//    @IBAction func hikari(_ sender: Any) {
//
//            switch (sender as AnyObject).selectedSegmentIndex {
//            case 0:
//                Hikari = true
//            case 1:
//                Hikari = false
//
//            default:
//                print("hikariError")
//        }
//
//        for i in 1..<7 {
//            resetPaymentLabel(tag: i)
//        }
//
//        //addSet01(a: Int(GbCount01))
//
//
//    }
//
//    @objc func sliderDidChangeValue(_ sender: UISlider) {
//        let roundValue = roundf(sender.value * 1) * 1
//        sender.value = roundValue
//
//        GbCount = Int(round(sender.value * 1))
//
//        resetPaymentLabel(tag: sender.tag)
//    }
//
//    ///Labelの更新
//    func resetPaymentLabel(tag: Int) {
//        let displayText = GB1count()//関数を実行してそれをdisplaytextに代入する
//
//        if tag == 1 {
//            GbCount = tag
//            GbCount01 = displayText
//            addSet01(a: Int(GbCount01))
//
//        } else if tag == 2 {
//            GbCount = tag
//            GbCount02 = displayText
//            addSet02(a: Int(GbCount02))
//
//
//        } else if tag == 3 {
//
//        } else if tag == 4 {
//
//        } else if tag == 5 {
//
//        } else if tag == 6 {
//
//
//        }
//    }
//
//
//
//
//    @IBAction func collSet(_ sender: Any) {
//        switch (sender as AnyObject).selectedSegmentIndex {
//        case 0:
//            Collset = 0
//        case 1:
//            Collset = 700
//        case 2:
//            Collset = 1700
//        default:
//            print("collSetError")
//
//        }
//        let reload = GB1count()
//        GbCount01 = reload
//      addSet01(a: Int(GbCount01))
//     }
//
//    @IBAction func collSet01(_ sender: Any) {
//        switch (sender as AnyObject).selectedSegmentIndex {
//        case 0:
//            Collset01 = 0
//        case 1:
//            Collset01 = 700
//        case 2:
//            Collset01 = 1700
//        default:
//            print("collSetError")
//
//        }
//    }
//
//
//
//    func GB1count() -> Int {
//
//        if Hikari == true{
//            if GbCount == 0 {
//                GBcount = 0
//            }else if GbCount == 1 {
//                GBcount = 1980
//            }else if GbCount == 2 {
//                GBcount = 2480
//            }else if GbCount == 3 {
//                GBcount = 2980
//            }else if GbCount == 4 {
//                GBcount = 3980
//            }else if GbCount == 5 {
//                GBcount = 4980
//            }
//
//        }
//        if Hikari == false{
//            if GbCount == 0 {
//                GBcount = 0
//            }else if GbCount == 1 {
//                GBcount = 1980
//            }else if GbCount == 2 {
//                GBcount = 2980
//            }else if GbCount == 3 {
//                GBcount = 3980
//            }else if GbCount == 4 {
//                GBcount = 4980
//            }else if GbCount == 5 {
//                GBcount = 5980
//                }
//            }
//        return Int(GBcount)
//    }
//
//        func addSet01(a: Int) {
//            equal = Int(Collset + a)
//
//            zeinuki01.text = "\(equal)"
//            taxEqual01.text = "\(Int(1.08 * (Double(equal))))"
//
//    }
//    func addSet02(a: Int) {
//        equal = Int(Collset + a)
//
//        zeinuki02.text = "\(equal)"
//        taxEqual02.text = "\(Int(1.08 * (Double(equal))))"
//}//////////////////
    
    
 
            
    
      
   
        
    
    


    
    

        

    
    
   

}
