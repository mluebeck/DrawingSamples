import UIKit
class CircleView: UIView {
    
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {return}
        let width = CGFloat(1.0)
        let innerblackSize = CGFloat(5)
        let innerblackSize2 = innerblackSize+CGFloat(3.0)
        context.addEllipse(in: rect)
        context.setFillColor(UIColor.black.cgColor)
        context.fillPath()

        context.addEllipse(in: CGRect.init(x: width,
                                           y: width,
                                           width: rect.size.width-CGFloat(2.0*width),
                                           height: rect.size.height-CGFloat(2.0*width)))
        context.setFillColor(UIColor.init(red: 98.6/100.0,
                                          green: 81.0/100.0,
                                          blue: 58.0/100.0,
                                          alpha: 1.0).cgColor)
        context.fillPath()
        
        
        context.addEllipse(in: CGRect.init(x: width+innerblackSize,
                                           y: width+innerblackSize,
                                           width: rect.size.width-CGFloat(2.0*width+2.0*innerblackSize),
                                           height: rect.size.height-CGFloat(2.0*width+2.0*innerblackSize)))
        context.setFillColor(UIColor.black.cgColor)
        context.fillPath()
        
        context.addEllipse(in: CGRect.init(x:  width+innerblackSize2,
                                           y: width+innerblackSize2,
                                           width: rect.size.width-CGFloat(2.0*width+2.0*innerblackSize2),
                                           height: rect.size.height-CGFloat(2.0*width+2.0*innerblackSize2)))
        context.setFillColor(UIColor.init(red: 98.6/100.0,
                                          green: 81.0/100.0,
                                          blue: 58.0/100.0,
                                          alpha: 1.0).cgColor)
        context.fillPath()
    }
}

let circel = CircleView.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 100))
circel.backgroundColor = UIColor.clear

var str = "Hello, playground"
