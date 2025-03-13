//
//  ArticleCell.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Kingfisher
import UIKit

class ArticleCell: UICollectionViewCell {
    private let horizontalPadding: CGFloat = 20
    private let verticalPadding: CGFloat = 12
    
    private lazy var articleImage = UIImageView()
    private lazy var badge = CapsuleView()
    private lazy var badgeCategoryLabel = DynamicLabel(
        textColor: .white,
        font: UIFont.preferredFont(for: .footnote, weight: .regular)
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
    private lazy var sourceImage = UIImageView()
    private lazy var sourceNameLabel = DynamicLabel(
        textColor: .label,
        font: UIFont.preferredFont(for: .body, weight: .regular),
        numberOfLines: 1
    )
    
    private lazy var publishedDateStackView = UIStackView()
    private lazy var calendarIcon = UIImageView(image: UIImage(systemName: "calendar"))
    private lazy var publishedDateLabel = DynamicLabel(
        textColor: .secondaryLabel,
        font: UIFont.preferredFont(for: .footnote, weight: .regular)
    )
    private lazy var divider = Divider()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureArticleImage()
        configureBadge()
        configureTitle()
        configureDescription()
        configureSourceImage()
        configureSourceName()
        configurePublishedDate()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func set(article: Article, isDividerVisible: Bool = true) {
        articleImage.kf.setImage(
            with: URL(string: article.imageUrl ?? ""),
            placeholder: UIImage(systemName: "newspaper"),
            options: [
                .fromMemoryCacheOrRefresh,
                .cacheMemoryOnly,
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(0.25))
            ]
        )
        
        sourceImage.kf.setImage(
            with: URL(string: article.sourceIcon ?? ""),
            placeholder: UIImage(systemName: "newspaper.fill"),
            options: [
                .fromMemoryCacheOrRefresh,
                .cacheMemoryOnly,
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(0.25))
            ]
        )
        
        badge.configure(newsCategory: article.category[0])
        badgeCategoryLabel.text = article.category[0].rawValue.capitalized
        badgeCategoryLabel.textAlignment = .center
        titleLabel.text = article.title
        descriptionLabel.text = article.description ?? "No description available."
        sourceNameLabel.text = article.sourceName
        
