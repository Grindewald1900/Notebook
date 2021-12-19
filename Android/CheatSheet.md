### Android Cheat Sheet

#### SHA-1
[Tutorial](https://developers.google.com/android/guides/client-auth)  
Click to run `Android Studio` -> `Gradle` -> Project/Tasks/android/`signingReport`

The result is like 
```bash
> Task :app:signingReport
Variant: debug
Config: debug
Store: ~/.android/debug.keystore
Alias: AndroidDebugKey
MD5: A5:88:41:04:8D:06:71:6D:FE:33:76:87:AC:AD:19:23
***************************************
SHA1: A7:89:E5:05:C8:17:A1:22:EA:90:6E:A6:EA:A3:D4:8B:3A:30:AB:18
***************************************
SHA-256: 05:A2:2C:35:EE:F2:51:23:72:4D:72:67:A5:6C:8C:58:22:2A:00:D6:DB:F6:45:D5:C1:82:D2:80:A4:69:A8:FE
Valid until: Wednesday, August 10, 2044
```
