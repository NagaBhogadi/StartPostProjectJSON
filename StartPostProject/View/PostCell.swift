//
//  PostCell.swift
//  StartPostProject
//
//  Created by Naga Rajitha Bhogadi on 6/25/26.
//
import UIKit

final class ProductCell: UITableViewCell {
    
    // MARK: - Identifier
    
    static let identifier = "ProductCell"
    
    // MARK: - UI Components
    
    private let userIdLabel = UILabel()
    private let idLabel = UILabel()
    private let titleLabel = UILabel()
    private let bodyLabel = UILabel()
    
    // MARK: - Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup UI
    
    private func setupUI() {
        userIdLabel.font = .boldSystemFont(ofSize: 18)
        idLabel.font = .boldSystemFont(ofSize: 18)
        titleLabel.font = .boldSystemFont(ofSize: 18)
        titleLabel.numberOfLines = 0
        bodyLabel.font = .systemFont(ofSize: 14)
        bodyLabel.numberOfLines = 0
        bodyLabel.textColor = .gray
        selectionStyle = .none
        
        let stackView = UIStackView(arrangedSubviews: [
            userIdLabel,
            idLabel,
            titleLabel,
            bodyLabel
        ])
        
        stackView.axis = .vertical
        stackView.spacing = 6
        
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
        ])
    }
    
    // MARK: - Configure Cell
    
    func configure(with post: Post) {
        userIdLabel.text = "User ID: \(post.userId)"
        idLabel.text = "ID: \(post.id)"
        titleLabel.text = post.title.capitalized
        bodyLabel.text = post.body
    }
}