        let publishedDateFormatter = Date.getFormatter(dateFormat: "yyyy-MM-dd HH:mm:ss")
        let dirtyPubDate = publishedDateFormatter.date(from: article.pubDate) ?? .now
        let cleanPublishedDateFormatter = Date.getFormatter(dateFormat: "MMM dd, yyyy 'at' hh:mm a")
        let cleanPubDate = cleanPublishedDateFormatter.string(from: dirtyPubDate)
        publishedDateLabel.text = "\(cleanPubDate)"
        
//        if !isDividerVisible {
//            divider.heightAnchor.constraint(equalToConstant: 0).isActive = true
//        }
    }
    
    private func configureArticleImage() {
        articleImage.translatesAutoresizingMaskIntoConstraints = false
        articleImage.tintColor = .systemPurple
        articleImage.clipsToBounds = true
        articleImage.contentMode = .scaleAspectFill
        articleImage.layer.cornerRadius = 10
        
        contentView.addSubviews(articleImage)
        NSLayoutConstraint.activate([
            articleImage.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: verticalPadding),
            articleImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            articleImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/3.5),
            articleImage.heightAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/3.5)
        ])
    }
    
    private func configureBadge() {
        contentView.addSubviews(badge, badgeCategoryLabel)
        NSLayoutConstraint.activate([
            badge.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: verticalPadding),
            badge.leadingAnchor.constraint(equalTo: articleImage.trailingAnchor, constant: horizontalPadding),
            badge.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -horizontalPadding),
            badge.widthAnchor.constraint(equalTo: badgeCategoryLabel.widthAnchor, constant: horizontalPadding + 10),
            badge.heightAnchor.constraint(equalToConstant: 30),
            
            badgeCategoryLabel.centerXAnchor.constraint(equalTo: badge.centerXAnchor),
            badgeCategoryLabel.centerYAnchor.constraint(equalTo: badge.centerYAnchor)
        ])
    }
    
    private func configureTitle() {
        titleLabel.lineBreakMode = .byTruncatingTail
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: badge.bottomAnchor, constant: verticalPadding),
            titleLabel.leadingAnchor.constraint(equalTo: articleImage.trailingAnchor, constant: horizontalPadding),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
            titleLabel.bottomAnchor.constraint(equalTo: articleImage.bottomAnchor, constant: -verticalPadding),
        ])
    }
    
    private func configureDescription() {
        contentView.addSubviews(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: articleImage.bottomAnchor, constant: verticalPadding),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding)
        ])
    }
    
    private func configureSourceImage() {
        sourceImage.translatesAutoresizingMaskIntoConstraints = false
        sourceImage.clipsToBounds = true
        sourceImage.contentMode = .scaleAspectFit
        sourceImage.layer.cornerRadius = 35/2
        sourceImage.tintColor = .systemPurple
        
        contentView.addSubview(sourceImage)
        NSLayoutConstraint.activate([
            sourceImage.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: verticalPadding),
            sourceImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            sourceImage.widthAnchor.constraint(equalToConstant: 35),
            sourceImage.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
    
    private func configureSourceName() {
        sourceNameLabel.lineBreakMode = .byTruncatingTail
        contentView.addSubviews(sourceNameLabel, publishedDateStackView)
        
        // Let the sourceNameLabel shrink if space is tight.
        sourceNameLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        sourceNameLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        
        NSLayoutConstraint.activate([
            sourceNameLabel.leadingAnchor.constraint(equalTo: sourceImage.trailingAnchor, constant: 8),
            sourceNameLabel.trailingAnchor.constraint(lessThanOrEqualTo: publishedDateStackView.leadingAnchor, constant: -8),
            sourceNameLabel.centerYAnchor.constraint(equalTo: sourceImage.centerYAnchor),
        ])
    }
    
    private func configurePublishedDate() {
        calendarIcon.translatesAutoresizingMaskIntoConstraints = false
        calendarIcon.tintColor = .secondaryLabel
        
        publishedDateStackView.translatesAutoresizingMaskIntoConstraints = false
        publishedDateStackView.addArrangedSubviews(calendarIcon, publishedDateLabel)
        publishedDateStackView.axis = .horizontal
        publishedDateStackView.spacing = 8
        
        // Ensure the publishedDateStackView maintains its intrinsic size.
        publishedDateStackView.setContentHuggingPriority(.required, for: .horizontal)
        publishedDateStackView.setContentCompressionResistancePriority(.required, for: .horizontal)
        
        NSLayoutConstraint.activate([
            publishedDateStackView.centerYAnchor.constraint(equalTo: sourceImage.centerYAnchor),
            publishedDateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
//            publishedDateLabel.bottomAnchor.constraint(equalTo: divider.topAnchor, constant: -verticalPadding)
        ])
        
        divider.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(divider)
        NSLayoutConstraint.activate([
            divider.topAnchor.constraint(equalTo: sourceImage.bottomAnchor, constant: verticalPadding),
            divider.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: horizontalPadding),
            divider.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -horizontalPadding),
            divider.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -verticalPadding),
            divider.heightAnchor.constraint(equalToConstant: 0.5)
        ])
    }
}

#Preview {
    let cell = ArticleCell()
    cell.set(article: NewsResponse.test.articles[8])
    
    return cell
}

/*
 Content hugging and compression resistance priorities aren’t “force” in the literal sense, but they do tell Auto Layout which view should yield (or not yield) when there’s not enough space.
     •    Content Hugging Priority determines how strongly a view resists growing larger than its intrinsic content size. A higher value means the view will “hug” its content more tightly and avoid stretching.
     •    Compression Resistance Priority indicates how strongly a view resists being made smaller than its intrinsic content size. A higher value means the view is less likely to shrink (or compress) its content.

 In a scenario with conflicting constraints, Auto Layout uses these priorities to decide which view gets compressed or expanded. So while they don’t force a view to a specific size, they do influence which view yields to accommodate others.
 */
