//
//  DataSource.swift
//  TableViewYalantisApp
//
//  Created by typan on 8/14/15.
//  Copyright (c) 2015 Artem Sherbachuk. All rights reserved.
//

import UIKit

class ASDataSource {

  private var data = [
    "image": ["avatar1", "avatar2", "avatar3", "avatar1", "avatar2", "avatar3", "avatar1", "avatar2", "avatar3", "avatar1"],
    "text": ["avatar1", "avatar2", "avatar3", "avatar1", "avatar2", "avatar3", "avatar1", "avatar2", "avatar3", "avatar1"]]

  let imageData: UIImage
  let textData: String

  init(index: Int) {

    let image = data["image"]!
    let text = data["text"]!

    imageData = UIImage(named: image[index])!
    textData = text[index]

  }

}
