echo "Installing!!!" \
sudo apt update \
sudo apt install qemu-system-arm -y \
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
  | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
  && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
  | sudo tee /etc/apt/sources.list.d/ngrok.list \
  && sudo apt update \
  && sudo apt install ngrok -y \
ngrok config add-authtoken \
wget "https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/refs/heads/master/kernel-qemu-5.4.51-buster" \
wget "https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/refs/heads/master/versatile-pb-buster.dtb" \
wget "https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-01-12/2021-01-11-raspios-buster-armhf.zip" \
unzip "2021-01-11-raspios-buster-armhf.zip" \
echo "resizing the harddisk"
qemu-img resize "2021-01-11-raspios-buster-armhf.img" 25G \
echo "The installation was completed now run start-rpi.sh in second terminal in first terminal run ngrok tcp 5901"
