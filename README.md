# Slim-flutter-android

This is the slimmest codespace template for building an android app on flutter I could come up with. It has all it needs to build and run an android app, yet it uses minimum dependencies. (Just look at the files - you can see for yourself how few of them there are and how few lines they have.)

After forking this repo and creating codespace from it, do this in the terminal:

1. Run:
flutter doctor --android-licenses
and accept all licenses

After this, you should have the Flutter setup sufficient for making an android app, but not web or Linux desktop.

2. Then you can do:
flutter create --org com.your-company your-app

This will make you a flutter app to start with.

## Connect your android device to debug

To debug it on your android device, follow these steps:

1. Add your codespace to tailscale with:
tailscale up --accept-routes
It will require you to open a link in the browser afterward - do it.

2. Add your device to tailscale, too - just install tailscale and follow instructions. It's easy. Activate the VPN, of course.

3. If "developer options" do not appear in your device settings (usually below "About phone"), you will need to enable them (on my S22 it took tapping Build number 7 times, under About phone / Software information).

4. In Developer options, go to Wireless debugging and enable it. "Pair device with pairing code" will give you the IP and the code to use in the next step. **Note that this port will differ from the one  you see on the previous screen. This is by design.**

5. In the terminal of your codespace, do "adb pair ip.pair:port" (replace with the IP and port from the previous step) and enter the pairing code from the previous step when prompted. **Note: if running the codespace in the browser on the same android device you intend to use for testing, this is the one step you will have to perform on a different device, as your android will exit pairing the moment you switch from the wireless debug settings. Possibly, you can do it in split-screen mode. I managed to, on my S22.**

6. To connect to the device, type adb connect \<ip\>:\<port\> and replace \<ip\> and \<port\> with the data seen on the Wireless debugging page after closing the pairing dialog. **Note this will be a different port than used in the previous step** 

7. Now, you can run the app on codespace: open main.dart in the lib folder, then hit the "play" triangle next to the file name on the tab.

It will take literal **ages** the first time around, so watch your debug console carefully before you decide to abort. Also, you may be asked to edit the launch configuration file first, though I found clicking on the options offered by the visual studio code was sufficient, and no manual intervention in the file was needed. In the selection list of the options to debug, I selected one with only the name of my app. That worked. First, I picked "flutter attach to device" though, then switched ... not certain if this matters.
