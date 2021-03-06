//
//  HeadersModel.swift
//
//  http://www.cnblogs.com/YouXianMing/
//  https://github.com/YouXianMing
//
//  Copyright (c) YouXianMing All rights reserved.
//

import Foundation

// MARK: [Class] HeadersModel

class HeadersModel: NSObject {
    
    // MARK: Stored propeties.
    //-----------------------------------------------------------------------------
    
    var acceptEncoding : String?
    var acceptLanguage : String?
    var accept         : String?
    var userAgent      : String?
    var host           : String?

    // MARK: Init methods.
    //-----------------------------------------------------------------------------
    
    /**
     Init with dictionary.
     
     - parameter dictionary: The json data dictionary.
     
     - returns: The instance.
     */
    init?(dictionary : [String : AnyObject]?) {
        
        super.init()
        if let _ : [String : AnyObject] = dictionary { setValuesForKeysWithDictionary(dictionary!) } else { return nil}
    }
    
    /**
     Override init.
     
     - returns: The instance.
     */
    override init() {
        
        super.init()
    }
    
    // MARK: SetValueForKey & setValueForUndefinedKey.
    //-----------------------------------------------------------------------------
    
    /**
     Sets the property of the receiver specified by a given key to a given value.
     
     - parameter value: The value for the property identified by key.
     - parameter key:   The name of one of the receiver's properties.
     */
    override func setValue(value: AnyObject?, forKey key: String) {
        
        // To ignore Null value.
        guard value != nil else {
            
            return
        }
        
        super.setValue(value, forKey: key)
    }
    
    /**
     Invoked by setValue:forKey: when it finds no property for a given key.
     
     - parameter value: The value for the key identified by key.
     - parameter key:   A string that is not equal to the name of any of the receiver's properties.
     */
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
         if key == "Accept-Encoding" {
        
             acceptEncoding = value as? String
             return
         }
        
        if key == "Accept-Language" {
            
            acceptLanguage = value as? String
            return
        }
        
        if key == "User-Agent" {
            
            userAgent = value as? String
            return
        }
        
        print("[‼️] The file '\(self.classForCoder).swift' has an undefined key '\(key)', and the key's type is \(value?.classForCoder).")
    }
}
