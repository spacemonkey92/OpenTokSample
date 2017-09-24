//
//  RoomModel.swift
//  OpenTok
//
//  Created by nitin muthyala on 24/9/17.
//  Copyright © 2017 Spaceage Labs. All rights reserved.
//

import Foundation

class RoomModel {
    
    var name : String
    var sessionID : String
    var token : String
    
    init(name:String,sessionID:String,token:String) {
        self.name = name
        self.sessionID = sessionID
        self.token = token
    }
    
    static func getSampleRooms() -> [RoomModel]{
        let room1 = RoomModel(name: "Room One",
                              sessionID: "1_MX40NTk0Njk1Mn5-MTUwNjI1NjkwNDM5NH4ybEZJZGVuWms4d1pVemxNNm1MazVsK21-fg",                              token:"T1==cGFydG5lcl9pZD00NTk0Njk1MiZzaWc9ZWNjNDkxZmQ5YjRjZjk3N2YxYzZlYzc2ZTdlOTkwYjdhYTRiNDUyMzpzZXNzaW9uX2lkPTFfTVg0ME5UazBOamsxTW41LU1UVXdOakkxTmprd05ETTVOSDR5YkVaSlpHVnVXbXM0ZDFwVmVteE5ObTFNYXpWc0syMS1mZyZjcmVhdGVfdGltZT0xNTA2MjU2OTQzJm5vbmNlPTAuMzI5OTMwODg0MDY4OTkwMDcmcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTUwNjg2MTc0MiZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ==")
        let room2 = RoomModel(name: "Room Two", sessionID: "", token: "")
        let room3 = RoomModel(name: "Room Three", sessionID: "", token: "")
        let room4 = RoomModel(name: "Room Four", sessionID: "", token: "")
        return [room1,room2,room3,room4]
    }
    
    
}

