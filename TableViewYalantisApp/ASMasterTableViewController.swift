//
//  ASMasterTableViewController.swift
//  TableViewYalantisApp
//
//  Created by typan on 8/14/15.
//  Copyright (c) 2015 Artem Sherbachuk. All rights reserved.
//

import UIKit

class ASMasterTableViewController: UITableViewController {


  override func viewDidLoad() {
    super.viewDidLoad()

    tableView.estimatedRowHeight = 80
    tableView.rowHeight = UITableViewAutomaticDimension
    
  }





  // MARK: - Table view data source

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

    return 10
  }


  override func tableView(tableView: UITableView, cellForRowAtIndexPath
    indexPath: NSIndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCellWithIdentifier("MasterCell", forIndexPath: indexPath) as! ASMasterCell

      let data = ASDataSource(index: indexPath.row)

      cell.cellImageView.image = data.imageData
      cell.cellLabelText.text = data.textData

      return cell
  }



  //MARK: Style TableView
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
  }


}
