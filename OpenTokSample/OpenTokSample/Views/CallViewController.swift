//
//  CallViewController.swift
//  OpenTokSample
//
//  Created by nitin muthyala on 24/9/17.
//  Copyright © 2017 Spaceage Labs. All rights reserved.
//

import UIKit
import OpenTok

class CallViewController: UIViewController {
    
    var roomModel : RoomModel!
    
    var session: OTSession?
    var publisher: OTPublisher?
    var subscriber: OTSubscriber?
    let url = "https://opentoke-test.herokuapp.com/session"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        connectToAnOpenTokSession()
    }
    
    func connectToAnOpenTokSession() {
        session = OTSession(apiKey: AppConstants.AppKey , sessionId: roomModel.sessionID, delegate: self)
        var error: OTError?
        session?.connect(withToken: roomModel.token, error: &error)
        if error != nil {
            print(error!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didClickClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
extension CallViewController: OTSessionDelegate {
    func sessionDidConnect(_ session: OTSession) {
        print("The client connected to the OpenTok session.")
        let settings = OTPublisherSettings()
        settings.name = UIDevice.current.name
        guard let publisher = OTPublisher(delegate: self, settings: settings) else {
            return
        }
        
        var error: OTError?
        session.publish(publisher, error: &error)
        guard error == nil else {
            print(error!)
            return
        }
        
        guard let publisherView = publisher.view else {
            return
        }
        let screenBounds = UIScreen.main.bounds
        publisherView.frame = CGRect(x: screenBounds.width - 150 - 20, y: screenBounds.height - 150 - 20, width: 150, height: 150)
        view.addSubview(publisherView)
    }
    
    func sessionDidDisconnect(_ session: OTSession) {
        print("The client disconnected from the OpenTok session.")
    }
    
    func session(_ session: OTSession, didFailWithError error: OTError) {
        print("The client failed to connect to the OpenTok session: \(error).")
    }
    func session(_ session: OTSession, streamCreated stream: OTStream) {
        print("A stream was created in the session.")
        subscriber = OTSubscriber(stream: stream, delegate: self)
        guard let subscriber = subscriber else {
            return
        }
        
        var error: OTError?
        session.subscribe(subscriber, error: &error)
        guard error == nil else {
            print(error!)
            return
        }
        
        guard let subscriberView = subscriber.view else {
            return
        }
        subscriberView.frame = UIScreen.main.bounds
        view.insertSubview(subscriberView, at: 0)
    }
    
    func session(_ session: OTSession, streamDestroyed stream: OTStream) {
        print("A stream was destroyed in the session.")
    }
}


extension CallViewController: OTPublisherDelegate {
    func publisher(_ publisher: OTPublisherKit, didFailWithError error: OTError) {
        print("The publisher failed: \(error)")
    }
}

extension CallViewController: OTSubscriberDelegate {
    public func subscriberDidConnect(toStream subscriber: OTSubscriberKit) {
        print("The subscriber did connect to the stream.")
    }
    
    public func subscriber(_ subscriber: OTSubscriberKit, didFailWithError error: OTError) {
        print("The subscriber failed to connect to the stream.")
    }
}
