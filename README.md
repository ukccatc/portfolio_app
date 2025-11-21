# Oleg Rostovtsev - Portfolio Website

A responsive single-page portfolio website built with **Flutter Web**.

## 🚀 Features

-   **Responsive Design**: Optimized for Desktop, Tablet, and Mobile.
-   **Sections**:
    -   **Hero**: Introduction and Call-to-Action.
    -   **Skills**: Categorized technical skills.
    -   **Experience**: Work history timeline.
    -   **Projects**: Showcase of portfolio projects.
    -   **Education**: Academic background and courses.
    -   **About**: Personal interests and bio.
    -   **Contact**: Social links and contact form.
-   **Data-Driven**: All content is managed in `lib/src/utils/data.dart` for easy updates.

## 🛠️ Tech Stack

-   **Framework**: Flutter (Web)
-   **Language**: Dart
-   **Packages**:
    -   `google_fonts`: Custom typography.
    -   `font_awesome_flutter`: Social icons.
    -   `url_launcher`: Opening external links and email.
    -   `scrollable_positioned_list`: Smooth scrolling navigation.

## 🏃‍♂️ How to Run

1.  **Prerequisites**: Ensure you have Flutter installed (`flutter doctor`).
2.  **Clone the repository**:
    ```bash
    git clone <repository-url>
    cd portfolio_app
    ```
3.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
4.  **Run locally**:
    ```bash
    flutter run -d chrome
    ```

## 📦 How to Build for Production

To build the web bundle for deployment:

```bash
flutter build web --release
```

The output will be in `build/web/`.

## 📝 Customization

To update the content (Name, Skills, Experience, etc.), simply edit the file:
**`lib/src/utils/data.dart`**

No need to touch the UI code for basic content updates!
