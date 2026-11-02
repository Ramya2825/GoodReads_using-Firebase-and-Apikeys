# 📚 Goodreads – Flutter Book Application

Goodreads is a Flutter-based book application developed as a practice project to improve my mobile application development skills. This application combines modern UI design, Firebase Authentication, REST API integration, and JSON data handling to provide a dynamic book browsing experience.
Users can create an account, log in, explore different books, and view detailed information about each book.


## 🚀 **Features**

- **User Signup:** Register new users using Firebase Authentication.
- **User Login:** Secure login using email and password.
- **Firebase Authentication:** Manage user authentication and login sessions.
- **Book Listing:** Display a collection of books dynamically.
- **Book Details:** View detailed information about selected books.
- **REST API Integration:** Fetch book information from MockAPI.
- **JSON Data Handling:** Parse and display dynamic JSON data.
- **Screen Navigation:** Navigate between login, signup, home, and book details pages.
- **Dynamic Content:** Display book information such as title, author, genre, and rating.


## 🛠️ **Technologies Used**

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform UI development |
| Dart | Programming language |
| Firebase Authentication | User login and signup |
| MockAPI | Book data storage and API |
| REST API | Fetching book information |
| JSON | Data exchange and parsing |
| HTTP Package | API communication |
| Visual Studio Code | Development environment |


## 🏗️ **Project Architecture**

The application follows a simple layered architecture to separate UI, authentication, and API data handling.

```text
              GOODREADS APP
                    |
                main.dart
                    |
          Firebase Initialization
                    |
             Authentication
                    |
              Firebase Auth
                    |
              Login / Signup
                    |
                Home Page
                    |
             HTTP API Request
                    |
                  MockAPI
                    |
                 JSON Data
                    |
               JSON Decoding
                    |
              Book List Screen
                    |
               Select a Book
                    |
               Book Details
                    |
          Display Book Information
```

### **Architecture Explanation**

**1. Presentation Layer**
- Login Page
- Signup Page
- Home Page
- Book Details Page

Responsible for displaying the application UI and handling user interactions.

**2. Authentication Layer**
- Firebase Authentication
- Email and Password Authentication
- User Registration
- User Login

Responsible for user authentication and account management.

**3. Data Layer**
- MockAPI
- REST API
- HTTP Requests
- JSON Parsing

Responsible for fetching book data from the API and converting JSON responses into Dart data.


## 📂 **Project Structure**

```text
goodreads/
│
├── android/
├── ios/
├── web/
│
├── lib/
│   │
│   ├── main.dart
│   │
│   ├── login_page.dart
│   ├── signup_page.dart
│   │
│   ├── homepage.dart
│   ├── bookdetails.dart
│   │
│   ├── firebase_options.dart
│   │
│   └── services/
│       └── api_service.dart
│
├── assets/
│   └── images/
│
├── test/
│
├── pubspec.yaml
├── pubspec.lock
├── analysis_options.yaml
└── README.md
```

### **File Descriptions**

| File | Description |
|---|---|
| `main.dart` | Application entry point and Firebase initialization |
| `login_page.dart` | Handles user login |
| `signup_page.dart` | Handles new user registration |
| `homepage.dart` | Displays the available books |
| `bookdetails.dart` | Displays selected book information |
| `firebase_options.dart` | Firebase platform configuration |
| `api_service.dart` | Handles API communication (if separated into this file) |
| `pubspec.yaml` | Manages project dependencies |


## 🔐 **Firebase Authentication**

Firebase Authentication is integrated to manage user accounts.

**Signup:**
- Users enter their registration details.
- Firebase creates a new account using email and password.

**Login:**
- Existing users enter their email and password.
- Firebase verifies the credentials.
- After successful authentication, users navigate to the Home Page.


## 🌐 **MockAPI Integration**

MockAPI is used to store and manage book information in JSON format.

The Flutter application sends HTTP requests to the MockAPI endpoint and retrieves the available book details.

### **Book API Fields**

| Field | Description |
|---|---|
| title | Book title |
| author_name | Author name |
| price | Book price |
| image_url | Book cover image |
| description | Book description |
| genre | Book category |
| language | Book language |
| pages | Total number of pages |
| publisher | Publisher name |
| published_year | Publication year |
| rating | Book rating |
| content | Book content |

### **API Integration Process**

1. Create book records in MockAPI.
2. Store book information as JSON data.
3. Send HTTP GET requests from Flutter.
4. Decode the JSON response using `jsonDecode()`.
5. Display the retrieved information in the application UI.
6. Pass the selected book data to the Book Details Page.


## 📱 **Application Flow**

```text
        Start Application
               |
           Login Page
               |
          Signup / Login
               |
      Firebase Authentication
               |
      Authentication Success
               |
            Home Page
               |
          Fetch Book Data
               |
             MockAPI
               |
          Display Books
               |
          Select a Book
               |
        Book Details Page
               |
      Display Book Information
```

## 📖 **Book Details Screen**

The Book Details page displays:

- Book Cover Image
- Book Title
- Author Name
- Description
- Genre
- Language
- Price
- Number of Pages
- Publisher
- Published Year
- Rating
- Book Content


## 📦 **Dependencies**

The main packages used in this project include:

```yaml
dependencies:
  flutter:
    sdk: flutter

  firebase_core: any
  firebase_auth: any
  http: any
```

## 🎯 **Learning Outcomes**

Through this project, I gained practical experience in:

- Developing mobile application interfaces using Flutter and Dart.
- Implementing Firebase Authentication for login and signup.
- Connecting Flutter applications with REST APIs.
- Creating and managing JSON data using MockAPI.
- Fetching API responses using HTTP requests.
- Understanding JSON decoding and dynamic data handling.
- Passing data between multiple screens.
- Building a multi-screen Flutter application.
- Organizing application code into separate files.


## 🔮 **Future Enhancements**

- Add book search functionality.
- Implement book category filtering.
- Add a wishlist and favorites section.
- Implement reading progress tracking.
- Add user profile management.
- Provide full-length reading content for legally available books.
- Add a personalized book recommendation feature.

