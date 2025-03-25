//
//  HeadlineCell.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Kingfisher
import UIKit
import Swinject

class HeadlineCell: UICollectionViewCell {
    private let horizontalPadding: CGFloat = 20
    private let verticalPadding: CGFloat = 12
    
    private lazy var articleImage = UIImageView()
    private lazy var sourceLabel = DynamicLabel(
        textColor: .secondaryLabel,
        font: UIFont.preferredFont(for: .callout, weight: .regular)
    )
    private lazy var titleLabel = DynamicLabel(
        textColor: .label,
        font: UIFont.preferredFont(for: .title2, weight: .bold),
        minimumScaleFactor: 1
    )
    private lazy var descriptionLabel = DynamicLabel(
        textColor: .label,
        font: UIFont.preferredFont(for: .body, weight: .regular),
        minimumScaleFactor: 1,
        numberOfLines: 5
    )
    
    private lazy var miscStackView = UIStackView()
    private lazy var authorNameLabel = DynamicLabel(
        textColor: .secondaryLabel,
        font: UIFont.preferredFont(for: .footnote, weight: .regular),
        minimumScaleFactor: 1,
        numberOfLines: 1
    )
    private lazy var calendarIcon = UIImageView(image: UIImage(systemName: "calendar"))
    private lazy var publishedDateLabel = DynamicLabel(
        textColor: .secondaryLabel,
        font: UIFont.preferredFont(for: .footnote, weight: .regular)
    )
    lazy var divider = Divider()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureArticleImage()
        configureSourceLabel()
        configureTitle()
        configureDescription()
        configureMiscStackView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func set(article: ArticleResponse, container: Resolver) {
        Task { [weak self] in
            guard let self else { return }
            let cachedImage = await container.resolve(NetworkService.self)?.downloadImage(from: article.urlToImage)
            articleImage.image = cachedImage
        }
        sourceLabel.text = article.source.name.capitalized
        titleLabel.text = article.title
        descriptionLabel.text = article.description
        authorNameLabel.text = article.author == nil ? "Unknown Author" : "Author: \(article.author ?? "")"
        
        let publishedDateFormatter = Date.getFormatter(dateFormat: "yyyy-MM-dd'T'HH:mm:ssZZZZZ")
        let dirtyPubDate = publishedDateFormatter.date(from: article.publishedAt) ?? .now
        let cleanPublishedDateFormatter = Date.getFormatter(dateFormat: "MMM dd, yyyy 'at' hh:mm a")
        let cleanPubDate = cleanPublishedDateFormatter.string(from: dirtyPubDate)
        publishedDateLabel.text = "\(cleanPubDate)"
    }
    
    private func configureArticleImage() {
        articleImage.translatesAutoresizingMaskIntoConstraints = false
        articleImage.tintColor = .systemPurple
        articleImage.clipsToBounds = true
        articleImage.contentMode = .scaleAspectFill
        articleImage.layer.cornerRadius = 10
        articleImage.kf.indicatorType = .activity
        
        contentView.addSubview(articleImage)
        NSLayoutConstraint.activate([
            articleImage.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: verticalPadding),
            articleImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            articleImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/3.5),
            articleImage.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/3.5),
        ])
    }
    
    private func configureSourceLabel() {
        sourceLabel.setContentCompressionResistancePriority(.required, for: .vertical)
        contentView.addSubview(sourceLabel)
        NSLayoutConstraint.activate([
            sourceLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: verticalPadding),
            sourceLabel.leadingAnchor.constraint(equalTo: articleImage.trailingAnchor, constant: horizontalPadding),
            sourceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
        ])
    }
    
    private func configureTitle() {
        titleLabel.lineBreakMode = .byTruncatingTail
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: sourceLabel.bottomAnchor, constant: verticalPadding),
            titleLabel.leadingAnchor.constraint(equalTo: articleImage.trailingAnchor, constant: horizontalPadding),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
            titleLabel.bottomAnchor.constraint(lessThanOrEqualTo: articleImage.bottomAnchor),
        ])
    }
    
    private func configureDescription() {
        contentView.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: articleImage.bottomAnchor, constant: verticalPadding),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
        ])
    }
    
    private func configureMiscStackView() {
        miscStackView.translatesAutoresizingMaskIntoConstraints = false
        miscStackView.axis = .horizontal
        miscStackView.spacing = 4
        miscStackView.addArrangedSubviews(authorNameLabel, CustomSpacer(axis: .horizontal), calendarIcon, publishedDateLabel)
        
        calendarIcon.setContentCompressionResistancePriority(.required, for: .horizontal)
        calendarIcon.tintColor = .secondaryLabel
        publishedDateLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        
        contentView.addSubviews(miscStackView, divider)
        NSLayoutConstraint.activate([
            miscStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: verticalPadding),
            miscStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            miscStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
            
            divider.topAnchor.constraint(equalTo: miscStackView.bottomAnchor, constant: verticalPadding),
            divider.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            divider.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
            divider.heightAnchor.constraint(equalToConstant: 0.75)
        ])
        
        let dividerBottomConstraint = divider.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -verticalPadding)
        dividerBottomConstraint.priority = .required - 1
        dividerBottomConstraint.isActive = true
    }
}

#Preview {
    let cell = HeadlineCell()
    cell.set(article: HeadlineResponse.test.articles[5], container: Container())
    
    return cell
}

/*
 Content hugging and compression resistance priorities aren’t “force” in the literal sense, but they do tell Auto Layout which view should yield (or not yield) when there’s not enough space.
     •    Content Hugging Priority determines how strongly a view resists growing larger than its intrinsic content size. A higher value means the view will “hug” its content more tightly and avoid stretching.
     •    Compression Resistance Priority indicates how strongly a view resists being made smaller than its intrinsic content size. A higher value means the view is less likely to shrink (or compress) its content.

 In a scenario with conflicting constraints, Auto Layout uses these priorities to decide which view gets compressed or expanded. So while they don’t force a view to a specific size, they do influence which view yields to accommodate others.
 */
