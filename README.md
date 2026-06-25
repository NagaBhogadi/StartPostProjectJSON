# StartPostProjectJSON

A UIKit-based iOS application that demonstrates fetching and displaying JSON data from a REST API using the MVVM architecture and programmatic UI.

## Features

- Fetches post data from a REST API
- JSON parsing using Codable
- MVVM Architecture
- Programmatic UIKit UI
- UITableView to display posts
- Custom UITableViewCell
- NetworkManager for API calls
- Error handling
- Clean project structure
- Search Posts: Added search bar support to filter loaded posts by title using MVVM architecture.

## Technologies Used

- Swift
- UIKit
- URLSession
- Codable
- MVVM
- Auto Layout
- Xcode

### Search Functionality

Added `UISearchController` to the Post screen.  
Users can now search posts by title. The filtering logic is handled inside `ProductViewModel`, keeping the ViewController clean and following the MVVM pattern.

## 📱 App Screenshot
## Screenshot

<img width="300" height="700" alt="Simulator Screenshot - iPhone 17 Pro - 2026-06-25 at 18 13 29" src="https://github.com/user-attachments/assets/885de685-04fc-4f82-b13f-329da5015403" />

## 📱 Sample Vedio

<img width="295" height="640" alt="Simulator Screen Recording - iPhone 17 Pro - 2026-06-25 at 18 13 24" src="https://github.com/user-attachments/assets/175a8d09-6c59-480b-af29-c031287cf546" />


## Project Structure

```
StartPostProjectJSON
│
├── Model
├── View
├── ViewModel
├── Network
├── Controller
├── Assets
└── Supporting Files
```

## API

Example API:

https://jsonplaceholder.typicode.com/posts

## Screens

- Post List Screen
- Loading State
- Error Handling

## Learning Objectives

This project demonstrates:

- REST API Integration
- JSON Decoding
- URLSession
- MVVM Design Pattern
- UITableView
- Programmatic Auto Layout
- Clean Code Organization

## Future Improvements

- Pull to Refresh
- Search Posts
- Pagination
- Post Details Screen
- Unit Testing

## Author

**Naga Rajitha Bhogadi**

GitHub:
https://github.com/NagaBhogadi
