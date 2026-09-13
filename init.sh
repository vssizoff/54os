echo "liveuser ALL=(ALL:ALL) ALL" >./airootfs/etc/sudoers.d/90-liveuser
sudo chown root:root ./airootfs/etc/sudoers.d/90-liveuser
sudo chmod 440 ./airootfs/etc/sudoers.d/90-liveuser
