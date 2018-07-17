//
//  ViewController.swift
//  SwiftLintRules
//
//  Created by Evan Anger on 7/16/18.
//  Copyright © 2018 Mighty Strong. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    var counter = 0
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer()
        self.view.addGestureRecognizer(tapGesture)
        
        
        tapGesture.rx.event
            .subscribe(onNext: { (_) in
                print("Something happened")
                self.counter += 1
            })
            .addDisposableTo(self.disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
