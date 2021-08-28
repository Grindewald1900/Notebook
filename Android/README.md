## Android


### Tutorials
* **Android Codelabs**
Google Developers [Codelabs](https://codelabs.developers.google.com/?cat=android) provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application.  

* **Training**
Find the [training](https://developer.android.com/courses)option that's right for you.

* 
### Language
[Kotlin](https://kotlinlang.org/) is better for beginner, while Java is still doing great.
For the languages, you can develop android apps either by using Kotlin or Java. Although, you can use both Kotlin and Java to develop native android apps,Google announced in 2019 to make Kotlin the preferred way of developing android applications. If you were to start learning android development today, Kotlin should be your language of choice.

### Fundamentals
**1. Install Android Studio**

**2. Kotlin Basics**  
* Learn the [basics](https://blog.teamtreehouse.com/absolute-beginners-guide-kotlin) of Kotlin  
* Kotlin [Docs](https://kotlinlang.org/docs/basic-syntax.html)   and Official Kotlin Tutorials  
* [Data Structures](https://www.studytonight.com/data-structures/introduction-to-data-structures) and Algorithms. Also check [this](https://www.tutorialspoint.com/data_structures_algorithms/index.htm).   
* Kotlin [DataStructures](https://kotlinlang.org/docs/collections-overview.html)     
* [Algorithms](https://github.com/bmaslakov/kotlin-algorithm-club) and DataStructures in Kotlin 


**3. OOP**  

**4. Data Structure and Algorithms**  

**5. Gradle**  
To prepare your software project for growth, you can organize a [Gradle](https://docs.gradle.org/current/userguide/what_is_gradle.html) project into multiple subprojects to modularize the software you are building.   
**Five things you need to know about Gradle**
1. Gradle is a general-purpose build tool  
Gradle allows you to build any software, because it makes few assumptions about what you’re trying to build or how it should be done. The most notable restriction is that dependency management currently only supports Maven- and Ivy-compatible repositories and the filesystem.

This doesn’t mean you have to do a lot of work to create a build. Gradle makes it easy to build common types of project — say Java libraries — by adding a layer of conventions and prebuilt functionality through plugins. You can even create and publish custom plugins to encapsulate your own conventions and build functionality.

2. The core model is based on tasks

3. Gradle has several fixed build phases
It’s important to understand that Gradle evaluates and executes build scripts in three phases:

* `Initialization` 
Sets up the environment for the build and determine which projects will take part in it.

* `Configuration`  
Constructs and configures the task graph for the build and then determines which tasks need to run and in which order, based on the task the user wants to run.

* `Execution`  
Runs the tasks selected at the end of the configuration phase.

These phases form Gradle’s Build Lifecycle.  

4. Gradle is extensible in more ways than one
Gradle provides several mechanisms that allow you to extend it, such as:

* `Custom task types`.  
When you want the build to do some work that an existing task can’t do, you can simply write your own task type. It’s typically best to put the source file for a custom task type in the buildSrc directory or in a packaged plugin. Then you can use the custom task type just like any of the Gradle-provided ones.

* `Custom task actions`.  
You can attach custom build logic that executes before or after a task via the Task.doFirst() and Task.doLast() methods.

Extra properties on projects and tasks.

These allows you to add your own properties to a project or task that you can then use from your own custom actions or any other build logic. Extra properties can even be applied to tasks that aren’t explicitly created by you, such as those created by Gradle’s core plugins.

* `Custom conventions`.   
Conventions are a powerful way to simplify builds so that users can understand and use them more easily. This can be seen with builds that use standard project structures and naming conventions, such as Java builds. You can write your own plugins that provide conventions — they just need to configure default values for the relevant aspects of a build.

* `A custom model`.  
Gradle allows you to introduce new concepts into a build beyond tasks, files and dependency configurations. You can see this with most language plugins, which add the concept of source sets to a build. Appropriate modeling of a build process can greatly improve a build’s ease of use and its efficiency.  

5. Build scripts operate against an API

To build an Android Application
```Kotlin
plugins {
    id("com.android.application") version "4.2.2"
}

repositories {
    google()
    mavenCentral()
}

android {
    compileSdkVersion(30)
    defaultConfig {
        applicationId = "org.gradle.samples"
        minSdkVersion(16)
        targetSdkVersion(30)
        versionCode = 1
        versionName = "1.0"
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }
    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }
}

dependencies {
    implementation("androidx.appcompat:appcompat:1.2.0")
    implementation("com.google.android.material:material:1.2.0")
    implementation("androidx.constraintlayout:constraintlayout:2.0.4")
    testImplementation("junit:junit:4.13.1")
    androidTestImplementation("androidx.test.ext:junit:1.1.2")
    androidTestImplementation("androidx.test.espresso:espresso-core:3.3.0")
}
```




### Version Control(Repo hosting)
Some basic [git commands](https://confluence.atlassian.com/bitbucketserver/basic-git-commands-776639767.html) .  
* Github

* Gitlab


### Build Application
Android [Documentation](https://developer.android.com/docs)
* App Architecture [[Here]](https://developer.android.com/jetpack/guide)
* Activity and Lifecycle
* Fragments
* Components
* Android App Bundles
* Content Provider
* App Configurations
* Context
* Intents and Intent Filters
* UI & Navigation
* Animations & Transitions
* Images & Graphics
* Audio & Video
* Background Tasks
* App Data & Files
* User Data & Identity
* User Location
* Touch & Input
* Camera
* CameraX
* Sensors
* Connectivity
* Renderscript
* Web-Based Content
* 3rd Libraries

* Android NDK
* Google Play Services
* Android Releases

### Robust Application
* Security
* Testing
* Dependency Management
* Concurrency
* Multithreading

































