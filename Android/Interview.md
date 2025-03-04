## A complete guide for learning Android Development - [Check here](https://mindorks.com/android-app-development-online-course)

## Contents

* [Core Android](#core-android)
* [Android Libraries](#android-libraries)
* [Android Architecture](#android-architecture)
* [Android Design Problem](#android-design-problem)
* [Android Unit Testing](#android-unit-testing)
* [Android Tools And Technologies](#android-tools-and-technologies)
* [Java and Kotlin](#java-and-kotlin)
* [Data Structures And Algorithms](#data-structures-and-algorithms)
* [Other Topics](#other-topics)

### Core Android
#### Base

* **1.Tell all the Android application components.** - [Learn from here](https://developer.android.com/guide/components/fundamentals.html#Components)   

`Activity` An activity is the entry point for interacting with the user. It represents a single screen with a user interface.   

`Services` A service is a general-purpose entry point for keeping an app running in the background for all kinds of reasons. For example, a service might play music in the background while the user is in a different app, or it might fetch data over the network without blocking user interaction with an activity.   

`Broadcast receivers`  A broadcast receiver is a component that enables the system to deliver events to the app outside of a regular user flow, allowing the app to respond to system-wide broadcast announcements.  The system can deliver broadcasts even to apps that aren't currently running.   

`Content providers` A content provider manages a shared set of app data that you can store in the file system, in a SQLite database, on the web, or on any other persistent storage location that your app can access. Through the content provider, other apps can query or modify the data if the content provider allows it.   


* **What is the project structure of an Android Application?** - [Learn from here](https://developer.android.com/studio/projects)

`Modules`   
A module is a collection of source files and build settings that allow you to divide your project into discrete units of functionality. Your project can have one or many modules and one module may use another module as a dependency.  

Android Studio offers a few distinct types of module:   
`Android app module` Provides a container for your app's source code, resource files, and app level settings such as the module-level build file and Android Manifest file. 
`Library module` Provides a container for your reusable code, which you can use as a dependency in other app modules or import into other projects. Structurally, a library module is the same as an app module, but when built, it creates a code archive file instead of an APK, so it can't be installed on a device.  

`Project`  
module-name/  
`build`/
Contains build outputs.  
`libs`/
Contains private libraries.  
`src`/
Contains all code and resource files for the module in the following subdirectories:  
`androidTest`/
Contains code for instrumentation tests that run on an Android device. For more information, see the Android Test documentation.  
`main`/
Contains the "main" sourceset files: the Android code and resources shared by all build variants (files for other build variants reside in sibling directories, such as src/debug/ for the debug build type).  
AndroidManifest.xml
Describes the nature of the application and each of its components. For more information, see the AndroidManifest.xml documentation.  
`java`/
Contains Java code sources.  
`jni`/
Contains native code using the Java Native Interface (JNI). For more information, see the Android NDK documentation.  
`gen`/
Contains the Java files generated by Android Studio, such as your R.java file and interfaces created from AIDL files.  
`res`/
Contains application resources, such as drawable files, layout files, and UI string.  
`assets`/
Contains file that should be compiled into an .apk file as-is. You can navigate this directory in the same way as a typical file system using URIs and read files as a stream of bytes using the AssetManager . For example, this is a good location for textures and game data.  
`test`/
Contains code for local tests that run on your host JVM.  
build.gradle (module)
This defines the module-specific build configurations.  
build.gradle (project)
This defines your build configuration that apply to all modules. This file is integral to the project, so you should maintain them in revision control with all other source code.  


* **What is `Context`? How is it used?** - [Learn from here](https://blog.mindorks.com/understanding-context-in-android-application-330913e32514)  
Both the Activity and Application classes extend the Context class.
* **What is `AndroidManifest.xml`?** - [Learn from here](https://developer.android.com/guide/topics/manifest/manifest-intro)

* **What is `Application` class?**
    - The Application class in Android is the base class within an Android app that contains all other components such as activities and services. The Application class, or any subclass of the Application class, is instantiated before any other class when the process for your application/package is created.

#### Activity and Fragment

* **6.What is `Activity` and its lifecycle?** - [Learn from here](https://www.youtube.com/watch?v=RiFui-i-s-o)  

![Life Cycle](https://developer.android.com/guide/components/images/activity_lifecycle.png)
* **What is the difference between onCreate() and onStart()** - [Learn from here](https://www.youtube.com/watch?v=RiFui-i-s-o)

* **When only onDestroy is called for an activity without onPause() and onStop()?** - [Learn from here](https://www.youtube.com/watch?v=QSxcLnZ1-RU)  
When you invoke finish() in your activity.

* **Why do we need to call setContentView() in onCreate() of Activity class?** - [Learn from here](https://www.youtube.com/watch?v=zeYK8JdMOi8)  
onCreate() will be called only once, which could be efficient.  

* **What is onSavedInstanceState() and onRestoreInstanceState() in activity?**
    - onSavedInstanceState() - This method is used to store data before pausing the activity.
    - onRestoreInstanceState() - This method is used to recover the saved state of an activity when the activity is recreated after destruction. So, the onRestoreInstanceState() receive the bundle that contains the instance state information.

* **11.What is `Fragment` and its lifecycle.** - [Learn from here](https://blog.mindorks.com/android-fragments-and-its-lifecycle)  
1. A fragment has its layout and its behaviour with its lifecycle callbacks.  
2. You can add or remove fragments in the activity. Activity is running, which is in the resumed lifecycle state.  
3. You can combine multiple fragments in a single activity to build a multi-pane UI.  
4. A fragment can be reuse in multiple activities.  
5. A fragment life cycle is closely related to the lifecycle of its host activity which means when the activity is in the pause state, all the fragments available in the activity will also stop.  
Fragments added to the Android API in Android 3.0 which API version 11 to support flexible UI on large screens.  
![Fragment](https://developer.android.com/images/guide/fragments/fragment-view-lifecycle.png, width = 60%)  


* **What are "launch modes"?** - [Learn from here](https://medium.com/mindorks/android-launch-mode-787d28952959)  
    - [Task](https://developer.android.com/guide/components/activities/tasks-and-back-stack)
    - [Launch Mode](https://medium.com/mindorks/android-launch-mode-787d28952959)  
1. standard
2. singleTop
3. singleTask
4. singleInstance
* **What is the difference between a `Fragment` and an `Activity`? Explain the relationship between the two.** - [Learn from here](https://stackoverflow.com/questions/10478233/why-fragments-and-when-to-use-fragments-instead-of-activities)
Fragments are Android's solution to creating reusable user interfaces. 
* **When should you use a Fragment rather than an Activity?**
    - When you have some UI components to be used across various activities
    - When multiple view can be displayed side by side just like viewPager

* **What is the difference between FragmentPagerAdapter vs FragmentStatePagerAdapter?**  
    Like the docs say, think about it this way. If you were to do an application like a book reader, you will not want to load all the fragments into memory at once. You would like to load and destroy Fragments as the user reads. In this case you will use FragmentStatePagerAdapter. If you are just displaying 3 "tabs" that do not contain a lot of heavy data (like Bitmaps), then FragmentPagerAdapter might suit you well. Also, keep in mind that ViewPager by default will load 3 fragments into memory. The first Adapter you mention might destroy View hierarchy and re load it when needed, the second Adapter only saves the state of the Fragment and completely destroys it, if the user then comes back to that page, the state is retrieved.  

* **16.What is the difference between adding/replacing fragment in backstack?** - [Learn from here](https://stackoverflow.com/questions/24466302/basic-difference-between-add-and-replace-method-of-fragment/24466345)  
    - `replace` removes the existing fragment and adds a new fragment.

    - `add` retains the existing fragments and adds a new fragment that means existing fragment will be active and they wont be in 'paused' state hence when a back button is pressed onCreateView() is not called for the existing fragment(the fragment which was there before new fragment was added).   

* **Why is it recommended to use only the default constructor to create a `Fragment`?** - [Learn from here](https://www.youtube.com/watch?v=9EdvcycKP9A)  
You can use [FragmentFactory](https://proandroiddev.com/android-fragments-fragmentfactory-ceec3cf7c959) instead.  

* **How would you communicate between two Fragments?** - [Learn from here](https://blog.mindorks.com/how-to-communicate-between-fragments)
1. With the help of ViewModel  
2. With the help of Interface  

* **What is retained `Fragment`?**
    - By default, Fragments are destroyed and recreated along with their parent Activity’s when a configuration change occurs. Calling setRetainInstance(true) allows us to bypass this destroy-and-recreate cycle, signaling the system to retain the current instance of the fragment when the activity is recreated.

* **What is the purpose of `addToBackStack()` while commiting fragment transaction?**
    - By calling addToBackStack(), the replace transaction is saved to the back stack so the user can reverse the transaction and bring back the previous fragment by pressing the Back button. For more [Learn from here](https://stackoverflow.com/questions/22984950/what-is-the-meaning-of-addtobackstack-with-null-parameter)

#### Views and ViewGroups

* **21.What is `View` in Android?** - [Learn from here](https://blog.mindorks.com/android-user-interface-view-components)

* **Difference between `View.GONE` and `View.INVISIBLE`?** - [Learn from here](https://stackoverflow.com/questions/11556607/android-difference-between-invisible-and-gone)

* **Can you a create custom view? How?** - [Learn from here](https://blog.mindorks.com/create-your-own-custom-view)

* **What are ViewGroups and how they are different from the Views?**
    - View: View objects are the basic building blocks of User Interface(UI) elements in Android. View is a simple rectangle box which responds to the user’s actions. Examples are EditText, Button, CheckBox etc. View refers to the android.view.View class, which is the base class of all UI classes.
    - ViewGroup: ViewGroup is the invisible container. It holds View and ViewGroup. For example, LinearLayout is the ViewGroup that contains Button(View), and other Layouts also. ViewGroup is the base class for Layouts.

* **What is a Canvas?** - [Learn from here](https://blog.mindorks.com/understanding-canvas-api-in-android)

* **26.What is a `SurfaceView`?** - [Learn from here](https://developer.android.com/reference/android/view/SurfaceView)

* **Relative Layout vs Linear Layout.** - [Learn from here](https://blog.mindorks.com/android-layout-relative-linear-frame)

* **Tell about Constraint Layout** - [Learn from here](https://blog.mindorks.com/using-constraint-layout-in-android-531e68019cd)

* **Do you know what is the view tree? How can you optimize its depth?** - [Learn from here](https://developer.android.com/reference/android/view/ViewTreeObserver)

* **How does the Touch Control and Events work in Android?** - [Learn from here](https://blog.mindorks.com/touch-control-and-events-in-android) and [here](https://www.youtube.com/watch?v=tKeYr7iV5xE)

#### Displaying Lists of Content

* **31.What is the difference between `ListView` and `RecyclerView`?** - [Learn from here](https://stackoverflow.com/questions/26728651/recyclerview-vs-listview)

* **How does RecyclerView work internally?** - [Learn from here](https://blog.mindorks.com/how-does-recyclerview-work-internally) and [here](https://www.youtube.com/watch?v=60IYWdnHsZI)

* **What is the ViewHolder pattern? Why should we use it?** - [Learn from here](https://stackoverflow.com/questions/21501316/what-is-the-benefit-of-viewholder-pattern-in-android)

* **RecyclerView Optimization - Scrolling Performance Improvement** - [Learn from here](https://blog.mindorks.com/recyclerview-optimization)

* **What is `SnapHelper`?** - [Learn from here](https://blog.mindorks.com/using-snaphelper-in-recyclerview-fc616b6833e8)

#### Dialogs and Toasts

* **36.What is `Dialog` in Android?** - [Learn from here](https://developer.android.com/guide/topics/ui/dialogs)

* **What is `Toast` in Android?** - [Learn from here](https://developer.android.com/guide/topics/ui/notifiers/toasts)

* **What the difference between `Dialog` and `Dialog Fragment`?** - [Learn from here](https://stackoverflow.com/questions/7977392/android-dialogfragment-vs-dialog)

#### Intents and Broadcasting

* **What is `Intent`?** - [Learn from here](https://blog.mindorks.com/what-are-intents-in-android)

* **What is an Implicit `Intent`?** - [Learn from here](https://blog.mindorks.com/what-are-intents-in-android)
        
* **41.What is an Explicit `Intent`?** - [Learn from here](https://blog.mindorks.com/what-are-intents-in-android)

* **What is a `BroadcastReceiver`?** - [Learn from here](https://developer.android.com/guide/components/broadcasts)

* **What is a `LocalBroadcastManager`?** - [Learn from here](https://blog.mindorks.com/using-localbroadcastmanager-in-android)

* **What is the function of an `IntentFilter`?** - [Learn from here](https://developer.android.com/reference/android/content/IntentFilter)

* **What is a Sticky `Intent`?**
    - Sticky Intents allows communication between a function and a service. sendStickyBroadcast() performs a sendBroadcast(Intent) known as sticky, i.e. the Intent you are sending stays around after the broadcast is complete, so that others can quickly retrieve that data through the return value of registerReceiver(BroadcastReceiver, IntentFilter). For example, if you take an intent for ACTION_BATTERY_CHANGED to get battery change events: When you call registerReceiver() for that action — even with a null BroadcastReceiver — you get the Intent that was last Broadcast for that action. Hence, you can use this to find the state of the battery without necessarily registering for all future state changes in the battery.

* **46.Describe how broadcasts and intents work to be able to pass messages around your app?** - [Learn from here](https://stackoverflow.com/questions/7276537/using-a-broadcast-intent-broadcast-receiver-to-send-messages-from-a-service-to-a)

* **What is a `PendingIntent`?**
    - If you want someone to perform any Intent operation at future point of time on behalf of you, then we will use Pending Intent.

* **What are the different types of Broadcasts?** - [Learn from here](https://developer.android.com/guide/components/broadcasts)

#### Services

* **What is `Service`?** - [Learn from here](https://developer.android.com/guide/components/services)

* **`Service` vs `IntentService`.** - [Learn from here](https://blog.mindorks.com/service-vs-intentservice-in-android)

* **51.What is a `JobScheduler`?** - [Learn from here](https://developer.android.com/reference/android/app/job/JobScheduler)

#### Inter-process Communication

* **How can two distinct Android apps interact?** - [Learn from here](https://developer.android.com/training/basics/intents)

* **Is it possible to run an Android app in multiple processes? How?** - [Learn from here](https://stackoverflow.com/questions/6567768/how-can-an-android-application-have-more-than-one-process)

* **What is AIDL? Enumerate the steps in creating a bounded service through AIDL.** - [Learn from here](https://developer.android.com/guide/components/aidl)

* **What can you use for background processing in Android?** - [Learn from here](https://developer.android.com/guide/background)

* **56.What is a `ContentProvider` and what is it typically used for?** - [Learn from here](https://developer.android.com/guide/topics/providers/content-provider-basics) and [here](https://developer.android.com/guide/topics/providers/content-providers)

#### Long-running Operations

* **How to run parallel tasks in Java or Android, and get callback when all complete?** - [Learn from here](https://www.youtube.com/watch?v=v0ZSnISeyKE)

* **Why should you avoid to run non-ui code on the main thread?** - [Learn from here](https://developer.android.com/training/multiple-threads/communicate-ui)

* **What is ANR? How can the ANR be prevented?** - [Learn from here](https://developer.android.com/topic/performance/vitals/anr.html)

* **What is an `AsyncTask`(Deprecated in API level 30) ?** - [Learn from here](https://www.youtube.com/watch?v=ZZ-6nGbfVdA)

* **61.What are the problems in AsyncTask?** - [Learn from here](https://www.youtube.com/watch?v=ZZ-6nGbfVdA)

* **When would you use java thread instead of an AsyncTask?** - [Learn from here](https://stackoverflow.com/questions/18480206/asynctask-vs-thread-in-android)

* **What is a `Loader`? (Deprecated)** - [Learn from here](https://developer.android.com/guide/components/loaders)

* **What is the relationship between the life cycle of an `AsyncTask` and an `Activity`? What problems can this result in? How can these problems be avoided?**
    - An AsyncTask is not tied to the life cycle of the Activity that contains it. So, for example, if you start an AsyncTask inside an Activity and the user rotates the device, the Activity will be destroyed (and a new Activity instance will be created) but the AsyncTask will not die but instead goes on living until it completes.
    
    - Then, when the AsyncTask does complete, rather than updating the UI of the new Activity, it updates the former instance of the Activity (i.e., the one in which it was created but that is not displayed anymore!). This can lead to an Exception (of the type java.lang.IllegalArgumentException: View not attached to window manager if you use, for instance, findViewById to retrieve a view inside the Activity).
    
    - There’s also the potential for this to result in a memory leak since the AsyncTask maintains a reference to the Activity, which prevents the Activity from being garbage collected as long as the AsyncTask remains alive.

    - For these reasons, using AsyncTasks for long-running background tasks is generally a bad idea . Rather, for long-running background tasks, a different mechanism (such as a service) should be employed.
    
    - Note: AsyncTasks by default run on a single thread using a serial executor, meaning it has only 1 thread and each task runs one after the other.

* **Explain `Looper`, `Handler` and `HandlerThread`.** - [Learn from here](https://blog.mindorks.com/android-core-looper-handler-and-handlerthread-bd54d69fe91a) and [from video](https://www.youtube.com/watch?v=rfLMwbOKLRk&list=PL6nth5sRD25hVezlyqlBO9dafKMc5fAU2)

* **66.How does the threading work in Android?** - [Learn from here](https://www.youtube.com/watch?v=zfDYK-xB1Uo)

* **Android Memory Leak and Garbage Collection** - [Learn from here](https://www.youtube.com/watch?v=zCSSFRRIreo)

#### Working With Multimedia Content

* **How do you handle bitmaps in Android as it takes too much memory?** - [Learn from here](https://developer.android.com/topic/performance/graphics/load-bitmap) and [here](https://developer.android.com/topic/performance/graphics/manage-memory)

* **What is the difference between a regular `Bitmap` and a nine-patch image?**
    - In general, a Nine-patch image allows resizing that can be used as background or other image size requirements for the target device. The Nine-patch refers to the way you can resize the image: 4 corners that are unscaled, 4 edges that are scaled in 1 axis, and the middle one that can be scaled into both axes.

* **Tell about the `Bitmap` pool.** - [Learn from here](https://blog.mindorks.com/how-to-use-bitmap-pool-in-android-56c71a55533c)

* **71.How to play sounds in Android?** - [Learn from here](https://blog.mindorks.com/using-mediaplayer-to-play-an-audio-file-in-android)

* **How image compression is preformed?** - [Learn from here](https://blog.mindorks.com/understanding-image-compression-in-android)

#### Data Saving

* **How to persist data in an Android app?** - [Learn from here](https://blog.mindorks.com/android-shared-preferences-in-kotlin)

* **What is ORM? How does it work?** - [Learn from here](https://www.youtube.com/watch?v=9OHzXUo3Ymk)

* **How would you preserve `Activity` state during a screen rotation?** - [Learn from here](https://stackoverflow.com/questions/3915952/how-to-save-state-during-orientation-change-in-android-if-the-state-is-made-of-m)

* **76.What are different ways to store data in your Android app?** - [Learn from here](https://blog.mindorks.com/understanding-storage-system-to-store-data-in-android)

* **Explain Scoped Storage in Android.** - [Learn from here](https://blog.mindorks.com/understanding-the-scoped-storage-in-android)

* **How to encrypt data in Android?** - [Learn from here](https://blog.mindorks.com/how-to-encrypt-data-safely-on-device-and-use-the-androidkeystore)

* **What is commit() and apply() in SharedPreferences?**
    - commit() returns a boolean value of success or failure immediately by writing data synchronously.
    - apply() is asynchronous and it won't return any boolean response. If you have an apply() outstanding and you are performing commit(), then the commit() will be blocked until the apply() is not completed.







































