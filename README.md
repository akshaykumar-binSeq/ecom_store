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
 # Introduction:
The software architecture is based on the Domain-Driven Design (DDD) architecture, with clear separation of concerns 
between the different layers.

## High-Level Architecture

- **Presentation Layer:**
  - Defines the user interface using the BLoC pattern for state management (implemented with Flutter BLoC package).
  - Screen navigation is facilitated by the GetX package.

- **Application Layer:**
  - Encompasses the business logic, implementing the BLoC pattern to separate logic from the presentation layer.
  - Interacts with the Domain Layer for data manipulation and retrieval.

- **Domain Layer:**
  - Houses core business logic, including Entities, Value Objects, and Domain Services.
  - Interaction with the Infrastructure Layer facilitates data retrieval and persistence.

- **Infrastructure Layer:**
  - Defines data providers and the persistence mechanism.
  - Utilizes Firebase Auth for user authentication and Flutter Hive for local data storage.

## Data Flow

The architecture follows a unidirectional data flow, adhering to the BLoC pattern. Here's a simplified overview:
- Presentation Layer sends events to the Application Layer.
- Application Layer processes events and emits new states.
- New states are received by the Presentation Layer, updating the user interface accordingly.

