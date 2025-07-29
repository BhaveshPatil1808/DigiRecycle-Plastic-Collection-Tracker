# ♻️ DigiRecycle – Plastic Collection Tracker

DigiRecycle is a Java-based web application built using **Spring MVC**, **Hibernate**, and **MySQL**. It facilitates efficient tracking of plastic collection activities involving three roles: **Users**, **Recyclers**, and **Admins**. This project encourages environmental responsibility through seamless pickup request management and recycling coordination.

---

## 🚀 Tech Stack

| Layer        | Technologies Used                     |
|--------------|----------------------------------------|
| Frontend     | JSP, HTML, CSS                         |
| Backend      | Java, Spring MVC, Spring Core          |
| ORM          | Hibernate (with HibernateTemplate)     |
| Database     | MySQL (`recycleDB`)                    |
| Server       | Apache Tomcat 7                        |
| JDK Version  | Java 1.8                               |

---

## 📂 Project Modules

### 🔹 User
- Register and login
- Submit pickup request
- Track request status

### 🔹 Recycler
- View assigned collection requests
- Update pickup completion
- Track logs

### 🔹 Admin
- Login to dashboard
- Manage users and recyclers
- View system-wide collection logs

---

## 🧱 Project Architecture

### 📁 Controller Classes
- `HomeController.java`: Session control and page routing  
- `CollectionController.java`: Handles pickup request logic  
- `RecyclerController.java`: Recycler-side actions  

### 🗃️ DAO Classes
- `admindao.java`: Admin login and credentials  
- `collectionLogDao.java`: Pickup log insert/update  
- `userDao.java`, `recyclerDao.java`: User & recycler operations  

---

## 🛠️ Features

✅ Clean separation of MVC layers  
✅ HibernateTemplate-based DAO operations (no raw SQL)  
✅ Role-based authentication (Admin, User, Recycler)  
✅ Collection log tracking for accountability  
✅ JSP-based UI with form-driven interactions  

---

## 🗂️ Database Tables (recycleDB)

| Table Name       | Description                        |
|------------------|------------------------------------|
| `users`          | User details and login credentials |
| `recyclers`      | Recycler info and access data      |
| `collection_log` | Pickup requests and timestamps     |
| `admins`         | Admin credentials                  |

---

## ⚙️ Getting Started

### Prerequisites
- JDK 1.8
- Apache Tomcat 7
- MySQL Server
- IDE like Eclipse / IntelliJ

