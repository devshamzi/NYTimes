//
//  BaseViewController.swift
//  NYTimes
//
//  Created by Shamseer Ali on 28/06/2021.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {

    weak var coordinator: MainCoordinator?
    var bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
