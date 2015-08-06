X11
===

Copy keyboard layout:

	cp ./xorg.conf.d/*  /etc/X11/xorg.conf.d/

Resolution for external hiDPI monitor.
First set up on `external_monitor.sh`:

    # Laptop resolution
    RES_LAPTOP_W=3200
    RES_LAPTOP_H=1820

    # External monitor resolution
    RES_MONITOR_W=1920
    RES_MONITOR_H=1080

    # Scale of the external monitor
    SCALE_W=2
    SCALE_H=2

Then execute the script:

    external_monitor.sh