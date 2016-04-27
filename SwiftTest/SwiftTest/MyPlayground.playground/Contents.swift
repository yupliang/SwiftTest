//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = 0
for _ in 0 ..< 19 {
    a = a+1
    print(str)
    print("i l"+"\(0)")
}

var rect:CGRect = CGRectMake(0, 0, 1000, 667)
var slice:CGRect = CGRectZero
var remainder:CGRect = CGRectZero

slice
remainder

drand48()

let view:UIView = UIView(frame: rect)
view.backgroundColor = UIColor.blackColor()


let paddingx:CGFloat = 3
let paddingy:CGFloat = 5
let gridwidth:CGFloat = 40
let gridheight:CGFloat = 30
let numerofrow:NSInteger = NSInteger(floor(view.bounds.size.height/gridheight))
let numberofcolumn:NSInteger = NSInteger(floor(view.bounds.size.width/gridwidth))
var columnremainder:CGRect = CGRectZero

for _ in 0 ..< numerofrow {
    CGRectDivide(rect, &slice, &rect, paddingy, .MinYEdge)
    CGRectDivide(rect, &slice, &rect, gridheight-paddingy, .MinYEdge)
    columnremainder = slice
    
    for _ in 0 ..< numberofcolumn {
        CGRectDivide(columnremainder, &slice, &columnremainder, paddingx, .MinXEdge )
        CGRectDivide(columnremainder, &slice, &columnremainder, gridwidth-paddingx, .MinXEdge)
        var sliceView:UIView = UIView(frame:slice)
        sliceView.backgroundColor = UIColor(hue: CGFloat(drand48()), saturation: 1, brightness: 1, alpha: 1)
        sliceView.layer.borderColor = UIColor.grayColor().CGColor
        sliceView.layer.borderWidth = 0.5
        view.addSubview(sliceView)
    }
}


view




