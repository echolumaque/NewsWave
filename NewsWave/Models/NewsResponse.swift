//
//  NewsResponse.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/13/25.
//

import Foundation

struct NewsResponse: Codable, Equatable {
    let articles: [Article]
    
    enum CodingKeys: String, CodingKey { case articles = "results" }
}

// MARK: - Result
struct Article: Codable, Equatable, Hashable {
    let articleId, title: String
    let link: String
    let keywords, creator: [String]?
    let videoUrl: String?
    let description: String?
    let content: String
    let pubDate: String
    let pubDateTZ: String
    let imageUrl: String?
    let sourceId: String
    let sourcePriority: Int
    let sourceName: String
    let sourceUrl: String
    let sourceIcon: String?
    let category: [NewsCategory]
    let duplicate: Bool
}

enum NewsCategory: String, CaseIterable, Codable {
    case business = "business"
    case crime = "crime"
    case domestic = "domestic"
    case education = "education"
    case entertainment = "entertainment"
    case environment = "environment"
    case food = "food"
    case health = "health"
    case lifestyle = "lifestyle"
    case other = "other"
    case politics = "politics"
    case science = "science"
    case sports = "sports"
    case technology = "technology"
    case top = "top"
    case tourism = "tourism"
    case world = "world"
}

extension NewsResponse {
    static let empty = NewsResponse(articles: [])
    static let test = NewsResponse(
        articles: [
            NewsWave.Article(
                articleId: "b407d2c5954dc1c3ccf946bc34f9eb85",
                title: "Pharmacist salaries in 2025: What you need to know before choosing this career",
                link: "https://www.thestreet.com/employment/pharmacist-salaries-job-duties-outlook",
                keywords: Optional(
                    [
                        "lifestyle news",
                        "health & wellness news",
                        "health",
                        "health insurance",
                        "jobs, employment and work news",
                        "evergreenseo",
                        "editorialevergreen"
                    ]
                ),
                creator: nil,
                videoUrl: nil,
                description: Optional(
                    "Studies find that patients actually see their pharmacists more frequently than their doctors; find out how much this critical healthcare profession makes in 2025—and how you can land a job."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "c",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://www.thestreet.com/.image/c_fit,h_800,w_1200/MjEzNDE2MDQzMzk2MjEyMTc1/gettyimages-1130947807.jpg"
                ),
                sourceId: "thestreet",
                sourcePriority: 975,
                sourceName: "Thestreet",
                sourceUrl: "https://www.thestreet.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/thestreet.png"
                ),
                category: [.top],
                duplicate: false
            ),
            NewsWave.Article(
                articleId: "63361a403aee23c35ab07b18ecb1ebdc",
                title: "Porter enters governor’s race",
                link: "https://www.davisenterprise.com/townnews/politics/porter-enters-governor-s-race/article_5b59bc60-ff65-11ef-9598-b3ac65ad48e9.html",
                keywords: nil,
                creator: Optional(
                    ["By Alexei Koseff, CalMatters"]
                ),
                videoUrl: nil,
                description: Optional(
                    "Katie Porter, the former Democratic congress member from Orange County who became a progressive star with her vigorous interrogations during committee hearings, is running for governor of California."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:13:00",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://bloximages.chicago2.vip.townnews.com/davisenterprise.com/content/tncms/assets/v3/editorial/6/65/6652838e-ff67-11ef-9a9a-370188d98842/67d1c49b66a8f.image.jpg?resize=300%2C200"
                ),
                sourceId: "davisenterprise",
                sourcePriority: 98093,
                sourceName: "Davis Enterprise",
                sourceUrl: "https://www.davisenterprise.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/davisenterprise.png"
                ),
                category: [.top],
                duplicate: false
            ),
            NewsWave.Article(
                articleId: "b5f457a953fab21ae59793b73bfa537d",
                title: "A&M volleyball team releases spring 2025 schedule",
                link: "https://theeagle.com/sports/college/aggiesports/volleyball/article_274e1dec-ff76-11ef-baa2-472dc8926342.html",
                keywords: nil,
                creator: Optional(
                    ["EAGLE STAFF REPORT"]
                ),
                videoUrl: nil,
                description: Optional(
                    "The Texas A&M volleyball team unveiled its 2025 spring volleyball slate on Wednesday."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:13:00",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://bloximages.chicago2.vip.townnews.com/theeagle.com/content/tncms/assets/v3/editorial/2/74/274e1dec-ff76-11ef-baa2-472dc8926342/67d1df0cef550.preview.jpg?crop=648%2C340%2C0%2C153"
                ),
                sourceId: "theeagle",
                sourcePriority: 64687,
                sourceName: "The Eagle",
                sourceUrl: "https://theeagle.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/theeagle.jpg"
                ),
                category: [.top],
                duplicate: false
            ),
            NewsWave.Article(
                articleId: "945f6c5d268e42f4d98da91b55dc541c",
                title: "Pharmacist salaries in 2025: What you need to know before choosing this career",
                link: "https://www.capjournal.com/arena/finance/pharmacist-salaries-in-2025-what-you-need-to-know-before-choosing-this-career/article_ffc2e0f2-591b-551f-9051-80ddb3fe451a.html",
                keywords: nil,
                creator: nil,
                videoUrl: nil,
                description: Optional(
                    "Studies find that patients actually see their pharmacists more frequently than their doctors; find out how much this critical healthcare profession makes in 2025—and how you can land a job."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:13:00",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://bloximages.chicago2.vip.townnews.com/capjournal.com/content/tncms/assets/v3/editorial/e/03/e037b711-53f9-55f5-b1bc-182eada6382f/67d1e26c9c383.image.jpg?resize=300%2C200"
                ),
                sourceId: "capjournal",
                sourcePriority: 123775,
                sourceName: "Capjournal",
                sourceUrl: "https://www.capjournal.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/capjournal.jpg"
                ),
                category: [.business],
                duplicate: true
            ),
            NewsWave.Article(
                articleId: "a6b111cd149ead754512ff77a21f962b",
                title: "Piedmont among top waters in international competition",
                link: "https://www.wvnews.com/mineralnews/piedmont-among-top-waters-in-international-competition/article_0b22e8aa-ff76-11ef-9590-d395a6338b0c.html",
                keywords: nil,
                creator: Optional(
                    ["by Liz Beavers News & Tribune Editor"]
                ),
                videoUrl: nil,
                description: Optional(
                    "PIEDMONT, W.Va. (WV News) - The City of Piedmont can now boast that they have one of the top municipal waters in the world."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:13:00",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://bloximages.chicago2.vip.townnews.com/wvnews.com/content/tncms/assets/v3/editorial/1/da/1da04b60-ff78-11ef-a55a-53b96255c1b7/67d1e042f3dc3.image.png?resize=300%2C457"
                ),
                sourceId: "wvnews",
                sourcePriority: 23920,
                sourceName: "Wv News",
                sourceUrl: "https://www.wvnews.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/wvnews.jpg"
                ),
                category: [.top],
                duplicate: false
            ),
            NewsWave.Article(
                articleId: "51c74fcea090c972d77a19087fd8ff02",
                title: "CAISSE FRANCAISE DE FINANCEMENT LOCAL EMTN 2025-6",
                link: "https://www.globenewswire.com/news-release/2025/03/12/3041701/0/en/CAISSE-FRANCAISE-DE-FINANCEMENT-LOCAL-EMTN-2025-6.html",
                keywords: Optional(
                    [
                        "fr001400y7l7",
                        "paris:99999999"
                    ]
                ),
                creator: nil,
                videoUrl: nil,
                description: Optional(
                    "Paris, 12 March 2025"
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:13:00",
                pubDateTZ: "UTC",
                imageUrl: nil,
                sourceId: "globenewswire",
                sourcePriority: 7268,
                sourceName: "Globe Newswire",
                sourceUrl: "https://www.globenewswire.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/globenewswire.jpg"
                ),
                category: [.business],
                duplicate: true
            ),
            NewsWave.Article(
                articleId: "31e6ffa9317d67aa27121775ca6227c6",
                title: "How Meg Ryan’s Son Jack Quaid Feels About Her Hollywood Comeback",
                link: "https://www.eonline.com/news/1414685/how-meg-ryans-son-jack-quaid-feels-about-her-hollywood-comeback",
                keywords: nil,
                creator: nil,
                videoUrl: nil,
                description: Optional(
                    "Jack Quaid is excited for the world to meet Meg Ryan...again. After the actress made a public appearance at the Oscars earlier this month with her When Harry Met Sally costar Billy Crystal—with..."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:13:00",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://akns-images.eonline.com/eol_images/Entire_Site/2024610/rs_1200x1200-240710143229-jack_quaid_meg_ryan.jpg?fit=around%7C660%3A660"
                ),
                sourceId: "eonline",
                sourcePriority: 3957,
                sourceName: "E! Online",
                sourceUrl: "http://www.eonline.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/eonline.png"
                ),
                category: [.entertainment],
                duplicate: false
            ),
            NewsWave.Article(
                articleId: "29ca7953beed0d7ee78abdd749710c21",
                title: "Arab states to keep talking with Trump envoy on Egypt\'s Gaza plan",
                link: "https://gazette.com/news/us-world/arab-states-to-keep-talking-with-trump-envoy-on-egypts-gaza-plan/article_aadb2bcd-88ce-53b8-a8da-66b805fd04a4.html",
                keywords: nil,
                creator: nil,
                videoUrl: nil,
                description: Optional(
                    "CAIRO (Reuters) - Arab foreign ministers said on Wednesday they would continue consultations with U.S. President Donald Trump\'s special envoy over Egypt\'s plan for rebuilding the Gaza Strip, an alternative to Trump\'s proposed takeover of the Palestinian territory."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:12:57",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://bloximages.newyork1.vip.townnews.com/gazette.com/content/tncms/assets/v3/editorial/4/ef/4efb0a15-3122-5221-b260-23ed14ee73e6/67d1de4170a3f.image.jpg?resize=400%2C266"
                ),
                sourceId: "gazette",
                sourcePriority: 9587,
                sourceName: "Gazette",
                sourceUrl: "https://gazette.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/gazette.png"
                ),
                category: [.world],
                duplicate: true
            ),
            NewsWave.Article(
                articleId: "dbcd8b644b877722a625e21eedf7cbf0",
                title: "‘Volatility and conflict\': Business leaders sound warnings over Trump\'s tariffs",
                link: "https://www.nbcphiladelphia.com/news/business/money-report/volatility-and-conflict-business-leaders-sound-warnings-over-trumps-tariffs/4132969/",
                keywords: Optional(
                    ["post"]
                ),
                creator: Optional(
                    ["Lucy Handley, CNBC"]
                ),
                videoUrl: nil,
                description: Optional(
                    "S&P 500 futures ticked higher Wednesday evening after the index posted a winning session in what has been a rocky week.Futures tied to the broad market index advanced 0.2%, while futures linked to the Dow Jones Industrial Average added 45 points, or 0.1%. Nasdaq 100 futures rose 0.2%.In extended trading, Intel popped about 10% after the company said it had appointed Lip-Bu Tan as its new CEO. Adobe slipped roughly 4% after forecasting weaker-than-expected earnings in the fiscal second quarter.In Wednesday’s regular trading, beleaguered tech stocks caught a bid as investors snapped up shares, lifting the Nasdaq Composite to a 1.2% gain and carrying the S&P 500 to a 0.5% advance. The tech sector was the top performer in the session, up nearly 1.6% as Nvidia and Palantir Technologies surged. The 30-stock Dow was an outlier, however, notching a third straight losing day and falling 0.2%.February’s reading of the consumer price index — a wide-ranging measure of costs across the U.S. economy — came in softer than expected. Headline inflation rose 0.2% from the prior month and 2.8% on an annual basis.The results may have eased traders’ concerns about the direction of the economy and the impact tariffs could have on inflation. Indeed, President Donald Trump’s steel and aluminum tariffs went into effect on Wednesday, and Canada slapped a 25% retaliatory levy on more than $20 billion of U.S. goods.Though market strategists have been watching for a technical bounce after the recent sell off, some say the latest inflation print likely isn’t enough to lead to a sizable rebound. Concerns over Trump’s trade policies remain a key hangover on investor sentiment, and they throw into question how the Federal Reserve may proceed on interest rates.“We still believe the next Fed rate move is lower, but it is hard to have high confidence with the impact of tariffs still uncertain,” said Scott Helfstein, Global X’s head of investment strategy. “The key question is whether tariffs will have a greater impact on growth or prices. In recent weeks, the rates market has signaled that weaker growth is the bigger concern with three cuts now being priced for this year.”Week to date, all three major averages are on pace for steep declines. The S&P 500 and Nasdaq are on track for losses of about 3%. The Dow is off 3.4% in the period, heading for its worst week since March 2023. The broad market index briefly dipped into correction territory on Tuesday, down 10% from a record set in February.A couple of key economic reports are due on Thursday, with weekly jobless claims and the February producer price index on deck.On the earnings front, Dollar General and Ulta Beauty are slated to report Thursday.Dan Niles says tech sell-off is driven by revenue estimates, not tariffsHedge fund manager Dan Niles believes megacap tech stocks were knocked down by concerns of revenue growth instead of tariffs. “It’s not the tariffs knocking these tech stocks down. It is the fact that revenue estimates were six out of the seven biggest in the Mag Seven all went down for Q1 after reporting Q4,” he said on CNBC’s “Closing Bell.”The founder of Niles Investment Management said he bought the dip in these beaten-down shares this week. Going into 2025, Niles named cash as a top pick for the first time since the market drop in 2022. He also didn’t recommend Mag Seven names in his top five picks.— Yun LiWe’ve largely seen a rotation rather than a selloff, strategist saysMuch of the recent market action can be contributed to an unwinding of investors’ positioning, according to Michael Green, chief strategist of Simplify Asset Management.“The really key thing that I would highlight is that rather than an outright sell-off, so far what we’ve seen is largely rotation,” he told CNBC in an interview. “There’s been a combination of money rotating out of the United States and into Europe, Japan, Canada. To a certain extent that’s contributed to the weakness in the dollar as that capital account money has returned to their home countries.”Green added: “That likely puts additional pressure on forward inflation trends, and so offset some of the benefits of the weaker economy. It also suggest that there may actually be more issues with inflation than we had anticipated.— Lisa Kailai HanAdobe, SentinelOne moving after market closeCheck out the companies making headlines in after-hours trading:Adobe — The software vendor’s shares slipped around 3% after the company issued an outlook for the fiscal second quarter that failed to impress investors. Adobe said revenue for the period would range between $4.27 billion and $4.30 billion, compared to the StreetAccount consensus estimate of $4.29 billion. Adjusted earnings are expected to land between $4.95 and $5 a share, while analysts sought $5 per share.American Eagle Outfitters — American Eagle issued weak guidance, leading shares about 5% lower. For the current quarter, the company expects to see a mid-single-digit decline in sales, while analysts polled by LSEG expected revenue to increase 1.3%. The company still beat on the bottom line and same-store sales came in ahead of expectations.SentinelOne — The cybersecurity stock declined about 15% after SentinelOne gave a disappointing revenue outlook, expecting first-quarter revenue to come out at $228 million, while analysts polled by LSEG had forecast $235 million. The company exceeded earnings and revenue expectations in its fourth quarter, however. For the full list, read here.— Pia SinghStock futures open little changedFutures tied to the S&P 500 dropped less than 0.1% shortly after 6 p.m. ET on Wednesday. Futures tied to the Dow Jones Industrial Average lost 19 points, or 0.05%, while Nasdaq 100 futures shed 0.1%.— Pia Singh"
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:12:56",
                pubDateTZ: "UTC",
                imageUrl: Optional(
                    "https://media.nbcphiladelphia.com/2025/03/108111007-17411428882025-03-05t024718z_970393539_rc2q6dapgzf5_rtrmadp_0_usa-trump-congress.jpeg?fit=1700%2C1000&quality=85&strip=all"
                ),
                sourceId: "nbcphiladelphia",
                sourcePriority: 16056,
                sourceName: "Nbc10 Philadelphia",
                sourceUrl: "https://www.nbcphiladelphia.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/nbcphiladelphia.png"
                ),
                category: [.business],
                duplicate: true
            ),
            NewsWave.Article(
                articleId: "9fe28d104b5dcafff2a39694b0106ac3",
                title: "XPLR INFRASTRUCTURE, LP (NYSE: XIFR) INVESTOR ALERT: Investors With Large Losses in XPLR ...",
                link: "https://www.enidnews.com/region/xplr-infrastructure-lp-nyse-xifr-investor-alert-investors-with-large-losses-in-xplr/article_52ac26e6-4de6-57e3-a0b3-3085e9eb4f83.html",
                keywords: nil,
                creator: Optional(
                    ["Bernstein Liebhard LLP - (GLOBE NEWSWIRE)"]
                ),
                videoUrl: nil,
                description: Optional(
                    "NEW YORK, March 12, 2025 (GLOBE NEWSWIRE) -- Bernstein Liebhard LLP announces that a shareholder has filed a securities class action lawsuit on behalf of investors (the “Class”) who purchased or acquired the securities of XPLR Infrastructure, LP (“XPLR” or..."
                ),
                content: "ONLY AVAILABLE IN PAID PLANS",
                pubDate: "2025-03-12 19:12:55",
                pubDateTZ: "UTC",
                imageUrl: nil,
                sourceId: "enidnews",
                sourcePriority: 39726,
                sourceName: "Enid News & Eagle",
                sourceUrl: "https://www.enidnews.com",
                sourceIcon: Optional(
                    "https://i.bytvi.com/domain_icons/enidnews.jpg"
                ),
                category: [.top],
                duplicate: false
            )
        ]
    )
}
