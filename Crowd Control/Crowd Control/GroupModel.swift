//
//  GroupModel.swift
//  Crowd Control
//
//  Created by Evan Hammer on 10/24/15.
//  Copyright © 2015 Bowtaps. All rights reserved.
//

import Foundation

//Structure to hold the waypoint object for location and a message
struct Waypoint {
    var waypointId: Int
    var longitude: Double
    var latitude: Double
    var message: String
}

protocol GroupModel {
    var groupLeader: String {get set}
    var groupName: String {get set}
    //Itinerary is currently set to string to use as a place holder until we know
    //what the data type looks like
    var itinerary: [String]? {get set}
    var status: String? {get set}
    var waypoints: [Waypoint]? {get set}
    var groupMembers: [String] {get set}
    
    func addGroupMember(member: String)
    func addItineraryItem(itineraryItem: String)
    func addWaypoint(waypoint: Waypoint)
    func removeGroupMember(member: String)
    func load()
    func loadAsync()
    func save()
    func saveAsync()
    //Possible other functions
    //func bcastLocation
}