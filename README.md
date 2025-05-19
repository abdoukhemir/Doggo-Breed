# **Doggo-Breed**

## **Project Description**

Doggo-Breed is a mobile application developed with Flutter that allows users to identify the breed of their dog by simply taking a photo. Utilizing a TensorFlow Lite (TFLite) machine learning model, the app can predict a single dominant breed or identify multiple breeds present in mixed-breed dogs, providing a percentage breakdown for each recognized breed.

This project demonstrates the integration of a TFLite model into a Flutter mobile application for on-device image classification.

## **Features**

* **Photo Input:** Take a photo of your dog directly from the app.  
* **Breed Identification:** Get an instant prediction of your dog's breed.  
* **Mixed Breed Analysis:** For mixed-breed dogs, the app provides a list of likely breeds and their estimated percentages.  
* **Recognized Breeds:** Supports identification for a specific set of popular dog breeds.  
* **User-Friendly Interface:** Simple and intuitive design for easy use.

## **Recognized Breeds**

The current version of the app is trained to recognize the following dog breeds:

* American Bulldog  
* French Bulldog  
* German Shepherd  
* Golden Retriever  
* Labrador Retriever  
* Rottweiler  
* Husky  
* Unrecognized (for breeds outside the trained set or low confidence predictions)

## **Technologies Used**

* **Flutter:** UI Toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.  
* **Dart:** Programming language used by Flutter.  
* **TensorFlow Lite (TFLite):** On-device machine learning inference framework used to run the dog breed classification model.  
* **VS Code:** Integrated Development Environment (IDE) used for development.

## **Prerequisites**

* Flutter SDK installed and configured.  
* Android Studio or Xcode installed (for setting up emulators/simulators and necessary SDKs).  
* VS Code with the Flutter and Dart extensions installed.  
* A physical Android/iOS device or emulator/simulator to run the app.  
* The TFLite model file (.tflite) and the corresponding labels file (.txt).

## **Installation**

1. **Clone the repository:**  
   git clone \<repository\_url\>

   Navigate to the cloned project directory:  
   cd Doggo-Breed

2. Place the TFLite model:  
   Place your .tflite model file and the labels file (containing the list of recognized breeds in the correct order) in the appropriate assets folder within the project (e.g., assets/ml/). You might need to create this folder.  
3. Get dependencies:  
   Run the following command in the project root to fetch the necessary packages:  
   flutter pub get

4. Connect a device or start an emulator:  
   Ensure you have an Android device connected or an Android/iOS emulator/simulator running.  
5. Run the app:  
   Execute the following command in the terminal:  
   flutter run

## **Usage**

1. Open the Doggo-Breed app on your device or emulator.  
2. Tap the button (usually a camera icon) to take a photo of your dog.  
3. Grant camera permissions if prompted.  
4. Take the picture.  
5. The app will process the image using the TFLite model.  
6. The result will display the predicted breed(s) and their percentages.

## **Project Structure (Brief)**

The project follows a standard Flutter application structure. Key areas include:

* lib/: Contains the main Dart code for the application logic and UI.  
* assets/: Contains assets like images and the TFLite model files.  
* android/: Android-specific project files.  
* ios/: iOS-specific project files.

## **TFLite Model**

The core of the breed detection is a pre-trained and converted TensorFlow Lite model. Ensure your model is correctly placed in the assets folder and referenced correctly in the Flutter code. The model should be trained on a dataset that includes the specified breeds.

## **Author**

Khemir Abderrahmen"# Doggo-Breed" 
"# Doggo-Breed" 
