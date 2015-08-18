//
//  DataSource.swift
//  TableViewYalantisApp
//
//  Created by typan on 8/14/15.
//  Copyright (c) 2015 Artem Sherbachuk. All rights reserved.
//

import UIKit

// FIXME: датасорс у Вас дзанимается немного не тем, чем должен. Начать следует с того, что у Вас должна быть отдельная модель, которая хранит в себе картинку и текст (я кстати писал об этом в замечаниях к заданию 1). Датасорс должен внутри себя должен создать все модели и далее хранить их в приватном массиве. Публичными же должны быть методы, которые нужны контроллеру для отображения данных в таблице. Т.е. нужны методы, один из которых возвращает количество моделей, второй возвращает модель по индексу.

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
