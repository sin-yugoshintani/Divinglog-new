//
//  LogTableViewController.swift
//  test
//
//  Created by 菊地英治 on 2022/06/14.
//

import UIKit
import RealmSwift

class LogTableViewController: UITableViewController {
    let realm = try! Realm()
    @IBOutlet weak var newForumButton: UIBarButtonItem!
    @IBOutlet var logTableView: UITableView!
    
    
    
    var saves = [Save]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getsaveData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getsaveData()
    }
   
    func getsaveData() {
        saves = Array(realm.objects(Save.self)).reversed()
        logTableView.reloadData() // テーブルビューをリロード
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)Divinglog"//サブタイトル
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.saves.count
    }
//行を作る
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "logTableViewCell", for: indexPath)
        
        /*
        cell.textLabel?.text = self.UserDefaults.standard.String(forKey: {saveplace})
        */
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
           
        }
    }
    
    //取得して使う
    
    /*
    UserDefaults.standard.set(date,forKey:"savedate")
    UserDefaults.standard.set(place,forKey:"saveplace")
    UserDefaults.standard.set(averagewaterdepth,forKey:"saveaveragewaterdepth")
    UserDefaults.standard.set(maximumwaterdepth,forKey:"savemaximumwaterdepth")
    UserDefaults.standard.set(startpressure,forKey:"savestartpressure")
    UserDefaults.standard.set(finishpressure,forKey:"savefinishpressure")
    UserDefaults.standard.set(transparency,forKey:"savetransparency")
    UserDefaults.standard.set(instructor,forKey:"saveinstructor")
    UserDefaults.standard.set(Buddy,forKey:"saveBuddy")
    UserDefaults.standard.set(member1,forKey:"savemember1")
    UserDefaults.standard.set(member2,forKey:"savemember2")
    UserDefaults.standard.set(member3,forKey:"savemember3")
    UserDefaults.standard.set(member4,forKey:"savemember4")
    //後で写真も！！
     */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

   
    
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
