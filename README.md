Flutter E-commerce App
Welcome to our feature-rich E-commerce application, meticulously crafted with the robust architecture of Domain-Driven Design (DDD). This Flutter app utilizes Flutter Bloc and GetX for seamless state and navigation management, providing a delightful shopping experience.

Key Features:

Authentication System:
Secure Google Sign-In and Phone Authentication via Firebase.
Explore user profile details, including name, email/phone, and profile picture.

Product Listings:
API-Driven display for a diverse range of food products.
Effortlessly add products to your cart directly from the home screen.

Cart Management:
Seamless integration with Hive Database for local cart storage.
Manage product quantities effortlessly from both home and cart screens.

Order Placement:
Streamlined order process with cart clearance for a smooth transition back to the home screen.
Features

User Profile Details:
Display comprehensive user information in a side drawer.
Includes user's name, email/phone, profile picture, and Firebase user ID.
Product Listings

API-Driven Product Display:
Fetches diverse food product data from an external API.
Products elegantly showcased on the home screen for a captivating shopping experience.

Effortless Cart Addition:
Users can conveniently add products to their cart directly from the home screen.
Cart Management

Hive Database Integration:
Seamless local cart storage leveraging the power of Hive database.
Users can effortlessly manage product quantities from both the home and cart screens.
Order Placement

Intuitive Order Process:
Clear and straightforward order placement process.
Initiates cart clearance upon order completion, ensuring a smooth transition back to the home screen.

[#] Software Architecture: Android/iOS

Introduction:
The software architecture is based on the Domain-Driven Design (DDD) architecture, with clear separation of concerns between the different layers.

High-Level Architecture:
Domain-Driven Design (DDD) architecture, divided into multiple layers, including [$] Presentation Layer [$] Application Layer [$] Domain Layer [$] Infrastructure Layer

Presentation Layer:
Defines User Interface for application. BLoC Pattern is used for State management which implements Flutter BLoC package. Routing between screens in application is implemented with GetX package.

Application Layer:
Defines Business Logic for application. Business logic is implemented using BLoC pattern which separates business logic from presentation layer. Application Layer interact with Domain Layer to retrieve and manipulate data.

Domain Layer:
Defines Core Business Logic for application. Includes Entities, Value Objects, Domain Services etc. Domain Layer interacts with Infrastructure Layer to retrieve and persist data.

Infrastructure Layer:
Defines Data Provider and Persistence Mechanism for application. Firebase Auth package implements user authentication and Flutter Hive package implements local data storage.

Data Flow:
The data flow in architecture is Unidirectional, following the BLoC pattern. The Presentation Layer send events to Application Layer, which processes the events and emits new state. The new states are then received by the Application Layer, which updates the user interface accordingly.
