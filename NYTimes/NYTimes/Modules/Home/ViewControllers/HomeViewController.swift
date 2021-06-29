//
//  ViewController.swift
//  NYTimes
//
//  Created by Shamseer Ali on 28/06/2021.
//

import UIKit


class HomeViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(HomeTableViewCell.self)
            tableView.estimatedRowHeight = 100
            tableView.rowHeight = UITableView.automaticDimension
        }
    }
    
    var vm = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscribe()
        vm.populateHomeData()
        // Do any additional setup after loading the view.
    }


}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.vm.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.reuseIdentifier, for: indexPath) as! HomeTableViewCell
        cell.titleLabel?.text = self.vm.dataSource[indexPath.row].title ?? ""
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.goToDetail()
    }
}


// MARK: - Bindable
extension HomeViewController {
    func subscribe() {
        
        vm.onChange.subscribe(onNext: {[weak self] (state) in
            guard let self = self else {return}
            switch state {
            case .success:
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let message):
              break
            }
        }).disposed(by: bag)
    }
}
