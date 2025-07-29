
# find_job_app
=======
# 🧳 Workly – Find Jobs Effortlessly
>>>>>>> 87d9186 (Add readme and push to v1.0.1-beta.1)

**Workly** is a modern job search application built with Flutter, designed to help users discover job opportunities with ease. Users can sign in using their **Google account** for a personalized experience with special roles, or continue as a **guest** for quick browsing.

---

## 🚀 Features

- 🔎 **Search jobs** via the [JSearch API on RapidAPI](https://rapidapi.com/)
- 🔐 **Google Sign-In authentication** (via Firebase)
- 👤 **Guest access** for quick, anonymous browsing
- 🧠 **Clean Architecture** implementation
- ⚙️ **Riverpod** as the state management solution
- 📱 Cross-platform app (Android & iOS)

---

## 📸 Screenshots

*You can add screenshots here later to showcase key screens like search results, login, job details, etc.*

---

## 📂 Project Structure

The app follows a Clean Architecture structure for maintainability and scalability:

lib/
├── core/
│ ├── constants/
│ ├── network/
│ └── utils/
├── data/
│ ├── datasources/
│ ├── models/
│ └── repositories/
├── domain/
│ ├── entities/
│ ├── repositories/
│ └── usecases/
├── presentation/
│ ├── pages/
│ ├── providers/
│ └── controller/
├── routes/
│ └── app_routes.dart
└── main.dart


---

## 📡 API Integration

Workly integrates with the [JSearch API](https://rapidapi.com/) to fetch real-time job data, including:

- Job title & description  
- Company name & logo  
- Location  
- Employment type  
- Estimated salary (if available)  
- Application links  

---

## 🔐 Authentication

Workly supports **Google Sign-In** using Firebase Authentication.

- Authenticated users may receive additional role-based features (e.g., saved jobs, bookmarks)
- Guest users can use the app without login, with limited functionality

---

## 🛠️ Tech Stack

| Technology       | Role                                      |
|------------------|-------------------------------------------|
| Flutter          | UI framework                              |
| Riverpod         | State management                          |
| Firebase Auth    | Google Sign-In authentication             |
| Dio              | HTTP requests                             |
| JSearch API      | Job data provider                         |
| Freezed & JsonSerializable | Data modeling and parsing      |
| Clean Architecture | Separation of concerns + scalability    |

---
