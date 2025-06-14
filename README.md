Here is the content properly formatted for a `README.md` file on GitHub:

---

````markdown
# SocialEcho

**A social networking platform with automated content moderation and context-based authentication system.**  
[🎥 Watch Demo](https://youtu.be/Tmncayg7FeU)

---

## 📚 Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Technologies](#technologies)
- [Schema Diagram](#schema-diagram)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [License](#license)

---

## 🧩 Project Overview

SocialEcho is a full-stack social networking platform built using the **MERN (MongoDB, Express.js, React.js, Node.js)** stack. It includes advanced features such as:

- **Automated Content Moderation** using NLP APIs and ML models.
- **Context-Based Authentication** using IP, device, and location data.

Other core social media features include:

- Profile creation  
- Post creation and sharing  
- Liking and commenting  
- Following/unfollowing users  

---

### 🛡 Automated Content Moderation

The platform uses a combination of NLP APIs and ML models for content moderation:

- **Perspective API** – Filters spam, profanity, toxicity, harassment, etc.  
- **TextRazor API** – Provides content categorization.  
- **Hugging Face Interface API** – Uses BART Large MNLI model for classification.  
- **Flask Classifier** – A custom Flask server using PyTorch and BART Large MNLI for zero-shot classification.

A common interface handles API interactions, allowing you to switch services or disable them flexibly.

> Posts are filtered during submission. Users can also report inappropriate posts for manual moderation.

---

### 🔐 Context-Based Authentication

Enhances account security by verifying:

- IP Address  
- Location  
- Device Information  

The data is AES-encrypted and stored securely. Suspicious login attempts trigger email notifications, prompting identity verification.

---

### 👥 User Roles

- **Admin**: Manages moderators, communities, user activity, and API configurations.
- **Moderators**: Review reported posts and manage assigned communities.
- **General Users**: Can create posts, like/comment, follow users, and report content.

---

## 🚀 Features

- ✅ JWT-based authentication and authorization  
- 🧑‍💼 User profile management  
- 📝 Post creation, commenting, and liking  
- 🔁 Follow/unfollow users  
- 🚩 Report and review content  
- 🔒 Context-based authentication and device management  
- 📊 Admin and Moderator dashboards  
- 📧 Email alerts for suspicious activity  
- 🌐 Content moderation with multiple API support  

---

## 🧰 Technologies

- **Frontend**: React.js, Redux, Tailwind CSS  
- **Backend**: Node.js, Express.js  
- **Database**: MongoDB  
- **Authentication**: JWT, Passport.js  
- **Email Services**: Nodemailer  
- **Encryption**: Crypto-js (AES)  
- **Content Moderation**:  
  - Perspective API  
  - TextRazor API  
  - Hugging Face (BART Large MNLI)  
  - Flask-based Zero-Shot Classifier  
- **Cloud Storage**: Azure Blob Storage  

---

## 🗂 Schema Diagram

📌 _Add your schema diagram image or embed a link here._

---

## 🛠 Getting Started

### ✅ Prerequisites

- Node.js  
- MongoDB (or MongoDB Atlas account)

### 🔧 Installation

```bash
# Clone the repository
git clone https://github.com/nz-m/SocialEcho.git

# Client setup
cd client
npm install

# Server setup
cd ../server
npm install
````

### ⚙️ Environment Configuration

Create a `.env` file in both `/client` and `/server` directories using `.env.example` as a reference.

### ▶️ Start the Application

```bash
# Start the server
cd server
npm start

# In a new terminal, start the client
cd client
npm start
```

### 🧰 Admin Setup

Run the following script from the `server` directory to initialize admin and community setup:

```bash
./admin_tool.sh
```


## 🔐 .env Variables

### 📧 For Email Service (Context-Based Authentication)

```env
EMAIL=
PASSWORD=
EMAIL_SERVICE=
```

### 🔍 For Content Moderation APIs

```env
PERSPECTIVE_API_KEY=
INTERFACE_API_KEY=
TEXTRAZOR_API_KEY=
```

* [Perspective API](https://www.perspectiveapi.com)
* [TextRazor API](https://www.textrazor.com)
* [Hugging Face API](https://huggingface.co)

> *You can run the Flask-based classifier locally instead of using Hugging Face or TextRazor APIs. Check the `classifier_server` directory.*

📝 Note: These features are optional. The platform will still run without them, but moderation and context-auth features will be disabled.

---

## 👨‍💻 Usage

### 🛡 Admin Dashboard

* Accessible at `/admin`
* Use `admin_tool.sh` to configure account
* Manage moderators, communities, API settings

### 🧑‍⚖️ Moderator Role

* Emails ending with `@mod.socialecho.com` are auto-assigned as moderators.
* Admin can assign communities to moderators.

---

![WhatsApp Image 2025-06-14 at 16 20 49_24e2442e](https://github.com/user-attachments/assets/faeeefa2-f9cf-4561-b5e6-53f7113e3bb1)
![WhatsApp Image 2025-06-14 at 15 54 40_92381d28](https://github.com/user-attachments/assets/1a70b84e-7a56-411a-9451-c83d7e0aaef7)
![WhatsApp Image 2025-06-14 at 15 40 19_d75068c9](https://github.com/user-attachments/assets/696d7da6-5697-404a-a054-735b2ca31132)
![WhatsApp Image 2025-06-14 at 16 30 11_3c649e00](https://github.com/user-attachments/assets/41ad7e47-5058-4198-95f5-edcca6063d87)

