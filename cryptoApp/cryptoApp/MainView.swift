//
//  MainView.swift
//  cryptoApp
//
//  Created by sem1 on 2.01.23.
//

import UIKit

class MainView: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        return tableView
    }()

    init() {
        super.init(frame: .zero)
        mainSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func mainSetup() {
        backgroundColor = .red
        setupLayouts()
        setupLayoutConstraints()
    }
    
    private func setupLayouts() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupLayoutConstraints() {
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
}
