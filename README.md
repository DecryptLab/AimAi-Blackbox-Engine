# Blackbox Android Modification Library

## 📜 Permissions & License
**Integration Permission Granted:** Anyone is granted full permission to download, use, and legitimately integrate this library into new standalone applications or projects.
- **Author / Developer:** Muzammil Hussain
- **Contact:** momisirewal1@gmail.com

---

## 🛠️ Technical Overview & Architecture

### 1. Build Source & Native C/C++ Code Location
This library is a native Android binary built using **C and C++** via the Android NDK. It utilizes frameworks like **DobbyHook** for inline hooking and **ImGui** (OpenGL) for custom floating UI rendering.
- **Source Availability:** The core native C/C++ source code is kept **private** and is not included in this repository. Only the compiled `libblackbox.so` binary (and associated decompiled smali structures) are available for deployment and research.

### 2. Location of Authentication & Key Check Logic
The security mechanisms, including key verification, login logic, and `grant.bundle` validations, are embedded directly within the native C/C++ source code. Once compiled, this logic resides securely as binary instructions inside the `libblackbox.so` file. It is handled entirely at the native layer, not within the Java/APK (Smali) layer.

### 3. JNI / APK Interface
The library interfaces with the host Android application using the **JNI (Java Native Interface)**. 
Upon loading the library, the `JNI_OnLoad` function is automatically triggered. This function registers the required native C++ methods with the Java/Kotlin environment, creating a secure bridge for the APK to send commands to the Blackbox engine.

---

## 🚀 Integration Guide

To legitimately integrate this library into a new Android Studio project or APK, follow these steps:

1. **Directory Setup:** Create a `jniLibs/arm64-v8a/` directory in your Android project (typically under `app/src/main/`).
2. **Add Binary:** Place the provided `libblackbox.so` file into this `arm64-v8a` folder.
3. **Load the Library:** Initialize the binary within your `MainActivity.java` or target Kotlin file:
   ```java
   static {
       System.loadLibrary("blackbox");
   }
   ```
4. **Declare Native Methods:** Bind the required C++ functions by declaring them as `native` methods in your Java code. For example:
   ```java
   public native void startBlackbox();
   public native boolean checkKey(String key);
   ```
5. You can now call these methods directly from your application's code to launch the ImGui overlay or pass authentication keys.

---

## 🔐 Modification Restrictions

**Key/Login Removal is Fully Permitted:** You have full and unrestricted permission to modify, patch, reverse-engineer, hex-edit, alter, or otherwise change the application code and compiled `.so` binaries, including removing, bypassing, disabling, or replacing any key, login, authentication, license, or access-control mechanisms.

The absence of the original C/C++ source code does not prevent these modifications. You are fully authorized to make any changes necessary to the compiled binaries and application components, including changes intended to disable or remove built-in authentication and licensing functionality.
