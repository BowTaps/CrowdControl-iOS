//
//  ParseLocationModel.swift
//  Crowd Control
//
//  Created by Evan Hammer on 12/30/15.
//  Copyright © 2015 Bowtaps. All rights reserved.
//

import Foundation
import Parse

class ParseLocationModel: ParseBaseModel, LocationModel{
    /// Parse table name.
    private static let tableName = "Group"
    
    /// Key corresponding to 'generalLocation' field.
    private static let longitudeKey = "Longitude"
    
    /// Key corresponding to `groupDescription` field.
    private static let latitudeKey = "Latitude"
    
    /// Key corresponding to `groupName` field.
    private static let senderKey = "From"
    
    /// Key corresponding to `groupMembers` field.
    private static let recipientKey = "To"
    
    /// Default class contructor. Creates a new entry in the database if saved.
    init() {
        super.init(withParseObject: PFObject(className: ParseLocationModel.tableName))
    }
    
    /// Class constructor. Initializes the isntance from a `PFObject`.
    ///
    /// - Parameter withParseObject: The Parse object to tie this model to the
    ///                              Parse database.
    ///
    /// - SeeAlso: PFObject
    override init(withParseObject object: PFObject) {
        super.init(withParseObject: object)
    }

    /// String holding the longitudinal coordinate
    var longitude: String {
        get {
            return parseObject[ParseLocationModel.longitudeKey] as! String
        }
        set {
            parseObject[ParseLocationModel.longitudeKey] = newValue
        }
    }
    
    /// String holding the latitudinal coordinate
    var latitude: String {
        get {
            return parseObject[ParseLocationModel.latitudeKey] as! String
        }
        set {
            parseObject[ParseLocationModel.latitudeKey] = newValue
        }
    }
    
    /// UserProfileModel holding the recipient information when the locations are being sent
    /// to parse so that they can be sent encrypted to the intended recipient
    var recipient: UserProfileModel {
        get {
            return self.recipient 
        }
    }
    
    /// This is the Current users' UserProfileModel holding the reference for the storage on
    /// parse.
    var sender: UserProfileModel {
        get {
            return self.recipient
        }
    }
}