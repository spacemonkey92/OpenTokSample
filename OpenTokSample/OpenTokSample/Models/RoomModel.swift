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
        let room1 = RoomModel(name: "Room One",sessionID: "1_MX40NTk0Njk1Mn5-MTUwNjI1NjkwNDM5NH4ybEZJZGVuWms4d1pVemxNNm1MazVsK21-fg", token:"T1==cGFydG5lcl9pZD00NTk0Njk1MiZzaWc9ZWNjNDkxZmQ5YjRjZjk3N2YxYzZlYzc2ZTdlOTkwYjdhYTRiNDUyMzpzZXNzaW9uX2lkPTFfTVg0ME5UazBOamsxTW41LU1UVXdOakkxTmprd05ETTVOSDR5YkVaSlpHVnVXbXM0ZDFwVmVteE5ObTFNYXpWc0syMS1mZyZjcmVhdGVfdGltZT0xNTA2MjU2OTQzJm5vbmNlPTAuMzI5OTMwODg0MDY4OTkwMDcmcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTUwNjg2MTc0MiZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ==")
        let room2 = RoomModel(name: "Room Two", sessionID: "1_MX40NTk0Njk1Mn5-MTUwNjI2NjkxNzg0MH5ZL3k4WW8wMXBXbVA0MGxGdEVZbVQyVW9-fg", token: "T1==cGFydG5lcl9pZD00NTk0Njk1MiZzaWc9OTZkN2RjMTUzZjNlZWNlMDU3YmNjNWRlMjhjMDc1OWJiZTQ1NjEyYzpzZXNzaW9uX2lkPTFfTVg0ME5UazBOamsxTW41LU1UVXdOakkyTmpreE56ZzBNSDVaTDNrNFdXOHdNWEJYYlZBME1HeEdkRVZaYlZReVZXOS1mZyZjcmVhdGVfdGltZT0xNTA2MjY2OTMyJm5vbmNlPTAuNDAwOTY1NjUzOTg2NDcxMiZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNTA2ODcxNzMxJmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9")
        let room3 = RoomModel(name: "Room Three", sessionID: "1_MX40NTk0Njk1Mn5-MTUwNjI2Njk1Nzg3MH45eGVCdE5NS1kyQUNET0FtVkR3RzI0QmR-fg", token: "T1==cGFydG5lcl9pZD00NTk0Njk1MiZzaWc9NWNmNWQ1YTRlYTRhZGU0M2I3MjI1MTM4ZjJiZTM1NTM3YmI3YWQxMzpzZXNzaW9uX2lkPTFfTVg0ME5UazBOamsxTW41LU1UVXdOakkyTmprMU56ZzNNSDQ1ZUdWQ2RFNU5TMWt5UVVORVQwRnRWa1IzUnpJMFFtUi1mZyZjcmVhdGVfdGltZT0xNTA2MjY2OTcyJm5vbmNlPTAuMTcxMzg2MDkwMTc5MjIyMTMmcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTUwNjg3MTc3MSZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ==")
        let room4 = RoomModel(name: "Room Four", sessionID: "1_MX40NTk0Njk1Mn5-MTUwNjI2Njk4MjgxOH5WWnJtM1plS2xENUtxbjc0bjhwa2hKSVJ-fg", token: "T1==cGFydG5lcl9pZD00NTk0Njk1MiZzaWc9MTNlODhkYzgxODUyZTRlYmJmNjYwNDk2MmIxMGQ2ZWM4Y2RmZGJlYjpzZXNzaW9uX2lkPTFfTVg0ME5UazBOamsxTW41LU1UVXdOakkyTmprNE1qZ3hPSDVXV25KdE0xcGxTMnhFTlV0eGJqYzBiamh3YTJoS1NWSi1mZyZjcmVhdGVfdGltZT0xNTA2MjY3MDAxJm5vbmNlPTAuNzYyOTI4ODAzMjk5MDg2JnJvbGU9cHVibGlzaGVyJmV4cGlyZV90aW1lPTE1MDY4NzE4MDAmaW5pdGlhbF9sYXlvdXRfY2xhc3NfbGlzdD0=")
        let room5 = RoomModel(name: "Room Five", sessionID: "1_MX40NTk0Njk1Mn5-MTUwNjI2NzAxNDE1M35DaklOSUt1TkkrUi9ja21SNEx4VzJGWHh-fg", token: "T1==cGFydG5lcl9pZD00NTk0Njk1MiZzaWc9NmQxNzJhZWRjYzI5NWYyYTBkZmNkYzczNDc0NjdjZDFjNTM0MzQ5ZDpzZXNzaW9uX2lkPTFfTVg0ME5UazBOamsxTW41LU1UVXdOakkyTnpBeE5ERTFNMzVEYWtsT1NVdDFUa2tyVWk5amEyMVNORXg0VnpKR1dIaC1mZyZjcmVhdGVfdGltZT0xNTA2MjY3MDQ0Jm5vbmNlPTAuMzc2NzExNzA1MTk1Mjc2NCZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNTA2ODcxODQzJmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9")
        return [room1,room2,room3,room4,room5]
    }
    
    
}

