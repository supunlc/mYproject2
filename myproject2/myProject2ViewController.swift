//
//  myProject2ViewController.swift
//  myproject2
//
//  Created by Digital-06 on 3/11/19.
//  Copyright © 2019 Digital-06. All rights reserved.
//

import UIKit

class myProject2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    @IBOutlet weak var tableView: UITableView!
    
    
    var myStudentList : [Student] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        let student1 = Student(name: "Amal", gender: Gender.Male)
        let student2 = Student(name: "Kamal", gender: Gender.Male)
        let student3 = Student(name: "Lisa", gender: Gender.Female)
        let student4 = Student(name: "John", gender: Gender.Male)
        
        myStudentList = [student1, student2, student3, student4]
        // Do any additional setup after loading the view.
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.myStudentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentDataTableViewCell", for: indexPath) as! StudentDataTableViewCell
        cell.tableLabel.text = self.myStudentList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: "showProfile", sender: nil)
    }
    
}
