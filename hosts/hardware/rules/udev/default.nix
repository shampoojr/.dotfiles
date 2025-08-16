{ pkgs, ... }:
{
  services.udev.extraRules = ''
    ACTION=="remove",\
    ENV{ID_BUS}=="usb",\
    ENV{ID_MODEL_ID}=="0407",\
    ENV{ID_VENDOR_ID}=="1050",\
    ENV{ID_VENDOR}=="Yubico",\
    RUN+="${pkgs.systemd}/bin/loginctl lock-sessions"

    # Wooting One Legacy
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff01", MODE:="0660", GROUP="input", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff01", MODE:="0660", GROUP="input", TAG+="uaccess"
    # Wooting One update mode
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="2402", MODE:="0660", GROUP="input", TAG+="uaccess"

    # Wooting Two Legacy
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff02", MODE:="0660", GROUP="input", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="ff02", MODE:="0660", GROUP="input", TAG+="uaccess"
    # Wooting Two update mode
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="2403", MODE:="0660", GROUP="input", TAG+="uaccess"

    # Generic Wootings
    SUBSYSTEM=="hidraw", ATTRS{idVendor}=="31e3", MODE:="0660", GROUP="input", TAG+="uaccess" 
    SUBSYSTEM=="usb", ATTRS{idVendor}=="31e3", MODE:="0660", GROUP="input", TAG+="uaccess"'';
}
