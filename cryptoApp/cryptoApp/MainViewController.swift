//
//  ViewController.swift
//  cryptoApp
//
//  Created by sem1 on 2.01.23.
//

import UIKit

class MainViewController: UIViewController {
    
    private let _view = MainView()
    private let viewModel: MainViewModel
    
    override func loadView() {
        view = _view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mainSetup()
        configureNavigationItems()
    }
    
    init(viewModel: MainViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func mainSetup() {
        _view.tableView.delegate = self
        _view.tableView.dataSource = self
    }
    
    private func configureNavigationItems() {
        navigationItem.title = "Crypto"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        navigationController?.navigationBar.sizeToFit()
        _view.tableView.contentInsetAdjustmentBehavior = .never
    }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        return cell
    }
    
    
}
