//
//  ASMasterCell.swift
//  TableViewYalantisApp
//
//  Created by typan on 8/14/15.
//  Copyright (c) 2015 Artem Sherbachuk. All rights reserved.
//

import UIKit

class ASMasterCell: UITableViewCell {

// FIXME: аутлеты не стоит делать публичными. Это детали внутренней реализации класса. Достаточно сделать публичный метод вроде setupWithModel(), в который будет передаваться модель, и ячейка будет сама себя заполнять этой моделью
  @IBOutlet weak var cellImageView: UIImageView!
  @IBOutlet weak var cellLabelText: UILabel!
    
}
