//
//  AddViewController.swift
//  M10ToDoList_Kim
//
//  Created by Eun Mi Kim on 4/14/26.
//

import UIKit

class AddViewController: UIViewController {
    var listVC: ListViewController?
    
    @IBOutlet weak var inputField: UITextField!
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        guard let text = inputField.text else{
            return
        }
        listVC?.toDoList.append(text) //optional chainning
        //Reloads table view so data appears
        listVC?.toDoTableView.reloadData()
//        print(listVC?.toDoList)
        dismiss(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
