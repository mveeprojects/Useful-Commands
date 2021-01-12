docker pull rodolpheche/wiremock
docker save -o ~/Desktop/wiremockimage.tar rodolpheche/wiremock

declare serverIpList StringArray=(
"ip1"
"ip2"
"etc"
)

for ip in ${StringArray[@]}; do
   echo Copying docker image via scp to $ip
   scp ~/Desktop/wiremockimage.tar username@$ip:wiremockimage.tar
   ssh -t username@$ip 'docker load -i wiremockimage.tar'
done
