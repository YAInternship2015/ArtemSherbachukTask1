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

// FIXME: достаточно было задать высоту ячейки прямо в сториборде, тогда бы не потребовалось кода вообще
    tableView.estimatedRowHeight = 80
    tableView.rowHeight = UITableViewAutomaticDimension
    
  }

// FIXME: зачем здесь так много пустых строк?)


  // MARK: - Table view data source

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
// FIXME: так тоже делать не стоит. Вы должны спрашивать у датасорса, сколько у него есть объектов-моделей. Соответственно именно столько ячеек и будет в таблице
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
