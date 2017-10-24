//
//  TagTemplate.swift
//  Achiever
//
//  Created by Darryl Weimers on 18/10/2017.
//  Copyright © 2017 DarrylWeimers. All rights reserved.
//

import Foundation


class TagTemplate{
    
    
    static let sharedInstance = TagTemplate()
    
    var items: [String]?
    
    
    private init()
    {
        getPlist()
    }
    
  
    private func getPlist() {
    
        let bundle = Bundle.main
        let fileName = "Tags"
        let fileExtension = "plist"
        let key = "Tags"
        
        if let path = bundle.path(forResource: fileName, ofType: fileExtension),
        let tagsDictionairy = NSDictionary(contentsOfFile: path),
            let tagsArray = tagsDictionairy[key] {
    
            items = tagsArray as? [String]
        }
    }

    
    
}









