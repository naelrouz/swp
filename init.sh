#sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/etc/hello.py /etc/gunicorn.d/hello.py
gunicorn -b 0.0.0.0:8080 hello &
