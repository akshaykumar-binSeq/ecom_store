# ecom_store

Flutter Ecommerce App.

I developed an ecommerce application using DDD architecture with bloc state management and getx state management for routing.

The app features an authentication system that is implemented using Google Auth and Phone Auth with Firebase services. Users can log in using their Google account or phone number, and their profile details, including name, email/phone number, profile picture, and Firebase user ID, are displayed in a side drawer.

The home screen displays food products listed from an API, and users can easily add any product to their cart and increment or decrement its quantity from the home screen itself. The cart is implemented using Hive database, where the products added to the cart are stored before placing the order. The cart screen displays the added products, and users can increment or decrement the quantity of each product. Placing an order clears the cart and navigates the user back to the home screen.

I am proud to say that I completed this project in just five days without compromising the quality and user experience, and I have handled most exceptions to ensure the expected working of the application. I actually created this app for a machine test in a company, and I am sharing the APK for anyone interested in testing and reviewing the code. This project can serve as a base reference for enterprise-level scalable ecommerce applications in DDD architecture with Firebase authentication and local database for the cart.

I welcome any suggestions and corrections, as I am always open to learning and improving my skills. Thank you for reading!

[#] Software Architecture: Android/iOS
 # Introduction:
The software architecture is based on the Domain-Driven Design (DDD) architecture, with clear separation of concerns 
between the different layers.

 # High-Level Architecture: 
Domain-Driven Design (DDD) architecture, divided into multiple layers, including 
[$] Presentation Layer
[$] Application Layer
[$] Domain Layer
[$] Infrastructure Layer

 # Presentation Layer:
Defines User Interface for application. BLoC Pattern is used for State management which implements Flutter 
BLoC package. Routing between screens in application is implemented with GetX package.

 # Application Layer:
Defines Business Logic for application. Business logic is implemented using BLoC pattern which separates business logic from presentation layer. Application Layer interact with Domain Layer to retrieve and manipulate data.

 # Domain Layer:
Defines Core Business Logic for application. Includes Entities, Value Objects, Domain Services etc. Domain Layer
interacts with Infrastructure Layer to retrieve and persist data.

 # Infrastructure Layer:
Defines Data Provider and Persistence Mechanism for application. Firebase Auth package implements user authentication and Flutter Hive package implements local data storage.

 # Data Flow:
The data flow in architecture is Unidirectional, following the BLoC pattern. The Presentation Layer send events to 
Application Layer, which processes the events and emits new state. The new states are then received by the Application 
Layer, which updates the user interface accordingly.


