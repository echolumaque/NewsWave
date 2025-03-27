//
//  HeadlineResponse.swift
//  NewsWave
//
//  Created by Echo Lumaque on 3/14/25.
//

import Foundation

struct HeadlineResponse: Codable, Equatable, Hashable {
    let articles: [ArticleResponse]
}

struct ArticleResponse: Codable, Equatable, Hashable {
    let source: Source
    let author: String?
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?
    
    var computedId: String { "\(title) \(description ?? "empty")".sha256 }
}

struct Source: Codable, Equatable, Hashable {
    let id: String?
    let name: String
}

extension HeadlineResponse {
    static let empty = HeadlineResponse(articles: [])
    static let test = HeadlineResponse(
        articles: [
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Gizmodo.com"
                ),
                author: Optional(
                    "Mike Fazioli"
                ),
                title: "It’s Been Months Since the Apple AirPods Pro 2 Were This Inexpensive, Now Just $170 at Amazon",
                description: "The best AirPods yet come with state of the art hearing protection and spatial audio, and they\'re nearly $80 off their usual $249 price.",
                url: "https://gizmodo.com/its-been-months-since-the-apple-airpods-pro-2-were-this-inexpensive-now-just-170-at-amazon-2000575337",
                urlToImage: "https://gizmodo.com/app/uploads/2025/01/AirPods-2-Pro.jpg",
                publishedAt: "2025-03-13T16:20:52Z",
                content: "Did Black Friday or Amazon Prime Day 2025 come really early and nobody told us ahead of time? Unfortunately not, but nobody would fault you from suspecting as much based on this new Amazon sale on th… [+2550 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Gizmodo.com"
                ),
                author: Optional(
                    "Joe Tilleli"
                ),
                title: "Garmin Forerunner 55 GPS Running Watch Drops Below $150, Lowest Price Ever on Amazon",
                description: "Shave a quarter of the price off the Garmin Forerunner 55 GPS Running Watch for a limited time.",
                url: "https://gizmodo.com/garmin-forerunner-55-gps-running-watch-drops-below-150-lowest-price-ever-on-amazon-2000574996",
                urlToImage: "https://gizmodo.com/app/uploads/2025/03/GarminForerunner.jpg",
                publishedAt: "2025-03-13T14:55:40Z",
                content: "As an athlete, the most important tool you have at your disposal is data. A quality running watch is an important investment if youre trying to improve your speed and distance and build consistency a… [+2239 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "BBC News"
                ),
                author: nil,
                title: "Keep kids off Roblox if you\'re worried, its CEO tells parents",
                description: "The gaming platform is wildly popular, but has been rocked by allegations it exposes children to harmful content.",
                url: "https://www.bbc.com/news/articles/c5yrjkl7dd6o",
                urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/b91d/live/7b978670-fe88-11ef-ba65-31b72da71bce.jpg",
                publishedAt: "2025-03-13T06:06:12Z",
                content: "Zoe Kleinman &amp; Georgina HayesTechnology editor &amp; reporter\r\nRoblox has seen meteoric growth among young gamers\r\nParents who don\'t want their children on Roblox should not let them use it, the … [+6995 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Android Central"
                ),
                author: Optional(
                    "nandika.iyerravi@futurenet.com (Nandika Ravi)"
                ),
                title: "Google could be testing a \'new\' way to answer phone calls",
                description: "Google\'s Phone app could look a lot different as it tests out a nostalgic UI.",
                url: "https://www.androidcentral.com/apps-software/google-could-be-testing-a-new-way-to-answer-phone-calls",
                urlToImage: "https://cdn.mos.cms.futurecdn.net/qHshpn5qs4ELLiMrZFzLQG-1200-80.jpg",
                publishedAt: "2025-03-13T23:25:56Z",
                content: "What you need to know\r\n<ul><li>Google is said to be testing a new UI for incoming calls on its phone app.</li><li>An APK deep dive reveals that it might be ditching the usual swiping up and down mech… [+2608 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Android Central"
                ),
                author: Optional(
                    "jerry.hildenbrand@futurenet.com (Jerry Hildenbrand)"
                ),
                title: "Are 3nm or 4nm chips better than 5nm chips? Does size really matter?",
                description: "When it comes to electronics, smaller is usually better.",
                url: "https://www.androidcentral.com/phones/nanometers-explained-why-node-size-matters",
                urlToImage: "https://cdn.mos.cms.futurecdn.net/wpYAjw53tQHCKg4hXuhaWY-1200-80.jpg",
                publishedAt: "2025-03-13T15:21:14Z",
                content: "This is another year when every chip foundry reminds us that they can make 3nm or 4nm chips, and we\'re supposed to be excited that this technology is coming to the electronics we buy and use. But the… [+5005 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "MacRumors"
                ),
                author: Optional(
                    "Juli Clover"
                ),
                title: "Kuo: Cook Should Personally Address Siri Apple Intelligence Failure",
                description: "Apple made a major misstep with the way that it handled the delay of Apple Intelligence features for Siri, Apple analyst Ming-Chi Kuo said today. Announcing the delay through a press statement was a bad decision, and Apple should instead have gone through off…",
                url: "https://www.macrumors.com/2025/03/13/kuo-tim-cook-siri-apple-failure/",
                urlToImage: "https://images.macrumors.com/t/E2xFMSegpuYDB6sCT6_1vI991S8=/2500x/article-new/2025/03/Sad-Siri-Feature.jpg",
                publishedAt: "2025-03-13T23:02:04Z",
                content: "Apple made a major misstep with the way that it handled the delay of Apple Intelligence features for Siri, Apple analyst Ming-Chi Kuosaid today. Announcing the delay through a press statement was a b… [+2240 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "MacRumors"
                ),
                author: Optional(
                    "Joe Rossignol"
                ),
                title: "iPhone 16e Has a Bluetooth Audio Problem",
                description: "In the two weeks since the iPhone 16e launched, some early adopters of the device have experienced a Bluetooth audio issue.\n\n\n\n\n\nAccording to complaints from affected users across the Apple Support Community, Reddit, and X, audio being streamed from an iPhone…",
                url: "https://www.macrumors.com/2025/03/13/iphone-16e-bluetooth-audio-problem/",
                urlToImage: "https://images.macrumors.com/t/f72SVdhCqhlcw6zqJfq-WP3rBmk=/2500x/article-new/2025/02/iPhone-16e-Feature-1.jpg",
                publishedAt: "2025-03-13T20:18:58Z",
                content: "In the two weeks since the iPhone 16e launched, some early adopters of the device have experienced a Bluetooth audio issue.\r\nAccording to complaints from affected users across the Apple Support Commu… [+853 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "MacRumors"
                ),
                author: Optional(
                    "Juli Clover"
                ),
                title: "Kuo: Apple Knows Apple Intelligence is \'Underwhelming\' and Won\'t Drive iPhone Upgrades",
                description: "The Apple Intelligence features that Apple introduced with iOS 18 are not pushing people to upgrade their iPhones, Apple analyst Ming-Chi Kuo reiterated today. Apple\'s recent Siri failures are also going to have an impact on 2025 iPhone shipments, which the m…",
                url: "https://www.macrumors.com/2025/03/13/kuo-apple-intelligence-underwhelming/",
                urlToImage: "https://images.macrumors.com/t/E2xFMSegpuYDB6sCT6_1vI991S8=/2500x/article-new/2025/03/Sad-Siri-Feature.jpg",
                publishedAt: "2025-03-13T16:32:51Z",
                content: "The Apple Intelligence features that Apple introduced with iOS 18 are not pushing people to upgrade their iPhones, Apple analyst Ming-Chi Kuoreiterated today. Apple\'s recent Siri failures are also go… [+2212 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "MacRumors"
                ),
                author: Optional(
                    "Tim Hardwick"
                ),
                title: "Apple Announced Swift Assist at WWDC 2024... So Where Is It?",
                description: "At WWDC 2024, Apple announced Swift Assist, an AI-powered coding companion integrated into Xcode 16 that\'s designed to assist developers by generating code from natural language prompts. At the time, Apple said Swift Assist would be coming \"later this year.\" …",
                url: "https://www.macrumors.com/2025/03/13/apple-announced-swift-assist-wwdc24-so-where-is-it/",
                urlToImage: "https://images.macrumors.com/t/2KARD_eT7QF0p6j4_Oik82cISLg=/1920x/article-new/2025/03/swift-assist-xcode-16.jpg",
                publishedAt: "2025-03-13T12:33:24Z",
                content: "At WWDC 2024, Apple announced Swift Assist, an AI-powered coding companion integrated into Xcode 16 that\'s designed to assist developers by generating code from natural language prompts. At the time,… [+3555 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "MacRumors"
                ),
                author: Optional(
                    "Tim Hardwick"
                ),
                title: "UK Regulator Blames Apple for Stifling Mobile Browser Competition",
                description: "The UK\'s Competition and Markets Authority (CMA) has issued its final verdict on the state of the country\'s mobile browser market, concluding that Apple\'s policies are largely responsible for hampering competition and innovation.\n\n\n\n\n\nThe CMA\'s independent in…",
                url: "https://www.macrumors.com/2025/03/13/uk-watchdog-apple-poor-competition-mobile-browsers/",
                urlToImage: "https://images.macrumors.com/t/oNd60UHBH70Ze0PtFNPGSCa0cKQ=/1794x/article-new/2021/06/app-store-blue-banner-uk-fixed.jpg",
                publishedAt: "2025-03-13T10:56:15Z",
                content: "The UK\'s Competition and Markets Authority (CMA) has issued its final verdict on the state of the country\'s mobile browser market, concluding that Apple\'s policies are largely responsible for hamperi… [+2782 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Slashdot.org"
                ),
                author: Optional(
                    "msmash"
                ),
                title: "\'Something Is Rotten in the State of Cupertino\'",
                description: "Apple\'s announcement that \"more personalized Siri\" features of Apple Intelligence would be delayed until \"the coming year\" reveals a troubling departure from the company\'s hard-earned reputation for reliability, long-time commentator John Gruber writes. Unlik…",
                url: "https://apple.slashdot.org/story/25/03/13/1815207/something-is-rotten-in-the-state-of-cupertino",
                urlToImage: "https://a.fsdn.com/sd/topics/apple_64.png",
                publishedAt: "2025-03-13T18:14:00Z",
                content: "Apple\'s announcement that \"more personalized Siri\" features of Apple Intelligence would be delayed until \"the coming year\" reveals a troubling departure from the company\'s hard-earned reputation for … [+2607 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Slashdot.org"
                ),
                author: Optional(
                    "msmash"
                ),
                title: "Mozilla Warns DOJ\'s Google Remedies Risk \'Death of Open Web\'",
                description: "Mozilla has warned that the U.S. Department of Justice\'s proposed remedies in its antitrust case against Google would harm independent browsers and reduce competition in the browser market. The DOJ and several state attorneys general last week filed revised p…",
                url: "https://news.slashdot.org/story/25/03/13/1716227/mozilla-warns-dojs-google-remedies-risk-death-of-open-web",
                urlToImage: "https://a.fsdn.com/sd/topics/firefox_64.png",
                publishedAt: "2025-03-13T17:30:00Z",
                content: "Mozilla has warned that the U.S. Department of Justice\'s proposed remedies in its antitrust case against Google would harm independent browsers and reduce competition in the browser market. The DOJ a… [+1448 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: Optional(
                        "business-insider"
                    ),
                    name: "Business Insider"
                ),
                author: Optional(
                    "Alistair Barr"
                ),
                title: "Why Sam Altman is smiling: ChatGPT has suddenly kicked into a higher gear.",
                description: "ChatGPT\'s growth has soared, with 100 million new users in two months, making OpenAI a formidable competitor to Google in generative AI adoption.",
                url: "https://www.businessinsider.com/chatgpt-sam-altman-openai-apple-google-search-2025-3",
                urlToImage: "https://i.insider.com/67d1ce0169253ccddf990802?width=1200&format=jpeg",
                publishedAt: "2025-03-13T09:00:02Z",
                content: "OpenAI CEO Sam AltmanJOEL SAGET/AFP via Getty Images\r\nSam Altman has several reasons to smile these days.He welcomed his first child into the world recently, and the kid is learning to eat. You can\'t… [+2985 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: Optional(
                        "business-insider"
                    ),
                    name: "Business Insider"
                ),
                author: Optional(
                    "Rachel Hosie"
                ),
                title: "3 high-protein, high-fiber recipes that boost gut health and aren\'t ultra-processed — by a doctor who specializes in nutrition",
                description: "Instead of hitting his protein targets with ultra-processed shakes and bars or red meat, Dr. Rupy Aujla eats a 75% plant-based diet, which is high in fiber.",
                url: "https://www.businessinsider.com/high-protein-fiber-recipes-gut-health-avoid-ultra-processed-food-2025-3",
                urlToImage: "https://i.insider.com/67d2bb03b8b41a9673fa8111?width=1200&format=jpeg",
                publishedAt: "2025-03-13T11:50:47Z",
                content: "Dr. Rupy Aujla\'s favorite recipe in his new book is the salmon tikka bowls.Andrew Burton\r\n<ul><li>Dr. Rupy Aujla eats a high-protein \"plant-focused\" diet, meaning it\'s about 70% plant-based.</li><li>… [+9142 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Hipertextual"
                ),
                author: Optional(
                    "Rubén Chicharro"
                ),
                title: "Google Maps y Waze cambian para siempre en el iPhone: la nueva función es una bendición",
                description: "iOS 18.4 cuenta con múltiples novedades para los usuarios europeos, como la activación de Apple Intelligence para los iPhone compatibles. Pero los usuarios también percibirán una pequeña novedad cuando actualicen a esta próxima versión, cuyo lanzamiento está …",
                url: "http://hipertextual.com/2025/03/google-maps-y-waze-cambian-para-siempre-en-el-iphone-la-nueva-funcion-es-una-bendicion",
                urlToImage: "https://imgs.hipertextual.com/wp-content/uploads/2023/07/google-maps.jpg",
                publishedAt: "2025-03-13T11:31:11Z",
                content: "iOS 18.4 cuenta con múltiples novedades para los usuarios europeos, como la activación de Apple Intelligence para los iPhone compatibles. Pero los usuarios también percibirán una pequeña novedad cuan… [+2124 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Hipertextual"
                ),
                author: Optional(
                    "Gabriel Erard"
                ),
                title: "Android 16 copiará una de las funciones de IA más polémicas de iOS 18",
                description: "Google acaba de lanzar la tercera beta de Android 16, que incluye indicios de que el sistema operativo podría incorporar una función de inteligencia artificial muy similar a una que ha causado tremenda polémica en iOS 18. Nos referimos, por supuesto, a los re…",
                url: "http://hipertextual.com/2025/03/android-16-tendra-resumenes-de-notificaciones-como-los-de-ios",
                urlToImage: "https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2025/03/daniel-romero-TbLdLyigPj4-unsplash-scaled.jpg?fit=2560%2C1434&quality=70&strip=all&ssl=1",
                publishedAt: "2025-03-13T20:33:00Z",
                content: "Google acaba de lanzar la tercera beta de Android 16, que incluye indicios de que el sistema operativo podría incorporar una función de inteligencia artificial muy similar a una que ha causado tremen… [+3358 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Hipertextual"
                ),
                author: Optional(
                    "Gabriel Erard"
                ),
                title: "Los AirPods podrán traducir conversaciones en tiempo real muy pronto",
                description: "Este año los AirPods van a sumar una característica que promete ser de gran utilidad, en especial para quienes viajan regularmente por el mundo o están todo el tiempo en contacto con personas que no hablan su mismo idioma. Se trata de una función que, apoyánd…",
                url: "http://hipertextual.com/2025/03/los-airpods-podran-traducir-conversaciones-en-tiempo-real",
                urlToImage: "https://imgs.hipertextual.com/wp-content/uploads/2021/10/AirPods-3-6-scaled.jpg",
                publishedAt: "2025-03-13T21:07:30Z",
                content: "Este año los AirPods van a sumar una característica que promete ser de gran utilidad, en especial para quienes viajan regularmente por el mundo o están todo el tiempo en contacto con personas que no … [+2731 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Hipertextual"
                ),
                author: Optional(
                    "Gabriel Erard"
                ),
                title: "Mira el imperdible tráiler de ‘Black Mirror’, temporada 7, que tiene fecha de estreno confirmada",
                description: "La séptima temporada de Black Mirror tiene nuevo tráiler y fecha de estreno confirmada. La aclamada serie regresará muy pronto a Netflix, con 6 episodios que prometen dar de qué hablar. Si bien se sabía que uno de los capítulos serviría como secuela de USS Ca…",
                url: "http://hipertextual.com/2025/03/black-mirror-temporada-7-tiene-nuevo-trailer-y-fecha-de-estreno",
                urlToImage: "https://imgs.hipertextual.com/wp-content/uploads/2025/03/Black-Mirror-7-scaled.jpg",
                publishedAt: "2025-03-13T18:06:46Z",
                content: "La séptima temporada de Black Mirror tiene nuevo tráiler y fecha de estreno confirmada. La aclamada serie regresará muy pronto a Netflix, con 6 episodios que prometen dar de qué hablar. Si bien se sa… [+1493 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: Optional(
                        "cnn"
                    ),
                    name: "CNN"
                ),
                author: Optional(
                    "John Liu and Wayne Chang, CNN"
                ),
                title: "Fear and resignation after ‘world’s most powerful company’ pays Trump a $100 billion ‘protection fee’",
                description: "It was a surprise ceremony at the White House presided over by President Donald Trump to unveil a $100 billion investment from what he called the world’s...",
                url: "https://www.cnn.com/2025/03/13/tech/taiwan-tsmc-us-investment-reactions-intl-hnk?cid=external-feeds_iluminar_yahoo",
                urlToImage: "https://media.zenfs.com/en/cnn_business_articles_218/59ee6873a5e52a79162d0d9a33c444a4",
                publishedAt: "2025-03-13T22:00:52Z",
                content: "It was a surprise ceremony at the White House presided over by President Donald Trump to unveil a $100 billion investment from what he called the worlds most powerful company, Taiwan Semiconductor Ma… [+9561 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Slate Magazine"
                ),
                author: Optional(
                    "Lucy Lopez, Jamilah Lemieux, and Elizabeth Newcamp"
                ),
                title: "Should I Keep My Kid’s Secrets?",
                description: "Plus: sick days, travel days, and stealing the hair product.",
                url: "https://slate.com/podcasts/care-and-feeding/2025/03/secrets-slates-parenting-podcast",
                urlToImage: "https://compote.slate.com/images/dedc67f4-d7a9-4344-814b-d6a49606890a.jpeg?crop=1457%2C971%2Cx0%2Cy2&width=1560",
                publishedAt: "2025-03-13T18:00:00Z",
                content: "On this episode: Elizabeth, Lucy and Jamilah talk about secrets. A member of our Facebook community recently asked how you should handle it when a kid confides in you and asks you not to tell your co… [+834 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Xataka.com"
                ),
                author: Optional(
                    "Ricardo Aguilar"
                ),
                title: "El Chromecast con Google TV es la prueba de un absurdo: la obsesión de la industria con las actualizaciones anuales",
                description: "Ciclos de un año. Los fabricantes están obsesionados con esto. En Xataka ya hemos planteado que, tal y como están dejando de innovar los teléfonos y cómo aumenta su ciclo de vida, quizás es hora de plantearse ciclos de actualización bianuales.\n<!-- BREAK 1 --…",
                url: "https://www.xataka.com/aplicaciones/chromecast-google-tv-prueba-absurdo-obsesion-industria-actualizaciones-anuales",
                urlToImage: "https://i.blogs.es/6e605a/1366_2000/840_560.jpeg",
                publishedAt: "2025-03-13T15:00:43Z",
                content: "Ciclos de un año. Los fabricantes están obsesionados con esto. En Xataka ya hemos planteado que, tal y como están dejando de innovar los teléfonos y cómo aumenta su ciclo de vida, quizás es hora de p… [+2425 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Xataka.com"
                ),
                author: Optional(
                    "Ricardo Aguilar"
                ),
                title: "Samsung está perdiendo dinero con sus procesadores Exynos. Nadie sabe cuál será su plan de choque",
                description: "Samsung Electronics tiene un problema con su división LSI (Large Scale Integration) System. Esta, encargada del diseño y desarrollo de chip y soluciones de semiconductores, es la que hay detrás de los procesadores, sensores y circuitos integrados en los disti…",
                url: "https://www.xataka.com/componentes/samsung-esta-perdiendo-dinero-sus-procesadores-exynos-nadie-sabe-cual-sera-su-plan-choque",
                urlToImage: "https://i.blogs.es/fb5245/1200_800/840_560.jpeg",
                publishedAt: "2025-03-13T11:00:42Z",
                content: "Samsung Electronics tiene un problema con su división LSI (Large Scale Integration) System. Esta, encargada del diseño y desarrollo de chip y soluciones de semiconductores, es la que hay detrás de lo… [+3202 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Xataka.com"
                ),
                author: Optional(
                    "Javier Pastor"
                ),
                title: "Quién es Lip-Bu Tan, el nuevo CEO de Intel: un cambio radical respecto a su predecesor que apunta a más despidos",
                description: "A Lip-Bu Tan un accidente nuclear le cambió la vida. Fue un alumno prodigioso, y tras licenciarse en Física con tan solo 19 años en la Universidad Nanyang de Singapur, completó un máster en ingeniería nuclear en el MIT. Ese parecía ser su camino, pero en 1979…",
                url: "https://www.xataka.com/empresas-y-economia/quien-lip-bu-nuevo-ceo-intel-sus-diferencias-gelsinger-dan-muchas-pistas-futuro-compania",
                urlToImage: "https://i.blogs.es/dac079/tan-intel/840_560.jpeg",
                publishedAt: "2025-03-13T10:00:43Z",
                content: "A Lip-Bu Tan un accidente nuclear le cambió la vida. Fue un alumno prodigioso, y tras licenciarse en Física con tan solo 19 años en la Universidad Nanyang de Singapur, completó un máster en ingenierí… [+4092 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Xataka.com"
                ),
                author: Optional(
                    "John Tones"
                ),
                title: "\'Mickey 17\' arranca con un tropiezo el 2025 de Warner: un año en el que la compañía va a tomar más riesgos que nunca",
                description: "Lo que sería una recaudación competente para cualquier otra película, en el caso de \'Mickey 17\' se ha convertido en sentencia de un futuro oscuro: 19 millones de dólares en Estados Unidos frente a los 118 (sin contar gastos de marketing y distribución) que ha…",
                url: "https://www.xataka.com/cine-y-tv/mickey-17-arranca-tropiezo-2025-warner-ano-que-compania-va-a-tomar-riesgos-que-nunca",
                urlToImage: "https://i.blogs.es/dc0263/captura-de-pantalla-2025-03-13-a-las-13.48.15/840_560.jpeg",
                publishedAt: "2025-03-13T19:30:42Z",
                content: "Lo que sería una recaudación competente para cualquier otra película, en el caso de \'Mickey 17\' se ha convertido en sentencia de un futuro oscuro: 19 millones de dólares en Estados Unidos frente a lo… [+4156 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Xataka.com"
                ),
                author: Optional(
                    "Javier Lacort"
                ),
                title: "La policía belga detiene a representantes de Huawei por presunta corrupción en la Eurocámara. La UE investiga la trama china",
                description: "La policía belga ha efectuado registros en la sede europea de Huawei en Bruselas y ha detenido a varios de sus lobistas por presunta corrupción de eurodiputados, según avanza Reuters.\n<!-- BREAK 1 -->\n¿Qué ha ocurrido? La Fiscalía belga ha desplegado un cente…",
                url: "https://www.xataka.com/empresas-y-economia/policia-belga-detiene-a-representantes-huawei-presunta-corrupcion-eurocamara-ue-investiga-trama-china",
                urlToImage: "https://i.blogs.es/f78c02/parlamento-europeo/840_560.jpeg",
                publishedAt: "2025-03-13T16:51:48Z",
                content: "La policía belga ha efectuado registros en la sede europea de Huawei en Bruselas y ha detenido a varios de sus lobistas por presunta corrupción de eurodiputados, según avanza Reuters.\r\n¿Qué ha ocurri… [+2612 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Nadeem Sarwar"
                ),
                title: "Apple might arm AirPods with live translation facility this year",
                description: "Apple is reportedly preparing a new feature as part of the iOS 19 update that will allow the AirPods to perform real-time language translation.",
                url: "https://www.digitaltrends.com/home-theater/apple-airpods-earbuds-real-time-language-translation-feature-report/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2024/10/apple-airpods-4-review-00018.jpeg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T21:12:55Z",
                content: "Table of Contents\r\nTable of Contents\r\nHow it works?\r\nApple is late to the game\r\nApple has lately focused on giving the AirPods more of a wellness-focused makeover than hawking them as plain wireless … [+2969 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Bryan M. Wolfe"
                ),
                title: "There’s a new way to listen to Apple Music Classical, plus brand new music",
                description: "You can now listen to your favorite Apple Music Classical content from the web, as it expands beyond the app.",
                url: "https://www.digitaltrends.com/home-theater/new-way-to-listen-to-apple-music-classical/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/03/apple-music-classical-on-web_d19dc3.jpeg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T16:37:12Z",
                content: "If you’re a classical music lover, there’s excellent news. You no longer need an app to listen to Apple Music Classical. The service is now also available directly through the web, making it availabl… [+1823 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Dan Girolamo"
                ),
                title: "Brad Pitt gets a shot at redemption in Apple’s F1 trailer",
                description: "Apple Original Films released the latest action-packed trailer for F1, the sports action movie starring Brad Pitt.",
                url: "https://www.digitaltrends.com/movies/f1-trailer-brad-pitt-apple-movie/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/03/brad-pitt-f1.jpg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T20:05:51Z",
                content: "Apple Original Films has revealed the latest trailer for F1, a new action movie starring Brad Pitt.\r\nIn the racing world, Sonny Hayes (Pitt) is considered the “best that never was.” An accident on th… [+1524 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Georgina Torbet"
                ),
                title: "Apple and Google under more scrutiny, this time for mobile browser dominance",
                description: "A UK antitrust body has criticized Apple and Google\'s dominance over the mobile browser market, saying that it is holding back innovation.",
                url: "https://www.digitaltrends.com/mobile/apple-google-mobile-browsers-dominance-report/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/01/oneplus-13-browser.jpg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T12:03:13Z",
                content: "A report from a UK antitrust body, the Competition and Markets Authority (CMA), has found that Apple and Google have such dominance over the mobile browser market that it is harming users who could b… [+2116 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Alex Blake"
                ),
                title: "The $14,000 Mac Studio is wildly expensive — but don’t tell me it’s overpriced",
                description: "Apple products can be expensive, as the $14,000 Mac Studio shows. But are they overpriced? You might be surprised to learn that they’re often a real bargain.",
                url: "https://www.digitaltrends.com/computing/apple-mac-studio-is-expensive-but-not-overpriced/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/03/apple-mac-studio-2025-featured-e1741666429342.jpg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T17:54:38Z",
                content: "Table of Contents\r\nTable of Contents\r\nThe $14,000 bargain\r\nPriced to perform\r\nIt’s received wisdom among a certain set of people that even the best Apple products are criminally overpriced. According… [+4026 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Bryan M. Wolfe"
                ),
                title: "OnePlus Pad 2 Pro could take on iPad Pro, as new specs surface",
                description: "If you want a high-performance tablet, consider the Apple iPad Pro or the upcoming OnePlus Pad 2 Pro, launching soon.",
                url: "https://www.digitaltrends.com/mobile/oneplus-pad-pro-2-could-take-on-ipad-pro-as-new-specs-surface/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2024/08/One-plus-pad-2-side-.jpeg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T13:50:21Z",
                content: "If you’re looking for a high-performance tablet, you have two options: the Apple iPad Pro or the upcoming OnePlus Pad 2 Pro. The latter is expected to launch as a beefier version of the OnePlus Pad 2… [+1754 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Nadeem Sarwar"
                ),
                title: "Sonos said to have nixed streaming box that could rival Apple",
                description: "Sonos was reportedly working on a streaming box with a bespoke interface, HDMI passthrough facility, and surround sound architecture, but the idea is now dead.",
                url: "https://www.digitaltrends.com/home-theater/sonos-streaming-video-box-canceled-project-report/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2024/02/sonos-tv-remote-patent-app.jpeg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T04:56:53Z",
                content: "Sonos has had a rough few months lately. In the wake of a botched app makeover and top leadership changes, it seems a few product plans have also been axed. The company was reportedly developing a st… [+2206 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "John Alexander"
                ),
                title: "Thinking Garmin for your next smartwatch? This Forerunner is on sale",
                description: "The Garmin Forerunner 265 is $50 off today, making it just $400. This smartwatch has serious battery life and both the big and small \"265S\" are on sale today.",
                url: "https://www.digitaltrends.com/mobile/garmin-forerunner-265-deal-march-2025/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2023/03/Garmin-Forerunner-265.jpg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T22:28:58Z",
                content: "If you’re wanting to get fit and track your stats, a smartwatch is the way to go. However, they can be expensive, and their stereotypically short battery lives can make them a little annoying. This d… [+2093 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Britta O\'Boyle"
                ),
                title: "iPhone 17 Slim will be thin, but not Apple’s slimmest",
                description: "There’s been a lot of chatter surrounding a slimmer model of the iPhone 17 of late. The device has been the subject of the rumour mill for months, going by both the iPhone 17 Slim and the iPhone 17 Air in reports, with neither name confirmed of course.  The l…",
                url: "https://www.digitaltrends.com/mobile/iphone-17-slim-will-be-thin-but-not-apples-slimmest/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/03/iphone-17-air-sides-2.jpg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T14:08:29Z",
                content: "There’s been a lot of chatter surrounding a slimmer model of the iPhone 17 of late. The device has been the subject of the rumour mill for months, going by both the iPhone 17 Slim and the iPhone 17 A… [+1866 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Michael Bizzaco"
                ),
                title: "Samsung’s ultra-slim soundbar just got a $250 price cut",
                description: "The Samsung HW-S800 Ultra-slim Soundbar is on sale. Designed to mount or sit below your TV, you’ll wish you invested in this audio upgrade years ago!",
                url: "https://www.digitaltrends.com/home-theater/samsung-hw-s800d-soundbar-deal-samsung-march-2025/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/01/samsung-hw-s800d-soundbar-lifestyle-1.jpg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T18:27:04Z",
                content: "Have you been on the lookout for a great soundbar discount? Brands like Samsung are always offering markdowns on top AV devices, including this week. We’re not sure how long this sale is going to las… [+1421 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Stephen Edelstein"
                ),
                title: "Mercedes-Benz CLA EV is a small car ushering in big tech updates",
                description: "The 2026 Mercedes-Benz CLA may be an entry-level model, but it\'s leading the way with new tech and EV hardware improvements.",
                url: "https://www.digitaltrends.com/cars/2026-mercedes-benz-cla-ev-preview/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/03/25C0035_003.jpeg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T18:00:26Z",
                content: "Table of Contents\r\nTable of Contents\r\nDesign rethink\r\nA holistic approach to EV engineering\r\nDifferent packaging parameters\r\nFresh display and OS\r\nApps aplenty\r\nSmall car, big change\r\nMercedes-Benz i… [+10819 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Digital Trends"
                ),
                author: Optional(
                    "Caleb Denison"
                ),
                title: "Is this TV the real “OLED Killer”?",
                description: "Hisense debuted the first RGB mini-LED at CES, but Sony has now shown us its spremely impressive prototype version.",
                url: "https://www.digitaltrends.com/home-theater/is-this-tv-the-real-oled-killer-sony-rgb-mini-led/",
                urlToImage: "https://www.digitaltrends.com/wp-content/uploads/2025/03/Pure-Color-RGB-LED.jpg?resize=1200%2C630&p=1",
                publishedAt: "2025-03-13T16:00:02Z",
                content: "Table of Contents\r\nTable of Contents\r\nWhat is mini-LED?\r\nThe white light conundrum\r\nThe RGB future is here\r\nSony’s magic recipe?\r\nThe race is on\r\nI don’t like the term “OLED Killer.” It’s been beaten… [+8720 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "The Atlantic"
                ),
                author: Optional(
                    "Claudine Ebeid"
                ),
                title: "Water Is Not Political",
                description: "Gaza is struggling to keep clean water flowing.",
                url: "https://www.theatlantic.com/politics/archive/2025/03/water-is-not-political/682016/",
                urlToImage: "https://cdn.theatlantic.com/thumbor/oeEPp2_xGs_9rjoaB2ICPtD9XS4=/0x85:3994x2165/1200x625/media/img/mt/2025/03/2025_03_11_RA_AZ/original.jpg",
                publishedAt: "2025-03-13T10:00:00Z",
                content: "Subscribe here: Apple Podcasts | Spotify | YouTube | Overcast | Pocket Casts\r\nThe ongoing stalemate over extending a cease-fire between Israel and Hamas has 2 million people still trapped in the rubb… [+16570 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: Optional(
                        "hacker-news"
                    ),
                    name: "Hacker News"
                ),
                author: nil,
                title: "Spark AI (YC W24) Is Hiring a Full-Stack Engineer in San Francisco",
                description: "About Spark\nSpark (https://sparkhq.ai/) is building an advanced AI research tool that helps energy developers build solar farms and battery plants.\nOne of the biggest challenges in renewable energy is not construction — it’s navigating local regulations. We b…",
                url: "https://www.ycombinator.com/companies/spark/jobs/kDeJlPK-software-engineer-full-stack",
                urlToImage: "https://www.ycombinator.com/images/original/missing.png",
                publishedAt: "2025-03-13T17:00:26Z",
                content: "About Spark\r\nSpark is building an advanced AI research tool that helps energy developers build solar farms and battery plants.\r\nOne of the biggest challenges in renewable energy is not construction i… [+2775 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "heise online"
                ),
                author: Optional(
                    "Malte Kirchner"
                ),
                title: "#heiseshow: Freedom Cities, Siri-LLM, KI und die Gesellschaft",
                description: "Tech-Milliardäre träumen von Städten ohne Regeln, Apple verschiebt KI-Pläne für Siri und eine Studie zeigt die wachsende Kluft bei KI-Nutzung.",
                url: "https://www.heise.de/news/heiseshow-Freedom-Cities-Siri-LLM-KI-und-die-Gesellschaft-10313911.html",
                urlToImage: "https://heise.cloudimg.io/bound/1200x1200/q85.png-lossy-85.webp-lossy-85.foil1/_www-heise-de_/imgs/18/4/8/1/7/8/8/5/hs_thumb_25kw11-91f4c91c585ecad4.jpg",
                publishedAt: "2025-03-13T05:11:00Z",
                content: "Anna Kalinowsky, heise-online-Chefredakteur Dr. Volker Zota und Malte Kirchner sprechen in dieser Ausgabe der #heiseshow unter anderem über folgende Themen:\r\n<ul><li>Big-Tech-Chefs wünschen sich Free… [+1903 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "heise online"
                ),
                author: Optional(
                    "Benjamin Kraft"
                ),
                title: "heise+ | Mac mini mit SSD-Modul auf 2 TByte aufrüsten",
                description: "Der Mac mini M4 ist sauschnell, hat aber eine winzige SSD. Anstatt Apples Mondpreise für mehr Speicherplatz zu zahlen, erweitert man den einfach selbst.",
                url: "https://www.heise.de/ratgeber/Mac-mini-mit-SSD-Modul-auf-2-TByte-aufruesten-10296820.html?wt_mc=rss.red.ho.ho.atom.beitrag_plus.beitrag_plus",
                urlToImage: "https://heise.cloudimg.io/bound/1200x1200/q85.png-lossy-85.webp-lossy-85.foil1/_www-heise-de_/imgs/18/4/8/0/8/8/7/3/493a477b74c4ce7f0c4ef3aaea3e2391527830d58a9ae90a30fd18e647e8e012-3274680dca5df51e.jpg",
                publishedAt: "2025-03-13T09:00:00Z",
                content: "Inhaltsverzeichnis\r\nMit dem Mac mini der M4-Generation ist Apple ein großer Wurf gelungen: Er ist bereits in der einfachsten Ausführung für 700 Euro ein Geschoss, das in der Singlethreading-Leistung … [+1835 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "heise online"
                ),
                author: Optional(
                    "Frank Schräer"
                ),
                title: "Donnerstag: Facebooks Live-Videos als Zeitgeschichte, iRobot mit Selbstzweifeln",
                description: "Journalisten gegen Facebooks Video-Löschungen + Sorgen beim Roomba-Hersteller + Intel mit neuem Chef + Bürgerrechtler gegen BND-Bundestrojaner + #heiseshow",
                url: "https://www.heise.de/news/Donnerstag-Facebooks-Live-Videos-als-Zeitgeschichte-iRobot-mit-Selbstzweifeln-10314167.html",
                urlToImage: "https://heise.cloudimg.io/bound/1200x1200/q85.png-lossy-85.webp-lossy-85.foil1/_www-heise-de_/imgs/18/4/8/1/8/0/1/4/thursday-61dc57d0457129d8.webp",
                publishedAt: "2025-03-13T05:15:00Z",
                content: "Auf Facebook erstellte Live-Videos verschwinden seit dem 19. Februar nach 30 Tagen. Nur der jeweilige Uploader kann die Zeitdokumente sichern. Das bedauern Journalisten, deren zeitgeschichtliche Doku… [+7201 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Ben Lovejoy"
                ),
                title: "Apple commenter John Gruber launches blistering attack on ‘rotten’ Apple over Siri vaporware",
                description: "John Gruber is one of the more high-profile Apple commenters, and generally takes a pretty upbeat view of the company, so it was a big surprise to see him launch a blistering attack on the iPhone maker.\n\n\n\nReferring to Apple advertising Siri features which do…",
                url: "https://9to5mac.com/2025/03/13/apple-commenter-john-gruber-launches-blistering-attack-on-rotten-apple-over-siri-vaporware/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/03/Apple-commenter-John-Gruber-launches-blistering-attack-on-rotton-Apple-over-Siri-vaporware.webp?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T11:28:49Z",
                content: "John Gruber is one of the more high-profile Apple commenters, and generally takes a pretty upbeat view of the company, so it was a big surprise to see him launch a blistering attack on the iPhone mak… [+5287 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Chance Miller"
                ),
                title: "Apple Music Classical expands to the web",
                description: "After expanding to CarPlay a few months ago, Apple Music Classical has hit yet another new platform. Starting today, you can access Apple Music Classical on the web for the first time. \n\n\n\n more…",
                url: "https://9to5mac.com/2025/03/13/apple-music-classical-expands-to-the-web/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/03/apple-music-classical.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T15:31:21Z",
                content: "After expanding to CarPlay a few months ago, Apple Music Classical has hit yet another new platform. Starting today, you can access Apple Music Classical on the web for the first time. \r\nIn today’s a… [+1749 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Ryan Christoffel"
                ),
                title: "Brad Pitt races F1 in Apple TV+ summer blockbuster, here’s the trailer",
                description: "Apple TV+ has recently gotten in the habit of sending movies straight to streaming, but this summer, Apple has a big-budget blockbuster coming to theaters: F1. Now the official trailer has just debuted.\n\n\n\n more…",
                url: "https://9to5mac.com/2025/03/13/brad-pitt-races-f1-in-apple-tv-summer-blockbuster-heres-the-trailer/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/03/f1-poster-apple-tv.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T19:14:31Z",
                content: "Apple TV+ has recently gotten in the habit of sending movies straight to streaming, but this summer, Apple has a big-budget blockbuster coming to theaters: F1. Now the official trailer has just debut… [+1885 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Ryan Christoffel"
                ),
                title: "Apple’s next best move could be an in-person WWDC keynote",
                description: "Apple’s software and AI divisions have had a riveting past week. After Apple officially delayed key Siri upgrades to an unspecified date in “the coming year,” the person who broke that news, John Gruber, wrote a scathing criticism of Apple titled, “Something …",
                url: "https://9to5mac.com/2025/03/13/apples-next-best-move-could-be-an-in-person-wwdc-keynote/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2022/06/craig-federighi-wwdc-2022-9to5mac.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T18:47:12Z",
                content: "Apples software and AI divisions have had a riveting past week. After Apple officially delayed key Siri upgrades to an unspecified date in the coming year, the person who broke that news, John Gruber… [+3597 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Ryan Christoffel"
                ),
                title: "Apple TV+ is about to face the biggest test of its HBO strategy yet",
                description: "The biggest Apple TV+ hit to date, Severance, is airing its season finale next week. Apple wants to keep all of its new subscribers who joined TV+ for Severance. And as part of doing that, its current HBO-inspired content strategy is about to be put to the te…",
                url: "https://9to5mac.com/2025/03/13/apple-tv-is-about-to-face-the-biggest-test-of-its-hbo-strategy-yet/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2024/05/apple-tv-generic.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T17:31:45Z",
                content: "The biggest Apple TV+ hit to date, Severance, is airing its season finale next week. Apple wants to keep all of its new subscribers who joined TV+ for Severance. And as part of doing that, its curren… [+3739 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Ryan Christoffel"
                ),
                title: "iOS 19 redesign will be a big risk for Apple, but here’s why it’s worth it",
                description: "Apple is reportedly planning for iOS 19 to introduce the biggest visual overhaul to the iPhone in over a decade. Here’s why a big iOS 19 redesign is a risky move, but one that could pay off nicely for Apple.\n\n\n\n more…",
                url: "https://9to5mac.com/2025/03/13/ios-19-redesign-will-be-a-big-risk-for-apple-but-heres-why-its-worth-it/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/01/iOS19-1.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T16:24:38Z",
                content: "Apple is reportedly planning for iOS 19 to introduce the biggest visual overhaul to the iPhone in over a decade. Heres why a big iOS 19 redesign is a risky move, but one that could pay off nicely for… [+3048 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Ryan Christoffel"
                ),
                title: "Rumor Replay: iOS 19 redesign, iPhone 17 Ultra hints, and more",
                description: "This is Rumor Replay, a weekly column at 9to5Mac offering a quick rundown of the most recent Apple product rumors, with analysis and commentary. Today: iOS 19’s major redesign, hints of an iPhone 17 Ultra, HomePad delays, and more. Here are this week’s Apple …",
                url: "https://9to5mac.com/2025/03/13/rumor-replay-ios-19-redesign-iphone-17-ultra-and-more/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/03/Rumor-Replay-iOS-19.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T19:50:47Z",
                content: "This is Rumor Replay, a weekly column at 9to5Mac offering a quick rundown of the most recent Apple product rumors, with analysis and commentary. Today: iOS 19s major redesign, hints of an iPhone 17 U… [+3477 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Ben Lovejoy"
                ),
                title: "UK competition regulator wants iPhone browser competition, but Apple not allowed to win [U]",
                description: "The UK competition watchdog has effectively told Apple that it must allow free and open competition between iPhone web browsers, but at the same time Safari cannot be better than its competitors.\n\n\n\nUpdate: The final report is now out, with no change to the C…",
                url: "https://9to5mac.com/2025/03/13/uk-competition-regulator-wants-iphone-browser-competition-but-apple-not-allowed-to-win/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/02/Apple-tells-competition-watchdog-it-cannot-give-developers-new-WebKit-features-for-free.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T11:33:44Z",
                content: "The UK competition watchdog has effectively told Apple that it must allow free and open competition between iPhone web browsers, but at the same time Safari cannot be better than its competitors.\r\nUp… [+2472 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Filipe Espósito"
                ),
                title: "Apple working on new live translation feature for AirPods with iOS 19",
                description: "We’re only three months away from the next WWDC, when Apple will unveil iOS 19. According to recent rumors, the update will be a big one, focusing on introducing a new design for the iPhone and iPad operating system. But it seems that Apple has other cards up…",
                url: "https://9to5mac.com/2025/03/13/live-translation-airpods-ios-19/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2024/11/Heartwarming-Apple-holiday-ad-showcases-AirPods-Pro-2-hearing-aid-feature.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T20:17:18Z",
                content: "We’re only three months away from the next WWDC, when Apple will unveil iOS 19. According to recent rumors, the update will be a big one, focusing on introducing a new design for the iPhone and iPad … [+1690 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Filipe Espósito"
                ),
                title: "Skich launches its game-focused App Marketplace for iOS users in the EU",
                description: "Since Apple allowed sideloading on iPhone and iPad in the EU through App Marketplaces, we’ve seen the rise of a few alternatives to Apple’s App Store. Now there’s another alternative app store coming, as Skich, a platform for discovering new mobile games, is …",
                url: "https://9to5mac.com/2025/03/13/skich-game-focused-app-marketplace-ios/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/03/Skich-game-app-marketplace.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T13:00:00Z",
                content: "Since Apple allowed sideloading on iPhone and iPad in the EU through App Marketplaces, we’ve seen the rise of a few alternatives to Apple’s App Store. Now there’s another alternative app store coming… [+1477 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Justin Kahn"
                ),
                title: "Deals: 24GB M4 Pro MacBook Pro $220 off, M4 iPad Pro $300 off, M4 Mac mini, Satechi 15W charging stations 30% off, more",
                description: "The first cash deals on the brand-new M4 MacBook Air carry on at Amazon, but we have a fresh batch of deals today starting with the best price of the year on Apple’s most affordable M4 Pro MacBook Pro with 24GB of RAM – it is $220 off the list price. Next up,…",
                url: "https://9to5mac.com/2025/03/13/deals-m4-pro-macbook-pro-ipad-pro-mac-mini/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2025/03/Apple-deals-MagSafe-stand-Mac-mini-M4.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T15:45:02Z",
                content: "The first cash deals on the brand-new M4 MacBook Air carry on at Amazon, but we have a fresh batch of deals today starting with the best price of the year on Apples most affordable M4 Pro MacBook Pro… [+6328 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Chance Miller"
                ),
                title: "AI Siri features delayed indefinitely, iOS 19 redesign rumors, foldable iPhone in 2026",
                description: "Benjamin and Chance react to the disappointing news that Apple officially delayed the ambitious AI Siri features indefinitely, and what the ramifications are on Apple’s product line in the near term. Meanwhile, Bloomberg reports Apple is preparing the biggest…",
                url: "https://9to5mac.com/2025/03/13/happy-hour-529/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2024/02/9to5mac-happy-hour-lead1.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T18:40:10Z",
                content: "Benjamin and Chance react to the disappointing news that Apple officially delayed the ambitious AI Siri features indefinitely, and what the ramifications are on Apples product line in the near term. … [+884 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "9to5Mac"
                ),
                author: Optional(
                    "Seth Kurkowski"
                ),
                title: "9to5Mac Daily: March 13, 2025 – iPhone 17 cooling, more",
                description: "Listen to a recap of the top stories of the day from 9to5Mac. 9to5Mac Daily is available on iTunes and Apple’s Podcasts app, Stitcher, TuneIn, Google Play, or through our dedicated RSS feed for Overcast and other podcast players.\n\n\n\nSupported by Setapp: Get a…",
                url: "https://9to5mac.com/2025/03/13/daily-march-13-2025/",
                urlToImage: "https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2021/12/9to5Mac-Daily-art-lead.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1",
                publishedAt: "2025-03-13T16:13:59Z",
                content: "Listen to a recap of the top stories of the day from 9to5Mac. 9to5Mac Daily is available on iTunes and Apples Podcasts app, Stitcher, TuneIn, Google Play, or through our dedicated RSS feed for Overca… [+856 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Android Police"
                ),
                author: Optional(
                    "Will Sattelberg"
                ),
                title: "Android 16 could get one of Apple Intelligence\'s worst features",
                description: "Android 16 Beta 3 is hinting at Google\'s take on notification summaries, and we can\'t say we aren\'t a little nervous",
                url: "https://www.androidpolice.com/android-16-beta-3-notification-summaries/",
                urlToImage: "https://static1.anpoimages.com/wordpress/wp-content/uploads/wm/2024/05/google-pixel-8-notifications-2.jpg",
                publishedAt: "2025-03-13T20:55:12Z",
                content: "Summary\r\n<ul><li>\r\n Android 16 Beta 3 is hiding strings of code that point towards notification summaries.\r\n </li><li>\r\n It would include options to exclude apps and disable notifications, catering t… [+3219 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Genbeta.com"
                ),
                author: Optional(
                    "Antonio Vallejo"
                ),
                title: "Si tienes Firefox, más te vale actualizar antes del viernes: este problema puede hacer que tus extensiones fallen",
                description: "Malas noticias si estás ejecutando una versión antigua de Mozilla Firefox. El navegador posee un grave problema que afecta a la versión 128 y anteriores. Según sus responsables, si el usuario no actualiza antes del viernes, podría tener riesgo de que sus exte…",
                url: "https://www.genbeta.com/actualidad/tienes-firefox-te-vale-actualizar-antes-viernes-este-problema-puede-hacer-que-tus-extensiones-fallen",
                urlToImage: "https://i.blogs.es/cc441e/original/840_560.jpeg",
                publishedAt: "2025-03-13T12:08:32Z",
                content: "Malas noticias si estás ejecutando una versión antigua de Mozilla Firefox. El navegador posee un grave problema que afecta a la versión 128 y anteriores. Según sus responsables, si el usuario no actu… [+3779 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Tim.blog"
                ),
                author: Optional(
                    "Tim Ferriss"
                ),
                title: "Richard Taylor and Greg Broadmore, Wētā Workshop — Untapping Creativity, Stories from The Lord of the Rings, The Magic of New Zealand, Four Tenets to Live By, and The Only Sentence of Self-Help You Need (#799)",
                description: "Interview with Richard Taylor and Greg Broadmore of Wētā Workshop\nThe post Richard Taylor and Greg Broadmore, Wētā Workshop — Untapping Creativity, Stories from The Lord of the Rings, The Magic of New Zealand, Four Tenets to Live By, and The Only Sentence of …",
                url: "https://tim.blog/2025/03/13/weta-workshop/",
                urlToImage: "https://tim.blog/wp-content/uploads/2025/03/WETA-WORKSHOP-2-1.jpg",
                publishedAt: "2025-03-13T14:10:28Z",
                content: "Richard Taylor is the co-founder and creative lead at Wt Workshop, which he runs with his wife and co-founder Tania Rodger. Wt Workshop is a concept design studio and manufacturing facility that serv… [+13312 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (William Gallagher)"
                ),
                title: "Apple is lying about Apple Intelligence John Gruber says, and he\'s right",
                description: "Long-time Apple pundit John Gruber has launched an uncharacteristically strident attack against what he says are Apple\'s lies over the Apple Intelligence roll-out. And, he\'s spot-on with his arguments and conclusions.John Gruber (far right) with Greg Joswiak …",
                url: "https://appleinsider.com/articles/25/03/13/apple-is-lying-about-apple-intelligence-john-gruber-says-and-hes-right",
                urlToImage: "https://photos5.appleinsider.com/gallery/62955-130695-000-lede-Gruber-xl.jpg",
                publishedAt: "2025-03-13T13:40:11Z",
                content: "Long-time Apple pundit John Gruber has launched an uncharacteristically strident attack against what he says are Apple\'s lies over the Apple Intelligence roll-out. And, he\'s spot-on with his argument… [+5271 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Marko Zivkovic)"
                ),
                title: "Underwhelming performance of Apple Intelligence will hit iPhone sales, Kuo claims",
                description: "Analyst Ming-Chi Kuo called the performance of Apple Intelligence \"underwhelming,\" adding that it won\'t entice people to replace their older iPhones.The delays Apple Intelligence has faced might impact iPhone sales negatively.In a social media post on Thursda…",
                url: "https://appleinsider.com/articles/25/03/13/underwhelming-performance-of-apple-intelligence-will-hit-iphone-sales-kuo-claims",
                urlToImage: "https://photos5.appleinsider.com/gallery/62961-130705-62490-129539-iPhone-16-Pro-Max-AI-xl-xl.jpg",
                publishedAt: "2025-03-13T18:41:36Z",
                content: "Analyst Ming-Chi Kuo called the performance of Apple Intelligence \"underwhelming,\" adding that it won\'t entice people to replace their older iPhones.\r\nIn a social media post on Thursday, Kuo reiterat… [+3262 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (William Gallagher)"
                ),
                title: "Apple Music Classical comes to the web before the Mac",
                description: "It\'s still not rolled out to all Apple devices, but now subscribers to Apple Music Classical can listen online.Apple Music ClassicalIf it seemed a very long time between Apple buying Primephonic and finally releasing it as Apple Music Classical for the iPhone…",
                url: "https://appleinsider.com/articles/25/03/13/apple-music-classical-comes-to-the-web-before-the-mac",
                urlToImage: "https://photos5.appleinsider.com/gallery/61148-126184-54668-110526-53678-107954-Classical-icon-xl-xl-xl.jpg",
                publishedAt: "2025-03-13T15:57:11Z",
                content: "It\'s still not rolled out to all Apple devices, but now subscribers to Apple Music Classical can listen online.\r\nIf it seemed a very long time between Apple buying Primephonic and finally releasing i… [+1839 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Malcolm Owen)"
                ),
                title: "US lawmakers denounce UK\'s secretive attack against Apple encryption",
                description: "A bipartisan group of U.S. lawmakers are coming to Apple\'s defense over the UK government\'s attempts to get backdoor access to users\' iCloud data, demanding that the UK remove the cloak of secrecy surrounding the order.Big Ben\'s clocktower - Image Credit: Ama…",
                url: "https://appleinsider.com/articles/25/03/13/us-lawmakers-denounce-uks-secretive-attack-against-apple-encryption",
                urlToImage: "https://photos5.appleinsider.com/gallery/62963-130708-BigBen1-xl.jpg",
                publishedAt: "2025-03-13T19:43:54Z",
                content: "A bipartisan group of U.S. lawmakers are coming to Apple\'s defense over the UK government\'s attempts to get backdoor access to users\' iCloud data, demanding that the UK remove the cloak of secrecy su… [+5277 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Andrew Orr)"
                ),
                title: "ViewSonic\'s new 5K monitor rivals Apple\'s Studio Display for half the price",
                description: "ViewSonic\'s new 27-inch high-resolution monitor offers pro-level color accuracy for creatives without the premium Apple Studio Display price.The VP2788-5KThe VP2788-5K marks an important step in ViewSonic\'s expansion into the premium creative display space. W…",
                url: "https://appleinsider.com/articles/25/03/13/viewsonics-new-5k-monitor-rivals-apples-studio-display-for-half-the-price",
                urlToImage: "https://photos5.appleinsider.com/gallery/62962-130706-ViewSonic-xl.jpg",
                publishedAt: "2025-03-13T19:46:31Z",
                content: "ViewSonic\'s new 27-inch high-resolution monitor offers pro-level color accuracy for creatives without the premium Apple Studio Display price.\r\nThe VP2788-5K marks an important step in ViewSonic\'s exp… [+3089 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (William Gallagher)"
                ),
                title: "Don\'t worry if Apple claims you still need to send a trade-in device",
                description: "An unknown number of users have had Apple Store emails erroneously saying they haven\'t sent in an iPhone they actually traded-in months ago.Apple\'s iPhone 16 Pro Max could be bought for hundreds of dollars off after a trade-inApple heavily promotes trading in…",
                url: "https://appleinsider.com/articles/25/03/13/dont-worry-if-apple-claims-you-still-need-to-send-a-trade-in-device",
                urlToImage: "https://photos5.appleinsider.com/gallery/62953-130692-000-lede-iPhone-16-Pro-Max-xl.jpg",
                publishedAt: "2025-03-13T11:03:50Z",
                content: "An unknown number of users have had Apple Store emails erroneously saying they haven\'t sent in an iPhone they actually traded-in months ago.\r\nApple heavily promotes trading in your old device to get … [+1881 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Andrew O\'Hara)"
                ),
                title: "Apple\'s C1 modem is a quiet game-changer that\'s mostly flying under the radar",
                description: "With the launch of iPhone 16e, we also saw the launch of something far more important — Apple\'s custom C1 modem. Here\'s what means and why you should care about it.The C1 modem debuted in iPhone 16eTo cover the basics, the modem a chip in your phone that conn…",
                url: "https://appleinsider.com/articles/25/03/13/apples-c1-modem-is-a-quiet-game-changer-thats-mostly-flying-under-the-radar",
                urlToImage: "https://photos5.appleinsider.com/gallery/62743-130702-Apple-C1-in-iPhone-xl.jpg",
                publishedAt: "2025-03-13T17:27:43Z",
                content: "With the launch of iPhone 16e, we also saw the launch of something far more important — Apple\'s custom C1 modem. Here\'s what means and why you should care about it.\r\nTo cover the basics, the modem a … [+5379 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Malcolm Owen)"
                ),
                title: "Highway toll text scams are on the rise, and Apple can\'t completely stop them",
                description: "Highway text scams are a big problem that\'s continuing to grow with the use of at least 60,000 domain names. There\'s little Apple can do about it, but you can protect yourself. Here\'s what\'s going on.Cars at an automated toll - Image Credit: David McElwee/Pex…",
                url: "https://appleinsider.com/articles/25/03/13/highway-toll-text-scams-are-on-the-rise-and-apple-cant-completely-stop-them",
                urlToImage: "https://photos5.appleinsider.com/gallery/62960-130704-pexels-davidmcelwee-20758194-xl.jpg",
                publishedAt: "2025-03-13T17:59:45Z",
                content: "Highway text scams are a big problem that\'s continuing to grow with the use of at least 60,000 domain names. There\'s little Apple can do about it, but you can protect yourself. Here\'s what\'s going on… [+4001 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Christine McKee)"
                ),
                title: "Amazon slashes Apple\'s MacBook Air to $699.99",
                description: "Bonus coupons have slashed closeout MacBook Air models down to $699.99 at Amazon as the company makes room for new M4 inventory.Grab blowout prices on MacBook Air laptops - Image credit: AppleThe MacBook Air price drops offer savings of up to $300 off as the …",
                url: "https://appleinsider.com/articles/25/03/13/amazon-slashes-apples-macbook-air-to-69999",
                urlToImage: "https://photos5.appleinsider.com/gallery/62952-130691-macbook-air-2025-deals-xl.jpg",
                publishedAt: "2025-03-13T09:49:54Z",
                content: "Bonus coupons have slashed closeout MacBook Air models down to $699.99 at Amazon as the company makes room for new M4 inventory.\r\nThe MacBook Air price drops offer savings of up to $300 off as the Ap… [+1277 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Oliver Haslam)"
                ),
                title: "UltraHuman Ring Air review: Fitness tracking on your finger",
                description: "The world of the smart ring is a relatively new one, especially when compared to smartwatches.The UltraHuman Ring Air, for those who don\'t want to wear a smartwatch.Are smart rings the answer for people who don\'t want to wear a smartwatch? They\'re definitely …",
                url: "https://appleinsider.com/articles/25/03/13/ultrahuman-ring-air-review-fitness-tracking-on-your-finger",
                urlToImage: "https://photos5.appleinsider.com/gallery/62878-130582-IMG_0838-xl.jpg",
                publishedAt: "2025-03-13T00:14:20Z",
                content: "The world of the smart ring is a relatively new one, especially when compared to smartwatches. \r\nAre smart rings the answer for people who don\'t want to wear a smartwatch? They\'re definitely better t… [+7401 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Wesley Hilliard)"
                ),
                title: "OpenAI wants the US government to legalize theft to reach the AI promised land",
                description: "OpenAI may have already crawled the internet for all the world\'s data to train ChatGPT, but it seems that isn\'t enough as it wants protection from copyright holders to allow it to continue stealing everything that both is and isn\'t nailed down.OpenAI proposes…",
                url: "https://appleinsider.com/articles/25/03/13/openai-wants-the-us-government-to-legalize-theft-to-reach-the-ai-promised-land",
                urlToImage: "https://photos5.appleinsider.com/gallery/62964-130713-IMG_1884-xl.jpg",
                publishedAt: "2025-03-13T21:59:26Z",
                content: "OpenAI may have already crawled the internet for all the world\'s data to train ChatGPT, but it seems that isn\'t enough as it wants protection from copyright holders to allow it to continue stealing e… [+8647 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Marko Zivkovic)"
                ),
                title: "Your existing AirPods could gain a new live translation feature in iOS 19",
                description: "Apple\'s iconic AirPods are rumored to receive an entirely new feature that translates in-person conversations from one language to another.Apple is reportedly working on a new live translation feature for AirPods.The rumored live translation capability will m…",
                url: "https://appleinsider.com/articles/25/03/13/your-existing-airpods-could-gain-a-new-live-translation-feature-in-ios-19",
                urlToImage: "https://photos5.appleinsider.com/gallery/62965-130712-62801-130316-62417-129368-61404-126856-60788-125128-60675-124869-AirPods-Pro-2-stems-xl-xl-(1)-xl-(1)-xl-xl-xl.jpg",
                publishedAt: "2025-03-13T21:30:53Z",
                content: "Apple\'s iconic AirPods are rumored to receive an entirely new feature that translates in-person conversations from one language to another.\r\nThe rumored live translation capability will make it signi… [+1188 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Malcolm Owen)"
                ),
                title: "An iPhone 17 Pro Max metal frame image leak is more about cases",
                description: "A leaker is hyping up the upcoming release of the iPhone 17 Pro Max, but the image being used shows something that is more likely to be part of case production, rather than a component of the smartphone itself.A render of what the iPhone 17 Pro could look lik…",
                url: "https://appleinsider.com/articles/25/03/13/an-iphone-17-pro-max-metal-frame-image-leak-is-more-about-cases",
                urlToImage: "https://photos5.appleinsider.com/gallery/62954-130696-62905-130564-17_pro_max_r5-xl-xl.jpg",
                publishedAt: "2025-03-13T13:00:16Z",
                content: "A leaker is hyping up the upcoming release of the iPhone 17 Pro Max, but the image being used shows something that is more likely to be part of case production, rather than a component of the smartph… [+3111 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "AppleInsider"
                ),
                author: Optional(
                    "news@appleinsider.com (Chip Loder)"
                ),
                title: "How to view installer logs in macOS",
                description: "The macOS installer is quick and easy to use, but you can find out more info on what happens during installations by checking its built-in logs. Here\'s how to look at them.Use the macOS installer logs to see what happened during installation.macOS installer f…",
                url: "https://appleinsider.com/articles/25/03/13/how-to-view-installer-logs-in-macos",
                urlToImage: "https://photos5.appleinsider.com/gallery/62790-130522-lede-installer-logs-xl.jpg",
                publishedAt: "2025-03-13T03:00:37Z",
                content: "The macOS installer is quick and easy to use, but you can find out more info on what happens during installations by checking its built-in logs. Here\'s how to look at them. \r\nmacOS installer files ar… [+9155 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Gizmodo.jp"
                ),
                author: Optional(
                    "ライフハッカー編集長代理　丸山美沙"
                ),
                title: "Apple Intelligence、もうすぐ日本語対応。これ、超優秀なアシスタントだ",
                description: "Image:shutterstockLifehacker2025年2月27日掲載の記事より転載iOS18.4、iPadOS18.4、macOSSequoia15.4、visionOS2.4の最初の開発者向けベータ版が公開されました。なんたって大きいのは、AppleIntelligenceが日本語に対応したこと。同時にフランス語、ドイツ語、イタリア語、ブラジルポルトガル語、スペイン語、韓国語、中国語",
                url: "https://www.gizmodo.jp/2025/03/apple-intelligence_j.html",
                urlToImage: "https://media.loom-app.com/gizmodo/dist/images/2025/03/11/shutterstock_2481116275.jpg?w=1280&h=630&f=jpg",
                publishedAt: "2025-03-13T05:35:00Z",
                content: "Lifehacker 2025227\r\niOS 18.4iPadOS 18.4macOS Sequoia 15.4visionOS 2.4Apple Intelligence\r\n8\r\nApple IntelligenceiPhoneiPadMac AIAI \r\nApple Intelligence\r\nApple Intelligence \r\nWriting Tools\r\nMail\r\nApple … [+437 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Gizmodo.jp"
                ),
                author: Optional(
                    "小暮ひさのり"
                ),
                title: "M4 MacBook Air、キーボードのデザインをこっそり修正",
                description: "Image:Appleキーボード、ぜひ見てください。発売されたM4のMacBookAir。お値段据え置きですし、春からの新生活に向けて確保したよ！という人も多いと思いますが、今回のMacBookAir。チップだけ更新かと思いきや、キーボードにちょっと手が入っていました。MacRumorsの指摘によると、1999年のPowerBookG3以降、26年間続いてきたミュートアイコンのデザインが変わってい",
                url: "https://www.gizmodo.jp/2025/03/m4-macbook-air-keyboard.html",
                urlToImage: "https://media.loom-app.com/gizmodo/dist/images/2025/03/12/2025_03_12aik00.jpg?w=1280&h=630&f=jpg",
                publishedAt: "2025-03-13T03:30:00Z",
                content: "M4MacBook AirMacBook Air\r\nMacRumors1999PowerBook G326\r\nImage: Apple 1, 2Edit: \r\nM3 MacBook AirM4 MacBook Air\r\nmacOS \r\nImage: \r\n+\r\n MacBook AirM2\r\nImage: Apple\r\nABCiPhone\r\nMacBook Air\r\nSource: Apple, … [+8 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Gizmodo.jp"
                ),
                author: Optional(
                    "chisato kuroda"
                ),
                title: "「Siri」誕生から14年、今年こそ仲良くなれるかも。iOS 18.4に期待",
                description: "Photo:chisatokuroda今年4月のiOS18.4アップデートで、ついに日本へやってくるAppleIntelligence。さまざまな機能がAIによって便利になりますが、なかでも注目したいのが、あの「Siri」の進化。ホーム画面下部のダブルタップによってSiriを起動する「TaptoSiri」ができるようなります。ただワタクシ、「Hey!Siri」と言わなければならない恥ずかしさで今ま",
                url: "https://www.gizmodo.jp/2025/03/new-siri-in-new-ios.html",
                urlToImage: "https://media.loom-app.com/gizmodo/dist/images/2025/03/13/IMG_0228-1.jpg?w=1280&h=630&f=jpg",
                publishedAt: "2025-03-13T03:00:00Z",
                content: "4iOS 18.4Apple Intelligence\r\nAISiriSiriTap to Siri\r\nHey! SiriSiriSiri\r\nSiri\r\n2Siri\r\nAppleTapSiri\r\nApple BGM\r\nSiri\r\nUISiriSiriiPhone\r\nSource: Apple, Photo&amp;Image: chisato kuroda"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Gizmodo.jp"
                ),
                author: Optional(
                    "岩田リョウコ"
                ),
                title: "みんな知らない、知ると得するAirPodsの隠し機能",
                description: "地球上で一番人気のあるイヤホンのひとつ、AirPodsの知られざる隠れ機能を見ていきましょう。",
                url: "https://www.gizmodo.jp/2025/03/the-best-airpods-hidden-features-1.html",
                urlToImage: "https://media.loom-app.com/gizmodo/dist/images/2024/04/17/614a0a0b71c0377d82d54af84e643600.jpg?w=1280&h=630&f=jpg",
                publishedAt: "2025-03-13T07:35:00Z",
                content: "2024419\r\nAirPods\r\nAirPodsAirPodsAirPods\r\nImage: \r\nAirPodsAirPods\r\niPhoneAirPods\r\niPhone\r\nImage: \r\niPhoneiPad2AirPods\r\niPhoneiPadAirPodsAirPlayAirPods\r\nAirPodsAirPodsiPhone\r\nSiri\r\nImage: \r\nSiriAirPods… [+340 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "CNET"
                ),
                author: Optional(
                    "Gael Cooper"
                ),
                title: "Today\'s NYT Strands Hints, Answers and Help for March 14, #376",
                description: "Here\'s today\'s Strands answers and hints. These clues will help you solve The New York Times\' popular puzzle game, Strands, every day.",
                url: "https://www.cnet.com/tech/gaming/todays-nyt-strands-hints-answers-and-help-for-march-14-376/",
                urlToImage: "https://www.cnet.com/a/img/resize/38504a76ffbe2999a9c021f1ef73ea3c567fde74/hub/2024/05/15/f6bde1ee-6b73-41f1-87b5-8421e159d837/nyt-new-york-times-strands-2043.jpg?auto=webp&fit=crop&height=675&width=1200",
                publishedAt: "2025-03-13T21:01:22Z",
                content: "Looking for the most recent Strands answer? Click here for our daily Strands hints, as well as our daily answers and hints for The New York Times Mini Crossword, Wordle, Connections and Connections: … [+1813 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "CNET"
                ),
                author: Optional(
                    "Abrar Al-Heeti"
                ),
                title: "Android Adds Auracast Support, So Hearing Aids Can Connect Directly to Venue Audio",
                description: "Your phone can now make it easier to access cleaner audio, whether at a concert or train station.",
                url: "https://www.cnet.com/tech/mobile/android-gets-auracast-support-to-let-hearing-aids-connect-directly-to-audio/",
                urlToImage: "https://www.cnet.com/a/img/resize/9d0a5270464c36424e4dbe5b7bd61b239d5685f1/hub/2025/02/21/83206362-a1dd-4f49-accb-9ea90c44d5bb/pixel-9-green.jpg?auto=webp&fit=crop&height=675&width=1200",
                publishedAt: "2025-03-13T18:00:00Z",
                content: "Google\'s adding Auracast support as part of an Android update announced Thursday, which will allow anyone that uses hearing aids to directly connect to audio streams in public venues. Auracast is a B… [+2118 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Yanko Design"
                ),
                author: Optional(
                    "Vincent Nguyen"
                ),
                title: "iOS 19: A Sneak Peek into Apple’s Next Big Thing",
                description: "iOS 19: A Sneak Peek into Apple’s Next Big ThingApple is preparing to introduce iOS 19, a major update expected to launch in late 2025. This release continues the company’s focus on integrating advanced...",
                url: "https://www.yankodesign.com/2025/03/13/ios-19-a-sneak-peek-into-apples-next-big-thing/",
                urlToImage: "https://www.yankodesign.com/images/design_news/2025/03/ios-19-a-sneak-peek-into-apples-next-big-thing/ios19-hero.jpg",
                publishedAt: "2025-03-13T17:22:14Z",
                content: "Apple is preparing to introduce iOS 19, a major update expected to launch in late 2025. This release continues the companys focus on integrating advanced artificial intelligence and reimagining user … [+6404 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Windows Central"
                ),
                author: Optional(
                    "kevinokemwa@outlook.com (Kevin Okemwa)"
                ),
                title: "Salesforce CEO claims Microsoft repackaged ChatGPT as Copilot and \"disappointed our customers with what they call Copilot — they\'re an OpenAI reseller.\"",
                description: "Marc Benioff says if you want to compete with Microsoft, you need a company like Salesforce that knows how to market and position itself against the software giant and sell directly to consumers.",
                url: "https://www.windowscentral.com/software-apps/salesforce-ceo-claims-microsoft-repackaged-chatgpt-as-copilot",
                urlToImage: "https://cdn.mos.cms.futurecdn.net/C5xi9vNtE4nzfH7na3eVp6-1200-80.jpg",
                publishedAt: "2025-03-13T10:07:00Z",
                content: "As every major tech company grapples to claim a stake in the ever-evolving AI landscape, it\'s increasingly becoming difficult to determine who will be the winner (or if there will be one anyway).\r\nSo… [+4830 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Journal du geek"
                ),
                author: Optional(
                    "Jason Filankembo"
                ),
                title: "Nuki lance les Smart Lock Go et Pro, des serrures connectées plus abordables",
                description: "Les Smart Lock Go et Pro viennent compléter l\'offre de Nuki, qui avait déjà dévoilé la Smart Lock Ultra en fin d\'année 2024.",
                url: "https://www.journaldugeek.com/2025/03/13/nuki-lance-smart-lock-go-pro-serrures-connectees-abordables/",
                urlToImage: "https://www.journaldugeek.com/app/uploads/2025/03/Nuki-Smart-Lock-Go.jpg",
                publishedAt: "2025-03-13T11:34:10Z",
                content: "Apple pourrait bien tenter une percée sur le marché de la maison connectée avec des serrures et le HomePod avec écran dès cette année. En attendant, l’entreprise américaine ne peut que constater l’av… [+2263 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Journal du geek"
                ),
                author: Optional(
                    "Thomas Estimbre"
                ),
                title: "Tout savoir sur le Galaxy S25 Edge : le smartphone Samsung ultra-fin",
                description: "Le Samsung Galaxy S25 Edge n\'est pas encore disponible, mais les rumeurs et les spéculations vont bon train. Voici tout ce que nous savons (et ce que nous pensons savoir) sur le prochain smartphone ultra-fin de Samsung, des caractéristiques attendues au prix …",
                url: "https://www.journaldugeek.com/dossier/tout-savoir-sur-le-galaxy-s25-edge-le-smartphone-samsung-ultra-fin/",
                urlToImage: "https://www.journaldugeek.com/app/uploads/2025/01/galaxy-s25-edge-samsung-4.jpg",
                publishedAt: "2025-03-13T15:23:51Z",
                content: "Trois mois après son annonce, le Galaxy S25 Edge serait bientôt prêt à faire ses grands débuts. Samsung présenterait officiellement son smartphone ultra-fin dans quelques semaines et de nombreuses in… [+10208 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Journal du geek"
                ),
                author: Optional(
                    "Julie Hay"
                ),
                title: "Black Mirror saison 7 : la série revient et prend tout le monde de court",
                description: "\"Tu es un p*tain de miracle\". Black Mirror revient en fanfare avec une saison 7 qui promet du lourd et on connaît déjà la date de sortie.",
                url: "https://www.journaldugeek.com/2025/03/13/black-mirror-saison-7-la-serie-revient-et-prend-tout-le-monde-de-court/",
                urlToImage: "https://www.journaldugeek.com/app/uploads/2025/03/netlfix-black-mirror-1.jpg",
                publishedAt: "2025-03-13T17:59:20Z",
                content: "On ne l’attendait pas avant la mi-année, Black Mirror est finalement dans les starting-blocks pour sa saison 7. Deux ans après sa dernière salve d’épisodes, l’anthologie futuriste investira le catalo… [+2736 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Applesfera.com"
                ),
                author: Optional(
                    "Álvaro García M."
                ),
                title: "Europa amenaza a Apple: tendrá que pagar 40.000 millones si no hace estos cambios en el iPhone",
                description: "Europa está lista para multar a Apple por incumplir las leyes antimonopolio. Así de contundente iniciaba Reuters una exclusiva con la que vuelven a poner sobre la mesa el enfrentamiento entre la tecnológica californiana y el máximo estamento de la Unión Europ…",
                url: "https://www.applesfera.com/apple-1/europa-amenaza-a-apple-tendra-que-pagar-40-000-millones-no-hace-estos-cambios-iphone",
                urlToImage: "https://i.blogs.es/e42da3/europa/840_560.jpeg",
                publishedAt: "2025-03-13T12:30:42Z",
                content: "Europa está lista para multar a Apple por incumplir las leyes antimonopolio. Así de contundente iniciaba Reuters una exclusiva con la que vuelven a poner sobre la mesa el enfrentamiento entre la tecn… [+3444 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Applesfera.com"
                ),
                author: Optional(
                    "Álvaro García M."
                ),
                title: "La comida favorita de Tim Cook es también el mejor alimento para diabéticos. Aunque los nutricionistas piden fijarse en esto",
                description: "De un tipo que tiene una fortuna de 800 millones de dólares podemos esperar grandes lujos. Sin embargo, Tim Cook es diferente. El CEO de Apple destaca por su perfil discreto y es algo que apreciamos incluso en su desayuno favorito. Algo de lo más simple y que…",
                url: "https://www.applesfera.com/curiosidades/comida-favorita-tim-cook-tambien-mejor-alimento-para-diabeticos-nutricionistas-piden-fijarse-esto",
                urlToImage: "https://i.blogs.es/a72f35/mermelada-tim-cook/840_560.jpeg",
                publishedAt: "2025-03-13T17:00:43Z",
                content: "De un tipo que tiene una fortuna de 800 millones de dólares podemos esperar grandes lujos. Sin embargo, Tim Cook es diferente. El CEO de Apple destaca por su perfil discreto y es algo que apreciamos … [+3332 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Applesfera.com"
                ),
                author: Optional(
                    "Álvaro García M."
                ),
                title: "iPhone 17 Ultra, el nuevo y potente integrante de Apple que nadie esperaba y ya se ha filtrado",
                description: "Cuando ya todos apuntaban a que la estrella sería el iPhone 17 Air, aunque no vaya a ser el mejor de los iPhone 17, ha aparecido una sorpresa: la posible existencia del primer modelo \'Ultra\' de Apple. No nos pilla de nuevas si recordamos que ya se rumoreó un …",
                url: "https://www.applesfera.com/rumores/iphone-17-ultra-nuevo-potente-integrante-apple-que-nadie-esperaba-se-ha-filtrado",
                urlToImage: "https://i.blogs.es/b6718f/ultra/840_560.jpeg",
                publishedAt: "2025-03-13T09:00:42Z",
                content: "Cuando ya todos apuntaban a que la estrella sería el iPhone 17 Air, aunque no vaya a ser el mejor de los iPhone 17, ha aparecido una sorpresa: la posible existencia del primer modelo \'Ultra\' de Apple… [+3643 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Applesfera.com"
                ),
                author: Optional(
                    "Álvaro García M."
                ),
                title: "\"Sea inteligente y ahorre su dinero\": un jugador se rinde al intentar jugar con Mac, aunque sigue siendo su ordenador favorito por estas razones",
                description: "Después de 45 años usando un PC con Windows, hubo alguien que decidió pasarse a Mac. Y no por motivos habituales que uno pueda pensar, sino por los juegos. Históricamente, los ordenadores de Apple no presumen de estar enfocados en esta área, aunque sus último…",
                url: "https://www.applesfera.com/portatil/sea-inteligente-ahorre-su-dinero-jugador-se-rinde-al-intentar-jugar-mac-sigue-siendo-su-ordenador-favorito-estas-razones",
                urlToImage: "https://i.blogs.es/06cdd3/mac-juegos/840_560.jpeg",
                publishedAt: "2025-03-13T08:00:42Z",
                content: "Después de 45 años usando un PC con Windows, hubo alguien que decidió pasarse a Mac. Y no por motivos habituales que uno pueda pensar, sino por los juegos. Históricamente, los ordenadores de Apple no… [+4913 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Applesfera.com"
                ),
                author: Optional(
                    "Isra Fdez"
                ),
                title: "Ridley Scott vuelve al ruedo con un nuevo thriller y tiene encandilada a la crítica en Rotten Tomatoes: en solo unas horas se estrena esta miniserie de estrellas",
                description: "Está claro que 2025 es el año de Apple TV+. Y lo decimos no porque por fin sus películas funcionan como un tiro —\'El abismo secreto\', sin ir más lejos—, sino porque sus series están marcando nuevos récords. \'Separación\' y \'Prime Target\' están siendo un éxito …",
                url: "https://www.applesfera.com/servicios-apple/ridley-scott-vuelve-al-ruedo-nuevo-thriller-tiene-encandilada-a-critica-rotten-tomatoes-solo-unas-horas-se-estrena-esta-miniserie-estrellas",
                urlToImage: "https://i.blogs.es/667abb/dope_thief_photo_010205/840_560.jpeg",
                publishedAt: "2025-03-13T16:00:42Z",
                content: "Está claro que 2025 es el año de Apple TV+. Y lo decimos no porque por fin sus películas funcionan como un tiro \'El abismo secreto\', sin ir más lejos, sino porque sus series están marcando nuevos réc… [+2831 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Applesfera.com"
                ),
                author: Optional(
                    "Alberto García"
                ),
                title: "Me he comprado un Mac mini de 256 GB. Así es como puedo añadirle un SSD externo súper compacto",
                description: "Por lo general, la mayoría solemos recurrir a los dispositivos de Apple con menor capacidad de almacenamiento por el simple hecho de que son más baratos. De hecho, hace un par de semanas me compré un Mac mini M4 de 256 GB porque hay muchas formas de añadirle …",
                url: "https://www.applesfera.com/seleccion/me-he-comprado-mac-mini-256-gb-asi-como-puedo-anadirle-ssd-externo-super-compacto",
                urlToImage: "https://i.blogs.es/438407/mac-mini-m4/840_560.jpeg",
                publishedAt: "2025-03-13T11:30:43Z",
                content: "Por lo general, la mayoría solemos recurrir a los dispositivos de Apple con menor capacidad de almacenamiento por el simple hecho de que son más baratos. De hecho, hace un par de semanas me compré un… [+2096 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Applesfera.com"
                ),
                author: Optional(
                    "Isra Fdez"
                ),
                title: "La Junta de Andalucía acaba de lanzar una completísima aplicación para encontrar empleo desde iOS. Eso sí, solo para mujeres",
                description: "¿Una app local para potenciar la formación y el empleo entre mujeres? Siempre es algo de agradecer. Pues así es \'ANDALUZAA\', la app disponible para dispositivos iOS —iPhone e iPad— y también para Android que la Junta de Andalucía ha lanzado recientemente, enf…",
                url: "https://www.applesfera.com/aplicaciones-ios-1/junta-andalucia-acaba-lanzar-completisima-aplicacion-para-encontrar-empleo-ios-eso-solo-para-mujeres",
                urlToImage: "https://i.blogs.es/66f5fe/andalucia/840_560.jpeg",
                publishedAt: "2025-03-13T15:00:43Z",
                content: "¿Una app local para potenciar la formación y el empleo entre mujeres? Siempre es algo de agradecer. Pues así es \'ANDALUZAA\', la app disponible para dispositivos iOS iPhone e iPad y también para Andro… [+4011 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "MakeUseOf"
                ),
                author: Optional(
                    "Dave Parrack"
                ),
                title: "Apple Music Classical Is No Longer Limited to Just Your Phone",
                description: "Despite the lack of a dedicated Mac app, desktop users can now enjoy Apple Music Classical.",
                url: "https://www.makeuseof.com/apple-music-classical-now-available-on-web/",
                urlToImage: "https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2025/03/apple-music-classical-promo.jpg",
                publishedAt: "2025-03-13T18:30:29Z",
                content: "Fans of classical music tend to a. be very, very into classical music, and b. not have much interest in other genres. That may be generalizing a little, but it explains why a dedicated streaming serv… [+2521 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Phandroid - News for Android"
                ),
                author: Optional(
                    "Tyler Lee"
                ),
                title: "OnePlus 13 mini Rumored to Launch This May With 6,000mAh battery",
                description: "According to the rumors, OnePlus is getting ready to launch a compact phone called the OnePlus 13 mini that could come this May.\nThe post OnePlus 13 mini Rumored to Launch This May With 6,000mAh battery appeared first on Phandroid.",
                url: "https://phandroid.com/2025/03/13/oneplus-13-mini-rumored-to-launch-this-may-with-6000mah-battery/",
                urlToImage: "https://phandroid.com/wp-content/uploads/2024/11/oneplus-13.jpg",
                publishedAt: "2025-03-13T06:09:23Z",
                content: "After years of manufacturers pushing massive displays, a shift is happening. Slimmer, more compact phones like the rumored Apple iPhone 17 Air and Samsung Galaxy S25 Edge are gaining traction. Now, O… [+1268 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Phandroid - News for Android"
                ),
                author: Optional(
                    "Mike Viray"
                ),
                title: "The Pixel 9a is all But Official, but has Google Messed Up this Time?",
                description: "Are looks enough of a purchase deterrent for you?\nThe post The Pixel 9a is all But Official, but has Google Messed Up this Time? appeared first on Phandroid.",
                url: "https://phandroid.com/2025/03/13/the-pixel-9a-is-all-but-official-but-has-google-messed-up-this-time/",
                urlToImage: "https://phandroid.com/wp-content/uploads/2025/03/pixel-9a.png",
                publishedAt: "2025-03-13T20:17:49Z",
                content: "The upcoming launch of the Pixel 9a marks another significant milestone in Google’s history as a hardware manufacturer, following the successful debut of the Pixel 3a those many years ago. Google’s A… [+3492 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Presse-citron"
                ),
                author: Optional(
                    "Setra"
                ),
                title: "iOS 19 : voici à quoi le nouveau système d’exploitation de l’iPhone pourrait ressembler",
                description: "Apple préparerait une refonte d’iOS 19. Et on a peut-être déjà un aperçu de cette nouvelle interface pour le système d’exploitation de l’iPhone.",
                url: "https://www.presse-citron.net/ios-19-voici-a-quoi-le-nouveau-systeme-dexploitation-de-liphone-pourrait-ressembler/",
                urlToImage: "https://www.presse-citron.net/app/uploads/2025/02/test-iphone-16e-avis.jpg",
                publishedAt: "2025-03-13T08:31:44Z",
                content: "Récemment, Mark Gurman, journaliste chez Bloomberg, a évoqué un possible changement majeur pour les produits Apple. Comme vous le savez peut-être déjà, au mois de juin, Apple devrait présenter de nou… [+3248 chars]"
            ),
            NewsWave.ArticleResponse(
                source: NewsWave.Source(
                    id: nil,
                    name: "Presse-citron"
                ),
                author: Optional(
                    "Manon Carpentier"
                ),
                title: "Pourquoi tout le monde déteste Spotify ?",
                description: "Alors qu’elle a révolutionné notre manière d’écouter et de découvrir de la musique, la plateforme Spotify est constamment accusée de tous les maux.",
                url: "https://www.presse-citron.net/pourquoi-tout-le-monde-deteste-spotify/",
                urlToImage: "https://www.presse-citron.net/app/uploads/2024/03/spotify-fin.jpg",
                publishedAt: "2025-03-13T17:27:23Z",
                content: "Quand Spotify est arrivée sur le marché, lindustrie musicale a été complètement secouée. Pour le meilleur, comme pour le pire. Alors que les ventes de CD étaient en chute libre, la plateforme de stre… [+4262 chars]"
            )
        ]
    )
    static let keywordTest = HeadlineResponse(articles: [NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "NPR"), author: Optional("The Associated Press"), title: "Former Philippine leader Duterte arrested on an ICC warrant over drug killings", description: "Former Philippine President Rodrigo Duterte was arrested Tuesday on order of the International Criminal Court in connection with a case of crime against humanity, the Philippine government said.", url: "https://www.npr.org/2025/03/11/g-s1-53104/philippines-rodrigo-duterte-arrested-icc", urlToImage: "https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4157x2338+0+217/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Fad%2Ff6%2Faa9890e442ee8cc31f45281df6da%2Fap25070119232039.jpg", publishedAt: "2025-03-11T04:22:34Z", content: "MANILA, Philippines Former Philippine President Rodrigo Duterte was arrested by police at Manila\'s international airport Tuesday on order of the International Criminal Court in connection with a case… [+2606 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Murder charge authorised over Harshita Brella death", description: "Ms Brella\'s death has prompted an international manhunt for her husband, Pankaj Lamba.", url: "https://www.bbc.com/news/articles/c20lyg0dgx6o", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/fe85/live/54bec0a0-03fa-11f0-88b7-5556e7b55c5e.jpg", publishedAt: "2025-03-19T16:52:01Z", content: "A murder charge has been authorised against the husband of a woman whose body was found in the boot of a car in London.\r\nPankaj Lamba - whose whereabouts are unknown - would be charged over the death… [+1210 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("time"), name: "Time"), author: Optional("Associated Press"), title: "Former Philippine President Duterte Arrested on International Criminal Court Warrant", description: "Police arrested Duterte at a Manila airport in connection with a case of alleged crime against humanity.", url: "https://time.com/7266752/philippines-rodrigo-duterte-arrested/", urlToImage: "https://api.time.com/wp-content/uploads/2025/03/rodrigo-duterte-philippines.jpg?quality=85&w=1024&h=628&crop=1", publishedAt: "2025-03-11T03:45:00Z", content: "MANILA, Philippines Former Philippine President Rodrigo Duterte was arrested at Manilas international airport Tuesday on order of the International Criminal Court in connection with a case of crime a… [+3548 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("the-verge"), name: "The Verge"), author: Optional("Gaby Del Valle"), title: "The airport panopticon is getting people deported and detained", description: "A legal permanent resident claims he was tortured by customs agents after returning home from a trip to Europe. A doctor with a work visa was denied entry into the country â then flown out of the US in spite of a court order halting her deportation. Two Ger…", url: "https://www.theverge.com/policy/632843/cbp-phone-search-airport-arrest-mass-deportations", urlToImage: "https://platform.theverge.com/wp-content/uploads/sites/2/2025/03/STK471_Government_Surveillance_CVirginia_C.jpg?quality=90&strip=all&crop=0%2C10.732984293194%2C100%2C78.534031413613&w=1200", publishedAt: "2025-03-19T21:08:38Z", content: "An alphabet soup of databases, a digital surveillance dragnet, and forced searches of phones have empowered Customs and Border Protection to arrest, deport and in one case, allegedly torture noncitiz… [+14102 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "British boy loses case against parents over being sent to school in Ghana", description: "The 14-year-old from London brought a case against his parents after being sent to school in Ghana.", url: "https://www.bbc.com/news/articles/cdryre7y4n0o", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/3e3a/live/26595570-f4ed-11ef-ae0a-4bca4f518eb0.png", publishedAt: "2025-02-27T11:05:50Z", content: "Sanchia Berg and Levi Jouavel\r\nA 14-year-old boy has lost a court case he brought against his own parents after they moved him from London to Ghana to go to boarding school.\r\nThe boy, described in co… [+4300 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "NPR"), author: Optional("Frank Langfitt"), title: "Judge tells Trump administration it has less than 2 days to resume USAID funding", description: "A federal judge has ordered the Trump administration to resume hundreds of millions of dollars in payments for U.S. Agency for International Development projects.", url: "https://www.npr.org/sections/goats-and-soda/2025/02/25/g-s1-50701/usaid-freeze-judge", urlToImage: "https://npr.brightspotcdn.com/dims3/default/strip/false/crop/3000x1688+0+156/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Fac%2F9c%2F34815b8e43458e49b1df618e6474%2Fusaid-container.jpg", publishedAt: "2025-02-25T23:45:09Z", content: "WASHINGTON , D.C. A federal judge has ordered the Trump administration to resume hundreds of millions of dollars in payments for U.S. Agency for International Development projects across the globe.\r\n… [+3074 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Ex-hospital bosses call for inquiry to be suspended", description: "The inquiry\'s chair says she has had similar requests from Letby\'s legal team and Tory MP David Davis.", url: "https://www.bbc.com/news/articles/cn7v847r2x8o", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/0b88/live/59400740-032f-11f0-9d83-c7f80f10afdc.png", publishedAt: "2025-03-17T14:29:07Z", content: "Stewart Whittingham\r\nAndy GillReporting from\r\nLiverpool Town Hall \r\nLucy Letby killed babies while working at the Countess of Chester Hospital\r\nLawyers for former bosses of the hospital where killer … [+2840 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Ex-Abercrombie boss now facing abuse claims from 40 men", description: "The new claims stretch back to the 1990s and alleged victims now include former A&F employees, lawyers say.", url: "https://www.bbc.com/news/articles/ce8vmy56yero", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/cfbf/live/99b30d50-04dc-11f0-88b7-5556e7b55c5e.jpg", publishedAt: "2025-03-21T06:27:25Z", content: "Mike Jeffries is currently under house arrest\r\nMore than 40 men have now come forward accusing the former chief executive of Abercrombie &amp; Fitch (A&amp;F) of rape, sexual assault or drugging, law… [+7608 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "NPR"), author: Optional("Alana Wise"), title: "Daring train thieves target BNSF Railway, stealing $2M worth of Nike and other goods", description: "Train heists aren\'t just a thing of the Old West. A series of brazen train robberies has emerged across the western United States and authorities say the thieves focus on high-value containers.", url: "https://www.npr.org/2025/02/28/g-s1-51144/daring-train-thieves-target-bnsf-railway-stealing-2m-worth-of-nike-and-other-goods", urlToImage: "https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4325x2433+21+0/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F5e%2F57%2F49fd19a3498db6aa27905a192928%2Fgettyimages-92635311.jpg", publishedAt: "2025-02-28T18:43:25Z", content: "A series of brazen train robberies have been carried out across the Western United States, resulting in the theft of millions of dollars worth of Nike merchandise. \r\nWhile the thieves are not gallopi… [+2221 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "What we know about Duterte\'s ICC arrest warrant... in 90 seconds", description: "The BBC\'s Anna Holligan reports from The Hague, where former Philippine President Rodrigo Duterte has arrived.", url: "https://www.bbc.com/news/videos/c7vz052evzdo", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/0b53/live/cfccdba0-ff5f-11ef-8c3d-b7dcc7510cb1.jpg", publishedAt: "2025-03-12T16:41:27Z", content: "The former president of the Philippines, Rodrigo Duterte, has arrived in the Netherlands after the International Criminal Court (ICC) issued an arrest warrant over his deadly \"war on drugs\".\r\nDuring … [+216 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news"), name: "ABC News"), author: Optional("Luke Barr"), title: "US seizes Russian crypto exchange websites", description: "The United States Secret Service said it has seized a Russian cryptocurrency exchange website, according to court documents unsealed on Friday.", url: "https://abcnews.go.com/Politics/us-seizes-russian-crypto-exchange-websites-charges-head/story?id=119559435", urlToImage: "https://i.abcnewsfe.com/a/d80cc045-4339-473f-b763-70154d714c5e/fbi-gty-jef-250307_1741369624788_hpMain_16x9.jpg?w=1600", publishedAt: "2025-03-07T18:14:08Z", content: "The United States Secret Service said it has seized a Russian cryptocurrency exchange website, according to court documents unsealed on Friday.\r\nThe Justice Department also charged the two administra… [+2299 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news"), name: "ABC News"), author: Optional("Pierre Thomas, Alexander Mallin, Meredith Deliso"), title: "Abbey Gate terror suspect makes 1st court appearance following extradition to US", description: "The magistrate judge ordered a detention and preliminary hearing for Monday. The government will be seeking his continued detention pending trial.", url: "https://abcnews.go.com/US/abbey-gate-terror-suspect-makes-1st-court-appearance/story?id=119486289", urlToImage: "https://i.abcnewsfe.com/a/19650aad-a8c2-4b5c-bd44-6dcedbfcb1b8/mohammad-sharifullah-ht-jt-250305_1741208296925_hpMain_16x9.jpg?w=1600", publishedAt: "2025-03-05T23:25:05Z", content: "An alleged key figure in the deadly August 2021 suicide bombing targeting U.S. soldiers at Abbey Gate during the withdrawal from Afghanistan appeared in federal court in Virginia following his extrad… [+2580 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news"), name: "ABC News"), author: Optional("Kevin Shalvey"), title: "Duterte arrested on ICC warrant, presidential office says", description: "Members of the Philippine National Police met the former president as he arrived in Manila, the capital, on a flight from Hong Kong, the office said.", url: "https://abcnews.go.com/International/former-philippines-president-rodrigo-duterte-arrested-icc-warrant/story?id=119658930", urlToImage: "https://i.abcnewsfe.com/a/377bbc10-8c58-4d85-bc7e-0f70b5fea96a/duterte-main_1741670489928_hpMain_16x9.jpg?w=1600", publishedAt: "2025-03-11T06:30:14Z", content: "Former Philippines President Rodrigo Duterte was detained on Tuesday under an International Criminal Court arrest warrant, which accused him of crimes against humanity in connection with the brutal \"… [+1150 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Justice.gov"), author: nil, title: "Indian chemical company employees indicted for Importing of Fentanyl Precursors", description: "An India-based chemical manufacturing company and three high-level employees were charged in federal court in Washington, D.C., today related to illegally importing precursor chemicals used to make illicit fentanyl.", url: "https://www.justice.gov/opa/pr/india-based-chemical-manufacturing-company-and-top-employees-indicted-unlawful-importation", urlToImage: "https://www.justice.gov/themes/custom/usdoj_uswds/images/metatag-image--press-release.png", publishedAt: "2025-03-21T01:20:32Z", content: "An India-based chemical manufacturing company and three high-level employees were charged in federal court in Washington, D.C., today related to illegally importing precursor chemicals used to make i… [+3487 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Duterte takes responsibility for Philippines drug war in video message", description: "Former Philippine President Rodrigo Duterte says \'I am responsible\' after arrest by International Criminal Court.", url: "https://www.aljazeera.com/news/2025/3/13/duterte-takes-responsibility-for-philippines-drug-war-in-video-message", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/2025-02-13T155409Z_1588295179_RC2OTCAFE4SV_RTRMADP_3_PHILIPPINES-POLITICS-1741844559_5a7410-1741845010.jpg?resize=1200%2C630&quality=80", publishedAt: "2025-03-13T06:37:37Z", content: "Former Philippine President Rodrigo Duterte has taken full responsibility for his deadly so-called war on drugs, in a video message posted on Facebook, following his arrest on a warrant from the Inte… [+2828 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Hospital boss felt Lucy Letby was innocent, inquiry hears", description: "There were concerns about a \"wrongful conviction\", the inquiry into Lucy Letby\'s crimes hears.", url: "https://www.bbc.com/news/articles/cx207r3ngy5o", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/7da6/live/730e3140-f2bf-11ef-9a3d-a9193161aa19.jpg", publishedAt: "2025-02-24T17:33:18Z", content: "Lucy Letby was convicted of murder and attempted murder while working as a neonatal nurse\r\nA former hospital chief executive told his deputy he was worried about a \"wrongful conviction\" after the arr… [+3910 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news"), name: "ABC News"), author: Optional("CHRIS MEGERIAN Associated Press, LINDSAY WHITEHURST Associated Press"), title: "Trump\'s bluntness powered a comeback, but words now getting him in trouble in court", description: "President Donald Trump’s own words keep getting used against him in court while he faces lawsuits against his aggressive agenda", url: "https://abcnews.go.com/US/wireStory/trumps-bluntness-powered-white-house-comeback-now-words-119973955", urlToImage: "https://i.abcnewsfe.com/a/6d4f3acf-39e3-4fc7-bcbb-e5fc0070b8e6/wirestory_9f6cb9e7f695ee3ad7fa97743a6bf2de_16x9.jpg?w=1600", publishedAt: "2025-03-20T06:51:34Z", content: "WASHINGTON -- WASHINGTON (AP) Donald Trumps shoot-from-the-lip style kept Americans on the edge of their seats during last year\'s campaign. But now that he\'s speaking as a president and not as a cand… [+5667 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("business-insider"), name: "Business Insider"), author: Optional("Grace Eliza Goodwin"), title: "A USAID employee says security wouldn\'t let him take a photo of his wife\'s memorial as he cleared out his desk", description: "The Trump administration\'s cuts to USAID resulted in rapid staff terminations and the clear-out of its headquarters.", url: "https://www.businessinsider.com/fired-usaid-worker-says-security-prohibit-photo-wife-memorial-2025-2", urlToImage: "https://i.insider.com/67c1fe1cb8b41a9673f95576?width=975&format=jpeg", publishedAt: "2025-02-28T19:47:43Z", content: "A construction crew removed the lettering from the USAID building earlier this month.Alice Tecotzky\r\n<ul><li>A fired USAID worker says security stopped him from taking one last photo of his wife\'s of… [+2879 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Duterte\'s first night in a jail cell is a pivotal moment for the ICC", description: "Duterte\'s arrest sends a strong signal that even powerful individuals may be held accountable for their actions.", url: "https://www.bbc.com/news/articles/cvgw1nklxezo", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/ff8b/live/9a1b2c80-ffcf-11ef-8485-93fd34b35f50.jpg", publishedAt: "2025-03-13T06:39:02Z", content: "Anna Holligan\r\nWhat we know about Duterte\'s ICC arrest warrant... in 92 seconds\r\nOutside the International Criminal Court\'s (ICC) detention centre, where former Philippines president Rodrigo Duterte … [+5696 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("time"), name: "Time"), author: Optional("Chad de Guzman"), title: "Former Philippines President Rodrigo Duterte Makes First ICC Appearance Since Arrest", description: "Duterte, 79, appeared at the hearing via videolink, with Presiding Judge Iulia Motoc citing his prior “long journey\" as the reason.", url: "https://time.com/7268269/former-philippines-president-rodrigo-duterte-makes-icc-appearance-video-link/", urlToImage: "https://api.time.com/wp-content/uploads/2025/03/GettyImages-2204482023.jpg?quality=85&w=1200&h=628&crop=1", publishedAt: "2025-03-14T14:57:25Z", content: "Rodrigo Duterte, who served as Philippine President from 2016 to 2022, appeared for the first time at the International Criminal Court (ICC) in The Hague on Friday.\r\nThe hearing signifies the start o… [+4009 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news"), name: "ABC News"), author: Optional("Meredith Deliso"), title: "$10M reward offered for arrest of former Olympic snowboarder turned alleged drug lord", description: "Ryan Wedding, 43, a Canadian national, has also been added to the FBI\'s Ten Most Wanted Fugitives list, the FBI’s Los Angeles Field Office revealed Thursday.", url: "https://abcnews.go.com/US/ryan-wedding-former-olympic-snowboarder-reward/story?id=119521599", urlToImage: "https://i.abcnewsfe.com/a/8554db5a-adb3-4f99-b2df-d4970eb1397b/Ryan-wedding-1-ht-gmh-250306_1741289555527_hpMain_16x9.jpg?w=1600", publishedAt: "2025-03-06T20:55:29Z", content: "The U.S. Department of State is offering a $10 million reward for the capture of a former Olympic snowboarder accused of running a major transnational drug trafficking organization and orchestrating … [+3201 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "NPR"), author: Optional("Susan Davis"), title: "Trump is trying to remake the presidency. Here\'s why", description: "The Trump administration has shuttered, fired or targeted for resignation individuals, offices and agencies that could serve as a check on President Trump. Supporters say that is exactly the point.", url: "https://www.npr.org/2025/03/12/nx-s1-5308280/trump-is-trying-to-remake-the-presidency-heres-why", urlToImage: "https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5263x2960+0+274/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F44%2Fcb%2F139d0d2b461e94dc6e24438e3be4%2Fgettyimages-2203875159.jpg", publishedAt: "2025-03-12T19:43:45Z", content: "No one can say he wasn\'t upfront about it.\r\n\"It\'s good to have a strongman at the head of a country,\" then-candidate Donald Trump declared at a New Hampshire campaign rally back in January 2024.\r\nIn … [+10559 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("time"), name: "Time"), author: Optional("Chad de Guzman"), title: "The Meaning of Rodrigo Duterte’s Arrest", description: "The arrest of the former Philippines President on alleged crimes against humanity marks a major turning point for the country.", url: "https://time.com/7266779/philippines-duterte-arrest-icc-warrant/", urlToImage: "https://api.time.com/wp-content/uploads/2025/03/GettyImages-2180820126.jpg?quality=85&w=1024&h=628&crop=1", publishedAt: "2025-03-11T12:46:43Z", content: "March 11 was a day of reckoning. Fresh off a plane at the Manila international airport, former Philippine President Rodrigo Duterte was flanked and detained under an arrest warrant issued by the Inte… [+3400 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("time"), name: "Time"), author: Optional("MELANIE LIDMAN and SAMY MAGDY / AP"), title: "Israel Says It Is Cutting Off Its Electricity Supply to Gaza", description: "Israel wants Hamas to release half of the remaining hostages in return for a promise to negotiate a lasting truce.", url: "https://time.com/7266211/israel-says-it-is-cutting-off-electricity-supply-to-gaza/", urlToImage: "https://api.time.com/wp-content/uploads/2025/03/AP25068666167671.jpg?quality=85&w=1200&h=628&crop=1", publishedAt: "2025-03-09T19:11:32Z", content: "TEL AVIV, Israel Israel cut off the electricity supply to Gaza, officials said Sunday, affecting a desalination plant producing drinking water for part of the arid territory. Hamas called it part of … [+5897 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("cnn"), name: "CNN"), author: Optional("Kathleen Magramo"), title: "Crimes against humanity...", description: "Former President Rodrigo Duterte was arrested by the Philippine government on Tuesday after it said it received an International Criminal Court (ICC) warrant accusing him of crimes against humanity .", url: "https://www.cnn.com/2025/03/10/asia/philippines-rodrigo-duterte-arrest-intl-hnk/index.html", urlToImage: "https://media.cnn.com/api/v1/images/stellar/prod/ap25070119232039.jpg?c=16x9&q=w_800,c_fill", publishedAt: "2025-03-11T12:43:36Z", content: "Former President Rodrigo Duterte was arrested by the Philippine government on Tuesday after it said it received an International Criminal Court (ICC) warrant accusing him of crimes against humanity.\r… [+5338 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news"), name: "ABC News"), author: Optional("Peter Charalambous, Laura Romero, Ely Brown, James Hill, Katherine Faulders"), title: "Timeline: Trump\'s race against courts to deport gang members under Alien Enemies Act", description: "A minute-by-minute timeline of events of the Trump administration\'s race against the clock to deport alleged members of the Venezuelan gang Tren de Aragua.", url: "https://abcnews.go.com/Politics/timeline-trump-administrations-race-deport-hundreds-alleged-gang/story?id=119860136", urlToImage: "https://i.abcnewsfe.com/a/8e8bb1c7-1225-492b-8ffb-a31359a96961/salvador-deported-4-gty-gmh-250316_1742155089692_hpMain_2_16x9.jpg?w=1600", publishedAt: "2025-03-17T11:25:00Z", content: "While the White House insists it has complied with a recent court order temporarily blocking the president from invoking a rarely used wartime authority, ABC News\' review of flight data and court doc… [+7890 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Theins.press"), author: Optional("Christo Grozev"), title: "Europe\'s most wanted man plotted my murder – and that of my colleague", description: "A jury at the Old Bailey, London’s Central Criminal Court, has just found six of my compatriots — citizens of Bulgaria — guilty of conspiring with the Kremlin to kidnap and possibly murder me and my colleague and friend, Roman Dobrokhotov. The Bulgarians, the…", url: "https://theins.press/en/inv/279034", urlToImage: "https://theins.press/storage/post/279034/screen20250307-1-1pejekv.png?1741379064", publishedAt: "2025-03-07T19:28:31Z", content: "Roussev wrote that the police had very poor control of the UK’s east coast, which is why the area was frequently being taken advantage of by illegal migrants. “Dobrokhotov would be an illegal migrant… [+3132 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "NPR"), author: Optional("Tom Dreisbach"), title: "New deputy FBI director Dan Bongino previously called for imprisoning Democrats", description: "Before becoming the second-in-command at the FBI, Dan Bongino used his popular podcast to spread conspiracy theories about the Jan. 6 attack. Here\'s what else he said.", url: "https://www.npr.org/2025/03/03/nx-s1-5308020/dan-bongino-trump-fbi-director-conspiracies-podcast", urlToImage: "https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4112x2313+0+0/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F12%2F4e%2F043ffa584dcc82726f615cde6f8a%2Fgettyimages-1052717298.jpg", publishedAt: "2025-03-03T17:53:38Z", content: "For more than 100 years, the role of FBI deputy director\r\n has been filled by a career agent with previous bureau experience and an insider\'s understanding of day-to-day operations of federal law enf… [+15393 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Bosnian-Serb leader sentenced to jail in landmark trial", description: "Dodik\'s trial had been widely seen as a test for the Balkan nation\'s weak central government.", url: "https://www.bbc.com/news/articles/cdrxy1zp8mxo", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/752d/live/efa77ba0-f470-11ef-9e61-71ee71f26eb1.jpg", publishedAt: "2025-02-26T21:03:11Z", content: "Guy Delauney\r\nA one-year prison sentence and a six-year ban on holding public office might seem like a heavy penalty for a politician. \r\nBut the Bosnian-Serb leader Milorad Dodik made light of the ve… [+4703 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "The New York Review of Books"), author: Optional("Trevor Jackson"), title: "Scot-free", description: "What happens when power and responsibility become unmoored from each other? The political events of recent months have provided new clarity to this old question.  On November 21, 2024, the International Criminal Court (ICC) charged Israel’s prime minister, Be…", url: "https://www.nybooks.com/online/2025/03/01/scot-free/", urlToImage: "https://www.nybooks.com/wp-content/uploads/2025/02/feature_5d1cd3-e1740804884324.jpg", publishedAt: "2025-03-01T13:37:05Z", content: "New York Review Books\r\nIllustration by Syd Hoff\r\nWhat happens when power and responsibility become unmoored from each other? The political events of recent months have provided new clarity to this ol… [+15350 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Syria vows to destroy any remaining Assad-era chemical weapons", description: "Asaad al-Shibani asks for the support of the global chemical weapons watchdog to \"end to this painful legacy\".", url: "https://www.bbc.com/news/articles/cg70j91n811o", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/4c8c/live/4f4b5c10-f9f4-11ef-9877-67fac07f10ae.jpg", publishedAt: "2025-03-05T20:28:08Z", content: "Syria\'s foreign minister has told the global chemical weapons watchdog that the new government is committed to destroying any remaining stockpiles produced under ousted president Bashar al-Assad.\r\nAd… [+2727 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Philippines\' Duterte in The Hague after ICC arrest over drug war", description: "Duterte, who led a \"drug war\" that killed thousands, was arrested for alleged crimes against humanity.", url: "https://www.bbc.com/news/articles/c9819r2en4do", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/2a03/live/2a2f9280-fef8-11ef-8f2f-f3e95adf551f.jpg", publishedAt: "2025-03-12T16:46:56Z", content: "A plane carrying former Philippines president Rodrigo Duterte has arrived in the Netherlands where he is to face charges of crimes against humanity at the International Criminal Court (ICC) over his … [+4101 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Forbes"), author: Optional("Siladitya Ray, Forbes Staff, \n Siladitya Ray, Forbes Staff\n https://www.forbes.com/sites/siladityaray/"), title: "Philippines’ Former President Rodrigo Duterte Arrested After ICC Warrant", description: "The International Criminal Court is investigating alleged crimes against humanity carried out by the former president as part of his deadly war on drugs.", url: "https://www.forbes.com/sites/siladityaray/2025/03/11/philippines-former-president-rodrigo-duterte-arrested-after-icc-warrant/", urlToImage: "https://imageio.forbes.com/specials-images/imageserve/67cfec6a55b19b527098d030/0x0.jpg?format=jpg&crop=3134,1761,x0,y26,safe&height=900&width=1600&fit=bounds", publishedAt: "2025-03-11T07:57:05Z", content: "Rodrigo Duterte, the former president of the Philippines, was arrested in the countrys capital Manila on Tuesday after the International Criminal Court issued a warrant against him as part of an inve… [+2171 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Yahoo Entertainment"), author: Optional("CHRIS MEGERIAN and LINDSAY WHITEHURST"), title: "Trump\'s bluntness powered a White House comeback. Now his words are getting him in trouble in court", description: "Donald Trump’s shoot-from-the-lip style kept Americans on the edge of their seats during last year\'s campaign.  The spontaneity is complicating his...", url: "https://www.yahoo.com/news/trumps-bluntness-powered-white-house-040111695.html", urlToImage: "https://s.yimg.com/ny/api/res/1.2/sc6HY8XcNtIKXZcjFX.Cyg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/ap.org/b21f97928a84a6c141228b9671bdedd1", publishedAt: "2025-03-20T04:01:11Z", content: "WASHINGTON (AP) Donald Trumps shoot-from-the-lip style kept Americans on the edge of their seats during last year\'s campaign. But now that he\'s speaking as a president and not as a candidate, his wor… [+5637 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("time"), name: "Time"), author: Optional("LARRY NEUMEISTER / AP"), title: "Columbia’s Mahmoud Khalil Felt Kidnapped During Swift Detention, Lawyers Say", description: "Lawyers said the Palestinian student activist was handcuffed, shackled and flown to Louisiana by agents he said never identified themselves.", url: "https://time.com/7268116/columbia-mahmoud-khalil-palestine-activist-lawsuit-immigration/", urlToImage: "https://api.time.com/wp-content/uploads/2025/03/mahmoud-khalil.jpg?quality=85&crop=0px%2C87px%2C1024px%2C536px&resize=1200%2C628&strip", publishedAt: "2025-03-14T08:25:02Z", content: "NEW YORK Handcuffed and shackled, Mahmoud Khalil was rushed from New York to Louisiana last weekend in a manner that left the outspoken Columbia University graduate student feeling like he was being … [+4239 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: nil, title: "Duterte supporters call for his release from ICC", description: "Former Philippine President Rodrigo Duterte’s supporters have held a rally to call for his release.", url: "https://www.aljazeera.com/program/newsfeed/2025/3/13/duterte-supporters-call-for-his-release-from-icc", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/image-1741858084.jpg?resize=1916%2C1080&quality=80", publishedAt: "2025-03-13T09:28:16Z", content: "NewsFeed\r\nFormer Philippine President Rodrigo Dutertes supporters have held a rally to call for his release by the International Criminal Court. Al Jazeeras Barnaby Lo was there."), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: nil, title: "Duterte appears for first ICC crimes against humanity hearing", description: "Former Philippines president Rodrigo Duterte appeared via video link at his first hearing at the ICC.", url: "https://www.aljazeera.com/program/newsfeed/2025/3/14/duterte-appears-for-first-icc-crimes-against-humanity-hearing", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/rodrigo_duterte_icc_first_hearing_video_link-1741977176.jpg?resize=1920%2C1080&quality=80", publishedAt: "2025-03-14T18:41:16Z", content: "NewsFeed\r\nFormer Philippines president Rodrigo Duterte appeared via video link at his first hearing at the International Criminal Court, citing health reasons. His legal team argued he was kidnapped … [+20 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: nil, title: "Philippines ex-president Rodrigo Duterte arrested on ICC warrant", description: "Video shows ex-Philippine President Duterte arrested at Manila airport on ICC warrant over drug crackdown.", url: "https://www.aljazeera.com/program/newsfeed/2025/3/11/philippines-ex-president-rodrigo-duterte-arrested-on-icc-warrant", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/image-1741677476.jpg?resize=1920%2C1080&quality=80", publishedAt: "2025-03-11T07:18:51Z", content: "NewsFeed\r\nVideo shows former Philippine President Rodrigo Duterte being arrested on a plane at Manila airport on an International Criminal Court warrant, over alleged crimes against humanity during h… [+21 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "ICC takes custody of former Philippines President Rodrigo Duterte", description: "Duterte will be brought before an ICC judge in The Hague in the coming days for an initial appearance, court says.", url: "https://www.aljazeera.com/news/2025/3/12/icc-takes-custody-of-former-philippines-president-rodrigo-duterte", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/AP24281408341398-1741674923.jpg?resize=1920%2C1440", publishedAt: "2025-03-12T18:57:04Z", content: "Former Philippines President Rodrigo Duterte has arrived in the Netherlands and has been surrendered to the custody of the International Criminal Court (ICC) on allegations of crimes against humanity… [+2581 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("rt"), name: "RT"), author: Optional("RT"), title: "The International Criminal Court should be abolished", description: "Those who think the ICC is “a great idea” that just needs some reforms fail to grasp its fundamental problems Read Full Article at RT.com", url: "https://www.rt.com/news/613445-icc-must-be-abolished/", urlToImage: "https://mf.b37mrtl.ru/files/2025.02/article/67c1bde1203027112901a0c5.jpg", publishedAt: "2025-02-28T13:47:03Z", content: "The International Criminal Court (ICC) has long masqueraded as a beacon of justice, a supposedly impartial tribunal holding the world’s worst criminals accountable. But the reality is far from this i… [+6920 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Krebs on Security"), author: Optional("BrianKrebs"), title: "Alleged Co-Founder of Garantex Arrested in India", description: "Authorities in India today arrested the alleged co-founder of Garantex, a cryptocurrency exchange sanctioned by the U.S. government in 2022 for facilitating tens of billions of dollars in money laundering by transnational criminal and cybercriminal organizati…", url: "https://krebsonsecurity.com/2025/03/alleged-co-founder-of-garantex-arrested-in-india/", urlToImage: "https://krebsonsecurity.com/wp-content/uploads/2025/03/Besciokov_Photo.png", publishedAt: "2025-03-11T16:49:02Z", content: "Authorities in India today arrested the alleged co-founder of Garantex, a cryptocurrency exchange sanctioned by the U.S. government in 2022 for facilitating tens of billions of dollars in money laund… [+3106 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Decider"), author: Optional("Samantha Nungesser"), title: "Whoopi Goldberg Confuses Alyssa Farah Griffin By Asking “Who Are The Bad Guys” In Tense Discussion About Israel And Hamas On ‘The View’", description: "\"Hamas are the bad guys,\" Griffin said.", url: "https://decider.com/2025/02/25/whoopi-goldberg-confuses-alyssa-farah-griffin-who-are-bad-guys-the-view/?utm_source=yahoo&amp;utm_campaign=decider&amp;utm_medium=referral", urlToImage: "https://s.yimg.com/ny/api/res/1.2/NkHCnBqF3OL8VmxGuDtQkA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/decider_articles_194/a9f923fe77cdfc864af90c3a54f14085", publishedAt: "2025-02-25T17:31:58Z", content: "Whoopi Goldberg seemingly threw off Alyssa Farah Griffin when she asked, Who are the bad guys? during a tense conversation about the Israel-Hamas conflict on this mornings episode of The View.\r\nSara … [+2307 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Ted Regencia"), title: "Philippines ex-President Rodrigo Duterte arrested on international warrant", description: "The ICC has been probing the case against Duterte since 2018 over his anti-drugs war that killed thousands.", url: "https://www.aljazeera.com/news/2025/3/11/philippines-ex-president-rodrigo-duterte-arrested-on-international-warrant", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/AP17179384555066-1739174820-1741664493.jpg?resize=1200%2C630&quality=80", publishedAt: "2025-03-11T03:44:04Z", content: "Manila, Philippines The office of the President of the Philippines has reported the arrest of the countrys ex-President Rodrigo Duterte after receiving a request from the International Criminal Court… [+1904 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Why is the Philippines\' ex-strongman heading for The Hague?", description: "Rodrigo Duterte is in custody after the ICC issued a warrant accusing him of crimes against humanity.", url: "https://www.bbc.com/news/articles/c6253ly20p4o", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/e457/live/3a5a7f10-fe9b-11ef-b95e-dd2955f18f8f.jpg", publishedAt: "2025-03-11T17:48:45Z", content: "Jonathan HeadSouth East Asia Correspondent\r\nJust short of his 80th birthday, Rodrigo Duterte, a man who once vowed to purge his country through a bloody anti-drugs and crime campaign, found himself o… [+5408 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Philippines’ ex-leader Rodrigo Duterte to make first ICC appearance", description: "Judges in The Hague will inform the former president of the crimes against humanity he is accused of having committed.", url: "https://www.aljazeera.com/news/2025/3/14/philippines-ex-leader-duterte-to-make-first-icc-appearance", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/AP25070186822172-1741779178.jpg?resize=1920%2C1440", publishedAt: "2025-03-14T08:00:47Z", content: "The Philippines former President Rodrigo Duterte will make a first appearance at the International Criminal Court (ICC) to face charges of crimes against humanity in The Hague over his deadly war on … [+2254 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("time"), name: "Time"), author: Optional("ANTHONY IZAGUIRRE / AP"), title: "Former Gov. Andrew Cuomo Launches Political Comeback With a Run for New York City Mayor", description: "In a video announcing his campaign, Cuomo pitched his return as a way to pull the city from social and political crisis.", url: "https://time.com/7263335/andrew-cuomo-political-comeback-new-york-city-mayor-candidacy/", urlToImage: "https://api.time.com/wp-content/uploads/2025/03/AP25060643719971-1.jpg?quality=85&w=1200&h=628&crop=1", publishedAt: "2025-03-01T19:16:01Z", content: "NEW YORK Former New York Gov. Andrew Cuomo announced Saturday that he is running for mayor of New York City, relaunching his political career following a yearslong exile over a barrage of sexual hara… [+6880 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: nil, title: "What’s behind Rodrigo Duterte’s arrest by the ICC?", description: "The former Philippine president is facing charges of crimes against humanity over his \'war on drugs\'.", url: "https://www.aljazeera.com/program/inside-story/2025/3/12/whats-behind-rodrigo-dutertes-arrest-by-the-icc", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/image-1741809684.jpg?resize=1920%2C1061&quality=80", publishedAt: "2025-03-12T20:21:35Z", content: "The former Philippine president is facing charges of crimes against humanity over his war on drugs.The former president of the Philippines is set to stand trial for crimes against humanity in the Hag… [+682 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Venezuelan immigrants deported to El Salvador despite US court ban", description: "Over 200 alleged Tren de Aragua members sent to El Salvador from US amid legal and human rights concerns.", url: "https://www.aljazeera.com/news/2025/3/16/venezuelan-immigrants-deported-to-el-salvador-despite-us-court-ban", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/AP25075583391147-1742155445.jpg?resize=1920%2C1440", publishedAt: "2025-03-16T20:57:38Z", content: "The United States has flown more than 200 immigrants, alleged members of a Venezuelan gang, to be imprisoned in El Salvador, President Nayib Bukele has said, after his US counterpart Donald Trump con… [+4832 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "BBC News"), author: nil, title: "Chaos and unproven theories surround Tates\' release from Romania", description: "The abrupt departure of the Tate brothers by private jet has left a fresh trail of confusion and unanswered questions in its wake.", url: "https://www.bbc.com/news/articles/c99np092vk1o", urlToImage: "https://ichef.bbci.co.uk/news/1024/branded_news/7053/live/61932a20-f5f2-11ef-bd6e-cd71c2e1454a.png", publishedAt: "2025-03-01T00:34:57Z", content: "Andrew Harding\r\nAndrew Tate is accused of human trafficking and sexually exploiting women alongside his brother Tristan\r\nThese were already turbulent times in Romania.\r\nBut as people here navigate th… [+7321 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("time"), name: "Time"), author: Optional("Fabiola Sánchez and Joshua Goodman / AP"), title: "Mexico Extradites Drug Lord Caro Quintero and 28 Other Cartel Figures to U.S.", description: "Mexico has sent Quintero and 28 other cartel figures to the U.S. as the Trump Administration turns up the pressure on drug trafficking organizations.", url: "https://time.com/7262627/mexico-caro-quintero-drug-lord-cartel-leader-extradition-us-trump/", urlToImage: "https://api.time.com/wp-content/uploads/2025/02/caro-quintero.jpg?quality=85&w=1024&h=628&crop=1", publishedAt: "2025-02-28T02:40:00Z", content: "MEXICO CITY Mexico has sent 29 drug cartel figures, including drug lord Rafael Caro Quintero, who was behind the killing of a U.S. DEA agent in 1985, to the United States as the Trump Administration … [+7012 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera Staff"), title: "Judge says Musk and DOGE ‘likely violated’ constitution in USAID shutdown", description: "A federal court issued an injunction on behalf of USAID contractors and employees who filed a complaint against Musk.", url: "https://www.aljazeera.com/news/2025/3/19/judge-says-musk-and-doge-likely-violated-constitution-in-usaid-shutdown", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/AP25068753056388-1742342677.jpg?resize=1920%2C1440", publishedAt: "2025-03-19T00:25:34Z", content: "A federal district judge in Maryland has found that Elon Musk and his Department of Government Efficiency (DOGE) appear to have breached the United States Constitution through their efforts to disman… [+3786 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Blatter and Platini back in Swiss court in long-running legal saga", description: "Former football leaders Sepp Blatter and Michel Platini return to court for new fraud trial over $2m FIFA payment.", url: "https://www.aljazeera.com/sports/2025/3/3/blatter-and-platini-back-in-swiss-court-in-long-running-legal-saga", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/2025-03-03T074059Z_813227706_UP1EL330LC9YI_RTRMADP_3_SOCCER-FIFA-TRIAL-1741001000.jpg?resize=1920%2C1440", publishedAt: "2025-03-03T11:49:01Z", content: "Former football leaders Sepp Blatter and Michel Platini are back in a Swiss court as their new trial on fraud, forgery and misappropriation charges opens.\r\nI am hopeful, ex-FIFA president Blatter, ap… [+3630 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Merz says Netanyahu will be able to visit Germany despite ICC warrant", description: "ICC says states cannot determine \'soundness\' of its decisions as Israeli PM faces warrant on Gaza war crime allegations.", url: "https://www.aljazeera.com/news/2025/2/24/merz-says-netanyahu-will-be-able-to-visit-germany-despite-icc-warrant", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/02/2025-02-24T130739Z_959425017_RC201DABLXJZ_RTRMADP_3_GERMANY-ELECTION-CDU-MERZ-1740407177.jpg?resize=1920%2C1440", publishedAt: "2025-02-24T15:15:03Z", content: "Friedrich Merz, who is expected to be Germanys next chancellor, says he would make sure Israeli Prime Minister Benjamin Netanyahu can visit Germany despite an arrest warrant issued against him by the… [+3805 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Arab nations, rights groups condemn Israel’s decision to block Gaza aid", description: "Several countries say Israeli action violates ceasefire deal as well as international law by using starvation as weapon.", url: "https://www.aljazeera.com/news/2025/3/3/arab-nations-rights-groups-condemn-israels-decision-to-block-gaza-aid", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/2025-03-03T061547Z_983544712_RC225DAQUFR5_RTRMADP_3_ISRAEL-PALESTINIANS-GAZA-RAMADAN-1740985747.jpg?resize=1920%2C1440", publishedAt: "2025-03-03T10:09:31Z", content: "Several Arab nations and rights organisations have condemned Israels decision to halt aid deliveries to the Gaza Strip, calling it a blatant violation of the ceasefire agreement and international law… [+4600 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Vox"), author: Optional("Ian Millhiser"), title: "The Supreme Court seems eager to kill a big lawsuit against gun companies", description: "The nation of Mexico’s lawsuit against several major US gun manufacturers, known as Smith & Wesson Brands v. Estados Unidos Mexicanos, was cursed long before it reached the Supreme Court.  Tuesday’s oral argument in the case only confirmed that. It appears th…", url: "https://www.vox.com/scotus/402486/supreme-court-mexico-smith-wesson-guns-cartels", urlToImage: "https://platform.vox.com/wp-content/uploads/sites/2/2025/03/gettyimages-115734438.jpg?quality=90&strip=all&crop=0%2C3.8720807854735%2C100%2C92.255838429053&w=1200", publishedAt: "2025-03-04T19:04:59Z", content: "Mexican marines escort five alleged drug traffickers of the Zetas drug cartel in front of hand grenades, firearms, cocaine, and military uniforms. | Yuri Cortez/AFP via Getty Images\r\n\n\nThe nation of … [+8781 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Simon Speakman Cordall"), title: "Is Trump the end of the international rules-based order?", description: "Analysts mull if this isn\'t the beginning of the end for the \'rules-based order\', long accused of hypocrisy.", url: "https://www.aljazeera.com/news/2025/3/16/is-trump-the-end-of-the-international-rules-based-order", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/25-1-1741882580.jpg?resize=1620%2C1080&quality=80", publishedAt: "2025-03-16T06:30:39Z", content: "After more than a year of Israeli bombing, tens of thousands of Palestinian deaths, and a humanitarian catastrophe in Gaza, the world was largely united in saying enough is enough.\r\nUnited Nations Ge… [+16243 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "The Intercept"), author: Optional("Jonah Valdez"), title: "Court Temporarily Halts Columbia Activist’s Deportation", description: "A judge said Mahmoud Khalil, the Columbia graduate whose arrest by ICE sparked outrage, couldn\'t be deported before without a court order.\nThe post Court Temporarily Halts Columbia Activist’s Deportation appeared first on The Intercept.", url: "https://theintercept.com/2025/03/10/mahmoud-khalil-ice-arrest-palestine-israel/", urlToImage: "https://theintercept.com/wp-content/uploads/2025/03/AP25069542691613-e1741640961910.jpg?fit=6000%2C3000&w=1200&h=800", publishedAt: "2025-03-10T22:03:42Z", content: "A New York federal court judge ordered Monday that recent Columbia University graduate Mahmoud Khalil cannot be deported from the United States until a further court order. \r\nTo preserve the Courts j… [+6443 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("rt"), name: "RT"), author: Optional("RT"), title: "Duterte’s son vows to ‘fight back’ against father’s ICC arrest", description: "Rodrigo Duterte has been taken to The Hague to face the International Criminal Court on murder charges related to his ‘war on drugs’ Read Full Article at RT.com", url: "https://www.rt.com/news/614336-duterte-son-icc-arrest/", urlToImage: "https://mf.b37mrtl.ru/files/2025.03/article/67d80b0a85f5400aa167e1cd.jpg", publishedAt: "2025-03-17T12:05:42Z", content: "The son of former Philippines President Rodrigo Duterte has vowed to “fight back” against his father’s detention by the International Criminal Court. Sebastian ‘Baste’ Duterte, currently the mayor of… [+1662 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("nbc-news"), name: "NBC News"), author: Optional("Reuters"), title: "Philippine ex-President Duterte to face murder charges at ICC for drug war killings", description: "A plane carrying former Philippine leader Rodrigo Duterte to the International Criminal Court to face charges over his “war on drugs” took off for Rotterdam on Wednesday, after being delayed by a few hours during a layover in Dubai.", url: "https://www.nbcnews.com/news/world/philippine-ex-president-duterte-face-murder-charges-icc-drug-war-rcna195986", urlToImage: "https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/rockcms/2025-03/250312-duterte-mb-1121-12cd5e.jpg", publishedAt: "2025-03-12T11:26:32Z", content: "ROTTERDAM, Netherlands  A plane carrying former Philippine leader Rodrigo Duterte to the International Criminal Court to face charges over his bloody war on drugs took off for Rotterdam on Wednesday,… [+4143 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Vox"), author: Optional("Nicole Narea"), title: "The ugly history behind the obscure law Trump is using for mass deportations", description: "President Donald Trump has invoked an 18th-century wartime law to carry out a large-scale deportation operation.  As he promised on the campaign trail, Trump used the Alien Enemies Act to send hundreds of people with alleged Venezuelan gang ties to El Salvado…", url: "https://www.vox.com/politics/404745/alien-enemies-act-trump-venezuela-history-world-war", urlToImage: "https://platform.vox.com/wp-content/uploads/sites/2/2025/03/gettyimages-2204880949.jpg?quality=90&strip=all&crop=0%2C10.723395278369%2C100%2C78.553209443262&w=1200", publishedAt: "2025-03-17T22:48:51Z", content: "More than 250 suspected gang members arrived in El Salvador by plane, including 238 members of Venezuela’s Tren de Aragua gang and 23 members of the MS-13 gang, who were deported to El Salvador by th… [+4628 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Rolling Stone"), author: Optional("Tim Dickinson"), title: "‘There’s No Second Amendment Right to Sell Guns to the Cartels’", description: "A lawyer in Mexico’s Supreme Court case against gunmakers describes the profitable “iron pipeline” that trafficks U.S. guns to drug cartels.", url: "http://www.rollingstone.com/politics/politics-features/supreme-court-mexico-litigation-gunmakers-arm-cartels-1235296736/", urlToImage: "https://www.rollingstone.com/wp-content/uploads/2025/03/QA-on-Mexico-gun-case.jpg?crop=0px%2C185px%2C1798px%2C1014px&resize=1600%2C900", publishedAt: "2025-03-15T13:30:00Z", content: "Should U.S. gun manufacturers who flood weapons dealers in border states with the guns that drive cartel violence in Mexico be held liable in court?\r\nThe Supreme Courtheard arguments last week about … [+16051 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("cbc-news"), name: "CBC News"), author: nil, title: "UN report accuses Israel of genocidal acts and sexual violence in Gaza", description: "Israel carried out \"genocidal acts\" against Palestinians by systematically destroying women\'s health-care facilities during the conflict in Gaza, and used sexual violence as a war strategy, United Nations experts said in a report on Thursday.", url: "https://www.cbc.ca/news/world/united-nations-israel-gaza-genocidal-acts-sexual-violence-1.7482419", urlToImage: "https://i.cbc.ca/1.7482429.1741871117!/fileImage/httpImage/image.JPG_gen/derivatives/16x9_1180/israel-palestinians-gaza.JPG?im=Resize%3D620", publishedAt: "2025-03-13T13:49:48Z", content: "Israel carried out \"genocidal acts\" against Palestinians by systematically destroying women\'s health-care facilities during the conflict in Gaza, and used sexual violence as a war strategy, United Na… [+3618 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Washington Free Beacon"), author: Optional("Matthew Xiao"), title: "UN Judge Found Guilty of Slavery...", description: "UN Judge Found Guilty of Slavery...\r\n\n \n \n \n (Second column, 11th story, link)\r\n\n \r\n\n \r\n\n \n \n Drudge Report Feed needs your support!   Become a Patron", url: "https://freebeacon.com/latest-news/un-judge-found-guilty-of-slavery/", urlToImage: "https://freebeacon.com/wp-content/uploads/2025/03/Judge-Lydia-Mugambe-Ssali_736x514.jpg", publishedAt: "2025-03-13T18:10:37Z", content: "A United Nations judge was convicted on Thursday of trafficking a young woman to the United Kingdom and forcing her to work as a slave.\r\nUgandan judge Lydia Mugambe, 49, \"exploited and abused\" the vi… [+1221 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Philippine VP Sara Duterte travels to The Hague to help father at ICC", description: "The vice president has described former President Rodrigo Duterte\'s arrest over his deadly drug war as \'oppression\'.", url: "https://www.aljazeera.com/news/2025/3/12/philippine-vp-sara-duterte-travels-to-the-hague-to-help-father-at-icc", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/2025-02-07T043157Z_960146720_RC2FPCALWO52_RTRMADP_3_PHILIPPINES-POLITICS-DUTERTE-1741751948_540032-1741756230.jpg?resize=1200%2C630&quality=80", publishedAt: "2025-03-12T06:03:09Z", content: "Philippine Vice President Sara Duterte, the daughter of former Philippine President Rodrigo Duterte, is on her way to the Netherlands to help her father after he was arrested in Manila on a warrant b… [+3585 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Philippines Senate launches investigation into Duterte’s ICC arrest", description: "Imee Marcos, sister of incumbent President Marcos, leads probe amid political fallout.", url: "https://www.aljazeera.com/news/2025/3/17/philippines-senate-launches-investigation-into-dutertes-icc-arrest", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/8955333-1742198227.jpg?resize=1200%2C675", publishedAt: "2025-03-17T10:01:42Z", content: "The Philippines Senate has announced it will probe the arrest and handover of former President Rodrigo Duterte to the International Criminal Court (ICC).\r\nThe urgent investigation was declared by Sen… [+2477 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("rt"), name: "RT"), author: Optional("RT"), title: "The International Criminal Court is a great idea that doesn’t work", description: "Having an extranational body that maintains justice in the world is fine in theory, but the ICC isn’t that body Read Full Article at RT.com", url: "https://www.rt.com/news/613308-icc-does-not-work/", urlToImage: "https://mf.b37mrtl.ru/files/2025.02/article/67be1cbb203027407143882b.jpg", publishedAt: "2025-02-25T19:41:41Z", content: "The International Criminal Court (ICC) was established with the noble intention of serving as an impartial arbiter of justice, addressing the gravest crimes and holding perpetrators accountable on a … [+5646 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news"), name: "ABC News"), author: Optional("Carson Blackwelder, Angeline Jane Bernabe"), title: "Oscars 2025: The \'Emilia Pérez\' controversy explained", description: "All the controversies surrounding the film \"Emilia Pérez\" explained ahead of the 2025 Oscars.", url: "https://abcnews.go.com/GMA/Culture/oscars-2025-emilia-perez-controversy-explained/story?id=119163111", urlToImage: "https://i.abcnewsfe.com/a/3311ba2f-739d-4d39-8aaf-1868aa3528a4/emilia-perez-1-ht-bb-241218_1734552702618_hpMain_16x9.jpg?w=1600", publishedAt: "2025-02-28T18:02:10Z", content: "\"Emilia Pérez\" was a juggernaut film heading into awards season.\r\nAfter winning the jury prize at the 2024 Cannes Film Festival, as well as a historic best actress prize for stars Karla Sofía Gascon,… [+9839 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("cbs-news"), name: "CBS News"), author: nil, title: "Ex-Philippines President Duterte arrested on ICC warrant over drug killings", description: "Former Philippine President Rodrigo Duterte has been arrested on order of the International Criminal Court in connection with a case of crime against humanity filed against him, the Philippine government said.", url: "https://www.cbsnews.com/news/rodrigo-duterte-arrested-icc-warrant-drug-killings-former-philippines-president/", urlToImage: "https://assets1.cbsnewsstatic.com/hub/i/r/2025/03/11/c7d93862-1506-4fd9-8be6-ef70a549c111/thumbnail/1200x630/f9e426b95cc6b37d7a41e11e0ad32276/gettyimages-2203907823.jpg?v=23322f4fbf0a01b337c42258c443e9ac", publishedAt: "2025-03-11T08:16:54Z", content: "Manila, Philippines — Former Philippine President Rodrigo Duterte was arrested at Manila\'s international airport Tuesday on order of the International Criminal Court in connection with a case of crim… [+4857 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "NATO’s Rutte backs Bosnia after separatist moves by Serbian region", description: "Visit to Sarajevo comes after Bosnian Serb leaders bar federal judicial authorities and police from Republika Srpska.", url: "https://www.aljazeera.com/news/2025/3/10/natos-rutte-slams-unacceptable-threats-to-bosnias-security", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/AP25069513647350-1741617996.jpg?resize=1200%2C675", publishedAt: "2025-03-10T17:29:07Z", content: "NATO Secretary-General Mark Rutte has pledged the military alliances unwavering support for Bosnia and Herzegovinas federal government after a series of separatist moves from Bosnian Serb leaders.\r\nR… [+3456 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Theregister.com"), author: Optional("Brandon Vigliarolo"), title: "Time to ditch US tech for homegrown options, says Dutch parliament", description: "Trump administration \'has made the call for tech sovereignty an urgent geopolitical issue\'\nNot content to wait for open letters to influence the European Commission, Dutch parliamentarians have taken matters into their own hands by passing eight motions urgin…", url: "https://www.theregister.com/2025/03/19/dutch_parliament_us_tech/", urlToImage: "https://regmedia.co.uk/2023/03/09/dutch_shutterstock.jpg", publishedAt: "2025-03-19T17:02:11Z", content: "Not content to wait for open letters to influence the European Commission, Dutch parliamentarians have taken matters into their own hands by passing eight motions urging the government to ditch US-ma… [+4751 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Wonkette.com"), author: Optional("Doktor Zoom"), title: "JUSTICE NICE TIME: Former Philippines President Duterte On Way To Find Out In The Hague", description: "Don\'t get your hopes up about Trump. The US never joined the International Criminal Court treaty.", url: "https://www.wonkette.com/p/justice-nice-time-former-philippines", urlToImage: "https://substackcdn.com/image/fetch/w_1200,h_600,c_fill,f_jpg,q_auto:good,fl_progressive:steep,g_auto/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F3fb8b079-7c68-409e-87e7-11e3659cbf58_800x460.jpeg", publishedAt: "2025-03-11T20:20:42Z", content: "In something of a surprise to a world thats seen a lot of autocrats getting away with a lot of human rights abuses recently, former Philippines President Rodrigo Duterte was arrested by Philippine Na… [+5770 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Deadline"), author: Optional("Matthew Carey"), title: "Filmmaker Lauren Greenfield On ‘Social Studies,’ Receiving Career Tribute, And Arrest Of Ex-Philippines Pres. Rodrigo Duterte – Thessaloniki Int’l Documentary Festival", description: "Award-winning filmmaker Lauren Greenfield is pulling something like quadruple duty at the Thessaloniki International Documentary Festival in Greece. Not only is she serving on the International Competition jury – alongside Greek filmmaker Dimitris Athiridis a…", url: "http://deadline.com/2025/03/lauren-greenfield-interview-thessaloniki-tribute-1236326400/", urlToImage: "https://deadline.com/wp-content/uploads/2025/03/LAUREN_GREENFIELD.jpeg?w=1024", publishedAt: "2025-03-14T13:05:08Z", content: "Award-winning filmmaker Lauren Greenfield is pulling something like quadruple duty at the Thessaloniki International Documentary Festival in Greece.\r\nNot only is she serving on the International Comp… [+6455 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("abc-news-au"), name: "ABC News (AU)"), author: Optional("ABC News"), title: "Philippines ex-president Rodrigo Duterte appears at Hague via videolink", description: "Former Philippine president Rodrigo Duterte appeared at the International Criminal Court in The Hague on Friday, via videolink, where he faces murder allegations stemming from his \"war on drugs\".", url: "https://www.abc.net.au/news/2025-03-15/philippine-ex-president-rodrigo-duterte-appears-by-video-to-icc/105055188", urlToImage: "https://live-production.wcms.abc-cdn.net.au/3b6f61b41d6db904a6722620c90fc2b1?impolicy=wcms_watermark_news&cropH=2813&cropW=5000&xPos=0&yPos=260&width=862&height=485&imformat=generic", publishedAt: "2025-03-14T17:18:08Z", content: "Former Philippine President Rodrigo Duterte has appeared in the International Criminal Court for the first time on charges of crimes against humanity. \r\nMr Duterte appeared via videolink at the Hague… [+6467 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "DW (English)"), author: Optional("Deutsche Welle"), title: "Duterte arrested at Manila airport", description: "Philippine police served an Interpol arrest warrant from the International Criminal Court for former president.", url: "https://www.dw.com/en/duterte-arrested-at-manila-airport/a-71883571", urlToImage: "https://static.dw.com/image/60539306_6.jpg", publishedAt: "2025-03-11T03:28:00Z", content: "Former Philippines President Rodrigo Duterte has been arrested at Manila airport on Tuesday the government said. \r\nThe International Criminal Court (ICC) issued an arrest warrant over his \"war on dru… [+105 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "TheBlaze"), author: Optional("Julio Rosas"), title: "\'Loving my job\': Homan relishes Trump admin catapulting criminal aliens into foreign jails, to Obama judge\'s chagrin", description: "The Trump administration has strong words for the federal judge who ordered the deportation flights of alleged gang members to return to the United States after the president invoked the Alien Enemies Act of 1798 to speed up the number of deportations.The Whi…", url: "https://www.theblaze.com/news/loving-my-job-homan-relishes-trump-admin-catapulting-criminal-aliens-into-foreign-jails-to-obama-judge-s-chagrin", urlToImage: "https://www.theblaze.com/media-library/loving-my-job-homan-relishes-trump-admin-catapulting-criminal-aliens-into-foreign-jails-to-obama-judge-s-chagrin.jpg?id=57963110&width=1200&height=600&coordinates=0%2C85%2C0%2C86", publishedAt: "2025-03-17T16:41:07Z", content: "The Trump administration has strong words for the federal judge who ordered the deportation flights of alleged gang members to return to the United States after the president invoked the Alien Enemie… [+2490 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Londoncentric.media"), author: Optional("Jim Waterson"), title: "Kitchen foil and Algerian markets: When your phone is stolen in London", description: "Plus: Fake Forrest Gump-themed shrimp restaurant payout — and pub survives licence review after drinkers disrupt a child\'s music practice.", url: "https://www.londoncentric.media/p/kitchen-foil-and-algerian-markets", urlToImage: "https://substackcdn.com/image/fetch/w_1200,h_600,c_fill,f_jpg,q_auto:good,fl_progressive:steep,g_auto/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F00a5466d-a438-49af-aab0-e40ac0534b67_1170x1327.png", publishedAt: "2025-03-07T16:20:37Z", content: "There was a lot of coverage of this weeks London Centric story on Lime bike safety, with ITV London running the reporting on its evening bulletins and national news outlets following it up. London Ce… [+18200 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Techdirt"), author: Optional("Tim Cushing"), title: "Cellebrite Dumps AI Into Its Cell Phone-Scraping Tool So Cops Can Hallucinate Evidence", description: "I honestly don’t understand this compunction to break things that are already working fine. Axon makes body cameras (and Tasers!), but it simply wasn’t enough to equip cops with cameras and cop shops with expensive service contracts. No, the company insisted …", url: "https://www.techdirt.com/2025/03/18/cellebrite-dumps-ai-into-its-cell-phone-scraping-tool-so-cops-can-hallucinate-evidence/", urlToImage: "https://www.techdirt.com/wp-content/themes/techdirt/assets/images/td-rect-logo-white.png", publishedAt: "2025-03-18T17:46:55Z", content: "from the why-does-anyone-need-this? dept\r\nI honestly don’t understand this compunction to break things that are already working fine. Axon makes body cameras (and Tasers!), but it simply wasn’t enoug… [+4667 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "The Intercept"), author: Optional("Bernadette Ellorin, Azadeh Shahshahani"), title: "Trump and Biden Financed Duterte’s Crimes. They Too Should Pay for It.", description: "Will the international community hold accountable those who financed and were complicit in Rodrigo Duterte’s bloody, state-sanctioned killing campaign?\nThe post Trump and Biden Financed Duterte’s Crimes. They Too Should Pay for It. appeared first on The Inter…", url: "https://theintercept.com/2025/03/19/rodrigo-duterte-icc-arrest-accountability/", urlToImage: "https://theintercept.com/wp-content/uploads/2025/03/GettyImages-2204469160.jpg?fit=%2C&w=1200&h=800", publishedAt: "2025-03-19T17:44:49Z", content: "People call for justice for drug war victims in Quezon City, Philippines, on March 14, 2025, as former President Rodrigo Duterte faces trial at the ICC. Photo: Daniel Ceng/Anadolu via Getty Images\r\nT… [+4648 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Niko Vorobyov"), title: "In wartime, focus on ‘traditional values’ imperils Russia’s LGBTQ community", description: "Moscow is increasingly cracking down on the minority community, forcing some to flee.", url: "https://www.aljazeera.com/news/2025/3/3/in-wartime-focus-on-traditional-values-imperils-russias-lgbtq-community", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/2020-07-15T181838Z_1803305824_RC2UTH9VO7V2_RTRMADP_3_RUSSIA-PUTIN-PROTESTS-1741005236.jpg?resize=1920%2C1440", publishedAt: "2025-03-03T12:35:40Z", content: "In his early 20s, Mikhail* (not his real name), a gay man from the city of Ufa in Russia, was doing what he loved: drag performances.\r\nI was going on tour, to competitions; I met new artists and plan… [+8009 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Al Jazeera"), title: "Thailand deports 48 Uighurs to China despite human rights concerns", description: "Thailand deports 48 Uighurs to China, prompting outrage from activists over risks of torture and human rights abuses.", url: "https://www.aljazeera.com/news/2025/2/27/thailand-deports-48-uighurs-to-china-despite-human-rights-concerns", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/02/2014-04-10T120000Z_2038018098_GM1EA4B03VX01_RTRMADP_3_THAILAND-ROHINGYA-1740655645.jpg?resize=1920%2C1440", publishedAt: "2025-02-27T12:24:59Z", content: "Thailand has deported at least 40 Uighurs to Chinas Xinjiang region despite strong objections from activists and human rights groups, who warned that the deportees were at risk of torture, ill-treatm… [+2872 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "PetaPixel"), author: Optional("Pesala Bandara"), title: "Selfies Lead to Arrest of Men Who Allegedly Robbed Pro Athletes’ Homes", description: "Selfies led to the arrest of criminals allegedly responsible for a string of high-profile burglaries targeting celebrity athletes’ homes last year.\n[Read More]", url: "https://petapixel.com/2025/02/27/selfies-lead-to-arrest-of-men-who-allegedly-robbed-pro-athletes-homes/", urlToImage: "https://petapixel.com/assets/uploads/2025/02/thieves-selfie-athletes-home.jpg", publishedAt: "2025-02-27T14:27:02Z", content: "In a selfie, three men pose with a collection of watches and a safe allegedly taken from the home of Milwaukee Bucks player Bobby Portis. (A fourth man is also seen in the photo, but his face is reda… [+3298 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Vox"), author: Optional("Aja Romano"), title: "Natalia Grace, the orphan whose bizarre abandonment made her a reality star, explained", description: "Late in Hulu’s new series Good American Family comes a moment of irony that’s become all too familiar in true crime docudramas. The fictionalized Natalia Grace Barnett — at this point in the story a teen, being played by the 27-year-old Imogen Faith Reid — gl…", url: "https://www.vox.com/true-crime/405454/natalia-grace-good-american-family-hulu-series-explained", urlToImage: "https://platform.vox.com/wp-content/uploads/sites/2/2025/03/172379_0054_V1.jpg?quality=90&strip=all&crop=0%2C17.277486910995%2C100%2C65.44502617801&w=1200", publishedAt: "2025-03-21T21:05:53Z", content: "Imogen Faith Reid in Good American Family. | ﻿Disney/Ser Baffo\r\n\n\nLate in Hulu’s new series Good American Family comes a moment of irony that’s become all too familiar in true crime docudramas. The f… [+13352 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("espn"), name: "ESPN"), author: Optional("Jeff Legwold"), title: "Broncos fire assistant after alleged assault of cop", description: "Broncos outside linebackers coach Michael Wilhoite was fired Wednesday following his arrest last week for allegedly punching a police officer.", url: "https://www.espn.com/nfl/story/_/id/44128390/broncos-fire-olb-coach-michael-wilhoite-alleged-assault", urlToImage: "https://a3.espncdn.com/combiner/i?img=%2Fphoto%2F2025%2F0224%2Fr1456000_1296x729_16%2D9.jpg", publishedAt: "2025-03-06T01:19:32Z", content: "ENGLEWOOD, Colo. -- The Denver Broncos fired outside linebackers coach Michael Wilhoite on Wednesday, just over a week after he was arrested for allegedly punching a police officer at Denver Internat… [+1790 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Vox"), author: Optional("Abdallah Fayyad"), title: "What does Israel’s “right to self-defense” actually mean?", description: "From the start, the ceasefire between Israel and Hamas has been extremely fragile. Since the agreement took effect in January, Israel has only escalated its raids in the West Bank, displacing more than 40,000 Palestinians — the highest level of displacement t…", url: "https://www.vox.com/world-politics/403719/israel-right-to-self-defense-gaza-palestine-international-law", urlToImage: "https://platform.vox.com/wp-content/uploads/sites/2/2025/03/gettyimages-2202977390.jpg?quality=90&strip=all&crop=0%2C10.736201055355%2C100%2C78.527597889289&w=1200", publishedAt: "2025-03-14T13:40:54Z", content: "Israeli army soldiers walk past tanks near the Gaza Strip. | Menahem Kahana/AFP via Getty Images\r\n\n\nFrom the start, the ceasefire between Israel and Hamas has been extremely fragile. Since the agreem… [+20558 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Ted Regencia"), title: "Why has the Philippines arrested ex-president Duterte on ICC warrant?", description: "Families of victims, human rights groups call for \'expeditious surrender and transfer of custody\' of Duterte to the ICC.", url: "https://www.aljazeera.com/news/2025/3/11/why-has-the-philippines-arrested-ex-president-duterte-on-icc-warrant", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/03/AFP__20250311__36ZM8UL__v1__HighRes__PhilippinesPoliticsDuterteArrest-1741683381.jpg?resize=1920%2C1440", publishedAt: "2025-03-11T11:53:04Z", content: "Manila, Philippines Almost three years after leaving the presidency, former President Rodrigo Duterte has been arrested by Philippine authorities in Manila, upon the request of the International Crim… [+8067 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Sputnikglobe.com"), author: Optional("Sputnik International"), title: "Who’s Criticizing the ICC and Why?", description: "The International Criminal Court has come under fire from a broad array of critics over its lavish spending, inefficiency and politicized prosecutorial style.", url: "https://sputnikglobe.com/20250227/whos-criticizing-the-icc-and-why-1121606620.html", urlToImage: "https://cdn1.img.sputnikglobe.com/images/sharing/article/eng/1121606620.jpg?11185557661740743880", publishedAt: "2025-02-27T11:56:00Z", content: "Get the latest news from around the world, live coverage, off-beat stories, features and analysis.\r\nhttps://sputnikglobe.com/20250227/whos-criticizing-the-icc-and-why-1121606620.html\r\nWhos Criticizin… [+2681 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "Sputnikglobe.com"), author: Optional("Sputnik International"), title: "$1.5 Billion for 32 Trials: How Efficient is the International Criminal Court?", description: "The International Criminal Court (ICC) was founded in 2002 to prosecute war crimes, genocide and crimes against humanity. But it faces criticism for wasting money, inefficiency and selective justice.", url: "https://sputnikglobe.com/20250227/15-billion-for-32-trials-how-efficient-is-the-international-criminal-court-1121606763.html", urlToImage: "https://cdn1.img.sputnikglobe.com/images/sharing/article/eng/1121606763.jpg?10796031711740744941", publishedAt: "2025-02-27T14:13:00Z", content: "Get the latest news from around the world, live coverage, off-beat stories, features and analysis.\r\nhttps://sputnikglobe.com/20250227/15-billion-for-32-trials-how-efficient-is-the-international-crimi… [+2980 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "NPR"), author: Optional("NPR"), title: "Former Philippines president Rodrigo Duterte appears before the ICC", description: "Former Philippines president Rodrigo Duterte made his first appearance at the International Criminal Court on Friday to face charges of crimes against humanity.", url: "https://www.npr.org/2025/03/16/nx-s1-5328610/former-philippines-president-rodrigo-duterte-appears-before-the-icc", urlToImage: "https://media.npr.org/include/images/facebook-default-wide-s1400-c100.jpg", publishedAt: "2025-03-16T22:07:55Z", content: "Former Philippines president Rodrigo Duterte made his first appearance at the International Criminal Court on Friday to face charges of crimes against humanity."), NewsWave.ArticleResponse(source: NewsWave.Source(id: nil, name: "International Business Times"), author: Optional("Richard CARTER"), title: "Duterte\'s First ICC Appearance Set For Friday: Court", description: "Rodrigo Duterte\'s first appearance at the International Criminal Court has been set for Friday, the court said, as the former Philippines president faces crimes against humanity charges over his deadly war on drugs.", url: "https://www.ibtimes.com/dutertes-first-icc-appearance-set-friday-court-3766220", urlToImage: "https://d.ibtimes.com/en/full/4586807/high-profile-rodrigo-duterte-case-also-comes-critical-moment-icc-it-faces-unprecedented.jpg", publishedAt: "2025-03-13T21:45:21Z", content: "Rodrigo Duterte\'s first appearance at the International Criminal Court has been set for Friday, the court said, as the former Philippines president faces crimes against humanity charges over his dead… [+3327 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("al-jazeera-english"), name: "Al Jazeera English"), author: Optional("Dominic Kirui"), title: "‘Very worrying’: Fear stalks Kenya as dozens of government critics abducted", description: "Rights groups blame \'state agents\' for abductions of more than 80 people since June 2024, with dozens still missing.", url: "https://www.aljazeera.com/features/2025/3/4/very-worrying-fear-stalks-kenya-as-dozens-of-government-critics-abducted", urlToImage: "https://www.aljazeera.com/wp-content/uploads/2025/02/2025-01-06T095531Z_607817961_RC2KZBA3173Y_RTRMADP_3_KENYA-PROTESTS-RIGHTS-1739547578.jpg?resize=1920%2C1440", publishedAt: "2025-03-04T13:40:16Z", content: "Nairobi, Kenya On the afternoon of August 19, brothers Jamil and Aslam Longton had just had lunch at home and were heading back to work at the cybercafe they run in Kitengela town, on the outskirts o… [+15753 chars]"), NewsWave.ArticleResponse(source: NewsWave.Source(id: Optional("cbs-news"), name: "CBS News"), author: Optional("CBS News"), title: "Former Philippines President Rodrigo Duterte arrested over accusations of crimes against humanity", description: "Former Philippines President Rodrigo Duterte has been arrested after the International Criminal Court accused the 79-year-old of crimes against humanity for his administration\'s deadly \"war on drugs\" campaign. Human rights groups say that crackdown on illegal…", url: "https://www.cbsnews.com/video/former-philippines-president-rodrigo-duterte-arrested-over-accusations-of-crimes-against-humanity/", urlToImage: "https://assets2.cbsnewsstatic.com/hub/i/r/2025/03/11/ab07794c-7a47-44d3-9db2-6feefca8cd3c/thumbnail/1200x630/04431ab7c815a54ea456e9daef78ee85/cbsn-fusion-former-philippines-president-rodrigo-duterte-arrested-over-accusations-of-crimes-against-humanity-thumbnail.jpg?v=23322f4fbf0a01b337c42258c443e9ac", publishedAt: "2025-03-11T15:42:00Z", content: "Watch CBS News\r\nCopyright ©2025 CBS Interactive Inc. All rights reserved.\r\nGet browser notifications for breaking news, live events, and exclusive reporting.\r\nNot NowTurn On")])
}
