# NewsWave – a gloabl news iOS application

**NewsWave** is a simple yet powerful iOS news application that enables users to easily explore and bookmark their favorite news articles. Upon opening the app, users are presented with up-to-date global news stories seamlessly fetched from a remote API.

The main screen features a searchable and filterable news feed, allowing users to quickly locate stories by keyword or category. Selecting an article opens a detailed view, where users can conveniently add it to their personalized bookmarks. Bookmarked articles are neatly organized in a dedicated tab, providing effortless access to users’ favorite news anytime.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Requirements](#requirements)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Room for Improvement](#room-for-improvement)

---

## Overview
**Purpose**: This project is designed to showcase a wide variety of fundamental iOS development skills, including:
- Networking with `Alamofire`
- Swift structured concurrency (`async`/`await`)
- Decoding JSON via `Codable`
- UIKit 
- `AutoLayout` for stunning user interface design
- Advanced data persistence using `SwiftData`
- Proper separation of responsibilities as per `MVP` architecture design pattern
- Dependency Injection using `Swinject`
- `Cocoapods` for package management

**Core functionalities**:
1. 📰 Top Headlines Tab
- Displays a scrollable list of global news articles.
	- Each article cell includes:
	  - ✅ Article photo 
	  - ✅ Article Title
	  - ✅ Artickle brief description
	  - ✅ Article source
	  - ✅ Article author
	  - ✅ Published date in long date format for the most accurate infomration
2. ️🔍 Search Tab
   -  Provides search functionality by article title.
   - Each article cell includes:
	  - ✅ Article photo 
	  - ✅ Article Title
	  - ✅ Artickle brief description
	  - ✅ Article source
	  - ✅ Article author
	  - ✅ Published date in long date format for the most accurate infomration
3. 🔖 Bookmarks Tab
   - Lists all bookmarked articles.
   - Each article cell includes:
	  - ✅ Article photo 
	  - ✅ Article Title
	  - ✅ Artickle brief description
	  - ✅ Article source
	  - ✅ Article author
	  - ✅ Published date in long date format for the most accurate infomration
   - No search or filter functionality (simple, quick access).
---

## Features
- **Global news catalog**  
  Fetched from [NewsAPI](https://newsapi.org/) using `Alamofire`
- **Swift Concurrency**  
  Utilizes `async/await` to simplify network call syntax and handle concurrency safely.

---

## Architecture
This app is created with clear separation of responsibilities in mind using the [MVP design pattern](https://medium.com/@gbrigens/swift-mvp-a-step-by-step-guide-for-clean-code-869ec8eb4b22).

---

## Requirements
1. Xcode **16** or higher.
2. iOS **18** or higher.

---

## Getting Started

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/echolumaque/NewsWave.git
   cd your-newswave-project-path
   
2. **Open the Project**
   - Double-click on NewsWave.xcworkspace or open it via Xcode.

3.	**Build & Run**
  - Select the appropriate iOS Simulator or a real device in Xcode’s scheme.
  - Press ⌘ + R (Run).


## Usage
1.	Launch the App
  - You’ll see lots of news articles in the `Top Headlines` tab
2.	Tap an article
  - Tapping an article opens the full news using `SFSafariViewController`.
3.	Enjoy the news article
  - Use it as a reference, or inform yourself with the selected news article.
  
  
## Room for Improvement
- Better Error Handling: Show a user-friendly message if the network fails.
- Caching: Implement image or fact caching to reduce repetitive network calls.
- Testing & Mocks: Expand unit test coverage, especially around network failures or decoding edge cases.
- Loading animations: Show a loading indicator as network calls may take some time to arrive.
