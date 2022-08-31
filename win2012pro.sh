#! /bin/bash
# CREATE BY TUAN
apt-get update
rm -rf w2012 w2012.img w2012.gz ngrok ngrok.zip ng.sh > /dev/null 2>&1
echo "Đang cài file windows"
wget -O w2012.gz https://go.aank.me/win/W2012-aank.gz
gunzip w2012.gz
echo "Đợi"
echo "Đã tải xong"
mv w2012 w2012.img
wget -O ng.sh https://bit.ly/3pVmS6b > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo Chọn khu vực cần tạo:
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3388 &>/dev/null &
clear
echo Downloading files from aank.me
apt-get install qemu-system-x86 -y
echo "Wait..."
echo "Starting Windows"
qemu-system-x86_64 -hda w2012.img -m 32G -smp cores=8 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
echo IP của bạn:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Username: Administrator"
echo "Password: Lingg@H0sting"
echo "===================================="
echo "===================================="
echo "TẮT CÁI TAB LÀ AUTO ĐĂNG XUẤT VPS NHA :))"
echo "CHỜ 1-3P ĐỂ BOOT"
echo "RDP CHẢY KHOẢNG 1-12 TIẾNG"
echo "Youtube: youtube.com/TRimuru"
echo "===================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
sleep 43200
