import Foundation
import UIKit


class MutableAttributedString{
    
    // MARK: Properties
    private var subscriptFont:UIFont? = UIFont(name: "Helvetica", size: 0)

    let subscriptBaselineOffset = -1
    
    let attributedString:NSMutableAttributedString?
    
    var defaultFont:UIFont?  {
        
        didSet{
                subscriptFont = getSubcriptFont()
        }
    }
    
    // MARK: Init
    init(string: String, defaultFont:UIFont) {
        self.attributedString = NSMutableAttributedString(string: string, attributes: [NSFontAttributeName:defaultFont])
        self.defaultFont = defaultFont
        self.subscriptFont = getSubcriptFont()
        
    }
    
    
    
    //MARK: Methods
    private func getSubcriptFont() -> UIFont?{
        if let font = defaultFont {
            return UIFont(name: font.familyName, size: font.pointSize / 2)
        }
        
        return nil
    }
    
    
    func toSubscript(subscriptRange:NSRange){
        if let attribute = subscriptAttribute() {
              self.attributedString?.addAttributes(attribute, range: subscriptRange)
        }
       
    }
    
    private func subscriptAttribute() -> [String:Any]?{
        if let font = subscriptFont {
            let attribute: [String:Any] = [NSFontAttributeName:font, NSBaselineOffsetAttributeName:subscriptBaselineOffset]
            return attribute
        }
        
        return nil
    }
    
    
}
