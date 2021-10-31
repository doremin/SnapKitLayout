//
//  ViewController.swift
//  KMU
//
//  Created by doremin on 2021/10/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
  
  let label = UILabel()
  let label2 = UILabel()
  let box1 = UIView()
  let box2 = UIView()
  let box3 = UIView()
  let box4 = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = .white
    
    self.label.text = "Hello world"
    self.view.addSubview(self.label)
    self.view.addSubview(self.box1)
    self.view.addSubview(self.box2)
    self.view.addSubview(self.box3)
    self.view.addSubview(self.box4)

    self.box2.addSubview(self.label2)
    self.label2.text = "asdasdasdasdasd"

    self.box1.backgroundColor = .black
    self.box2.backgroundColor = .red
    self.box3.backgroundColor = .yellow
    self.box4.backgroundColor = .green

    self.box2.layer.cornerRadius = 50

    self.label.snp.makeConstraints { make in
      make.centerX.centerY.equalToSuperview()
    }

    self.box1.snp.makeConstraints { make in
      make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
      make.left.equalTo(20)
      make.width.equalTo((self.view.frame.width * 2 / 3) - 40)
      make.height.equalTo(100)
    }

    self.box2.snp.makeConstraints { make in
      make.top.equalTo(self.box1.snp.top)
      make.left.equalTo(self.box1.snp.right).offset(10)
      make.height.equalTo(self.box1.snp.height)
      make.width.equalTo(self.view.frame.width / 3)
    }

    self.box3.snp.makeConstraints { make in
      make.top.equalTo(self.box1.snp.bottom).offset(10)
      make.left.equalTo(self.box1)
      make.width.equalTo(100)
      make.height.equalTo(300)
    }

    self.box4.snp.makeConstraints { make in
      make.top.equalTo(self.box3)
      make.left.equalTo(self.box3.snp.right).offset(10)
      make.right.equalToSuperview().offset(-20)
      make.height.equalTo(400)
    }

    self.label2.snp.makeConstraints { make in
      make.centerX.centerY.equalToSuperview()
    }
  }
}
