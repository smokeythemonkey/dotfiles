# Setup fingerprint reader Linux

sauce: [https://blog.horner.tj/mint-fingerprint-auth-x1c7/](https://blog.horner.tj/mint-fingerprint-auth-x1c7/)

## Update Reader Firmware

First, let's update the fingerprint reader firmware. Run these commands borrowed from the Arch Linux wiki to update the firmware.

Note: This will also update things like your ThinkPad's BIOS, Thunderbolt controller, etc. so if you only want to update the fingerprint reader, run fwupdmgr get-devices and find the "Prometheus" device \u2013 this is the fingerprint reader. Use that device ID in fwupdmgr update [device-id] to only update that specific device.

```shell
$ fwupdmgr refresh
$ fwupdmgr get-updates
$ fwupdmgr update
```

This will check for firmware updates and then update any devices that are out-of-date.

After updating the firmware, you might want to reboot

## Install PAM Module

Next, we need to install the PAM module for fprintd so that it can be used as an authentication method alongside a password. Run this commands to do so:

```shell
$ sudo apt install libpam-fprintd
```

Now that the module is installed, we need to tell the system to use it:

```shell
$ sudo pam-auth-update
```

At this screen, make sure "Fingerprint authentication" is selected, then select "Ok" to save.
Enroll Fingerprint

Finally, let's enroll a fingerprint into fprintd so it can be used for authentication. We will be using fprintd-enroll to register a fingerprint. Run this command to enroll a finger:

```shell
$ fprintd-enroll -f [finger]
```

[finger] can be one of:

    left-thumb
    left-index-finger
    left-middle-finger
    left-ring-finger
    left-little-finger
    right-thumb
    right-index-finger
    right-middle-finger
    right-ring-finger
    right-little-finger

If omitted, it will default to the right index finger. Once run, press a finger on the sensor several times from several different angles. When the program exits, you are done.

If you do not have fprintd-enroll, then you may need to install fprintd with apt. It was already installed in my case.

Once your fingerprint has been enrolled, you can test it out using fprintd-verify, which is a simple application that verifies a fingerprint swipe. Run it, press the finger you just enrolled on the sensor, and it should work!
