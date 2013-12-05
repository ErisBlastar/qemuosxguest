bin/qemu-system-x86_64 -enable-kvm -m 2048 -cpu core2duo \
	  -usb -device usb-kbd -device usb-mouse \
	  -bios bios-mac.bin -kernel ./chameleon_2.0_boot \
	  -device isa-applesmc,osk="insert-real-64-byte-OSK-string-here" \
	  -device ahci,id=ide \
	  -device ide-drive,bus=ide.2,drive=MacHDD \
	  -drive id=MacHDD,if=none,file=./mac_hdd.img \
	  -monitor stdio \
          -device ide-drive,bus=ide.0,drive=MacDVD \
	  -drive id=MacDVD,if=none,snapshot=on,file=OSX_10.6.7.iso
