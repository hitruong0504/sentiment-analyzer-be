# Sentiment Analyzer Application 🌟📝

## Overview  
Sentiment Analyzer Application is a powerful AI-driven tool that analyzes text feedback and determines its sentiment (positive, neutral, or negative). It leverages **GPT-4o** for sentiment analysis and is built using **Spring Boot** (backend) and **Vite React** (frontend).  

## Features  
✅ AI-powered sentiment analysis using GPT-4o  
✅ REST API for easy integration  
✅ Scalable and containerized with Docker  
✅ Built with Spring Boot & Vite React  

## Getting Started  

### 🔹 Clone the Repository 📂  
```sh
git clone https://github.com/hitruong0504/sentiment-analyzer-be.git
cd sentiment-analyzer-be
```

### 🔹 Backend (Spring Boot) Setup ⚙️  
1. 📁 Navigate to the backend folder:  
   ```sh
   cd sentiment-analyzer-be
   ```
2. ▶️ Build and run the Spring Boot application:  
   ```sh
   ./mvnw spring-boot:run
   ```
3. 🌍 The backend will start on `http://localhost:8080`.

## 🛠️ API Usage  
The application provides a REST API to manage user feedback and analyze sentiment.

### **🔹 Get All Feedbacks 📜**  
- **Endpoint:** `/api/feedback`  
- **Method:** `GET`  
- **Description:** Retrieves all feedback entries from the database.  
- **Response Example:**  
```json
[
  {
    "id": 1,
    "content": "It is a great product",
    "sentimentScore": 0.8,
    "createdAt": "2025-03-14T09:21:21.820333",
    "sentiment": "POSITIVE"
  },
  {
    "id": 2,
    "content": "Could be better",
    "sentimentScore": -0.2,
    "createdAt": "2025-03-14T09:23:19.114186",
    "sentiment": "NEGATIVE"
  }
]
```

### **🔹 Submit New Feedback ✍️**  
- **Endpoint:** `/api/feedback`  
- **Method:** `POST`  
- **Description:** Submits a new feedback entry for sentiment analysis.
- **Request Body:**
```json
{
  "text": "I love this product!"
}
```

- **Response Example:**
```json
{
  "id": 3,
  "content": "I love this product.",
  "sentimentScore": 0.9,
  "createdAt": "2025-03-14T09:28:13.906895",
  "sentiment": "POSITIVE"
}
```

## 💙 Run with Docker 🐳  
You can also run the application using Docker:  

### 🔹 Pull the Docker Image 📥  
```sh
docker pull hitruong05/sentiment-analyzer-application:v4
```

### 🔹 Run the Container 🚀  
```sh
docker run -d -p 8080:8080 hitruong05/sentiment-analyzer-application:v4
```

### 🔹 Access the Application 🌍  
```
http://localhost:8080
``` 

## 📚 License 📜  
This project is licensed under the **MIT License**.

## 📞 Contact ☎️  
For any questions, issues, or collaboration opportunities, feel free to reach out:  

- **GitHub:** [https://github.com/hitruong0504](https://github.com/hitruong0504)  
- **Email:** hitruong.work@gmail.com  
- **LinkedIn:** [https://www.linkedin.com/in/hitruong](https://www.linkedin.com/in/hitruong)  

---
### 🌟 If you find this project useful, don't forget to star the repo! 🚀  
