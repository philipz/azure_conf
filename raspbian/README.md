# X86 run Raspbian ARM docker container
## Reference [Uniform Development by Docker & QEMU](http://www.instructables.com/id/Uniform-Development-by-Docker-QEMU/)
1. Install Docker
2. Install Qemu-static, `sudo apt-get install qemu-user-static`
3. `sudo docker run -it --rm -v /usr/bin/qemu-arm-static:/usr/bin/qemu-arm-static philipz/rpi-raspbian bash`
