# headset-battery-linux
This is a simple application to output the status of a battery in a connected wireless headset.

This is dependent on https://github.com/Sapd/HeadsetControl being installed and as such will work with any headset that is supported by that application, and has battery support.

It is designed to be used via polling through some system utility such as on gnome, [Executor](https://extensions.gnome.org/extension/2932/executor/) or on KDE, [Command Output](https://github.com/Zren/plasma-applet-commandoutput).

To install this first you need to make sure HeadsetControl is installed, then you can install this application by running the following commands:

    git clone https://github.com/Lutitious/headset-battery-linux.git && cd headset-battery-linux
    chmod +x run.sh
    cp run.sh /usr/bin/headset-battery

You can then run the application by running `headset-battery` in a terminal.