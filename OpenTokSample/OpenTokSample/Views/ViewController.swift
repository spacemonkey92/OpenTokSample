//
//  ViewController.swift
//  OpenTokSample
//
//  Created by nitin muthyala on 24/9/17.
//  Copyright © 2017 Spaceage Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let rooms = RoomModel.getSampleRooms()
    var selectedRoom : RoomModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "RoomCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "RoomCell")
        
        // Table view setup
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "callSegue"{
            let nav = segue.destination as! UINavigationController
            let vc = nav.viewControllers.first! as! CallViewController
            guard let model = self.selectedRoom else{
                return
            }
            vc.roomModel = model
            
        }
    }
    
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : RoomCell = tableView.dequeueReusableCell(withIdentifier: "RoomCell")  as! RoomCell
        cell.nameLabel.text = self.rooms[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.selectedRoom = rooms[indexPath.row]
        performSegue(withIdentifier: "callSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}
