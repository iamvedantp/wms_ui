# WMS App Ui

This Flutter project is designed to replicate key functionalities for a Warehouse Management System (WMS) app. It includes screens for operations such as stock transfer, dispatch orders, consignment management, and offers different views for operators and carriers.

![image (1)](https://github.com/user-attachments/assets/89669da8-b424-4fd9-96ea-6b988a5d5ae6)


## Features

- **Role-based views**: Operators and Carriers have distinct access to specific features via a dropdown menu in the app bar.
- **Operations Overview**: A homepage displaying several key WMS functions, such as Stock Transfer, Shipment Orders, Dispatch Orders, ASN, Consignments, Picklists, Putaways, and more.
- **Check-in Page**: Designed specifically for carriers to manage consignments, e-bills, e-way bills, and proof of delivery.
- **Putaway Management**: A separate page for managing putaway operations, including "Putaway Item" and "Putaway Pallet" options.
- **Picklist Functionality**: Includes pages for managing picklist operations like Check-In Item and Check-In Pallet.
- **Responsive UI**: Grid-based UI with outlined buttons and Font Awesome icons for intuitive navigation.

## Recent Updates

- **Dropdown Role Switching**: A dropdown in the app bar allows seamless switching between `Operator` and `Carrier` roles.
- **Consistent Design**: The `Check-in` page now follows the same grid-based design as the main operations homepage, with role-specific functionalities.
- **Back Button Removal**: The `Check-in` page no longer has a back button for better user navigation and focus.
- **Transfer Button Page**: Added multiple transfer options, such as Transfer Item, Transfer Pallet, Replenishment, and Reverse Replenishment, providing a more streamlined operator experience.
- **Icons & Font Color**: Updated all button icons and text to black for better readability and uniformity across the app.
- **Putaway Page**: Added pages for Putaway management, including Putaway Item and Putaway Pallet, accessible from the Operator homepage.
- **Picklist Management**: A dedicated page for Picklists now includes Check-In Item and Check-In Pallet operations, improving the flow of picking operations.

## Getting Started

To get started with this project:

1. Clone the repository.
2. Make sure Flutter is installed and set up correctly.
3. Run the project using `flutter run` from your terminal or IDE.

Here are a few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

To get started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, and guidance on mobile development.
