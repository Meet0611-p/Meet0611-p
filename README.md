  Hi, I’m Meetkumar G Patel.<br>
  My Student Number is 34881807.<br> 
  I am Doing Bachelor of Information technology(IT).<br>
  My Major is Cybersecurity and Forencis.<br>
  Unit Name: ICT171 Intoduction to Server Envirnomnets and Architectures.<br> 
Now, I am going to Introduce My Assignment 2 Clode Server Project.<br>

My Project Is about the Fresh Grocery Store.<br>
At Fresh Grocery, we are committed to delivering the freshest and highest quality produce, dairy, and pantry essentials to ur local community. Our store is a one stop destination for all your grocery needs, where freshness meets affordability and customer satisfaction is our top priority.<br>

We proudly source our fruits and vegetables directly from local farmers and trusted suppliers, ensuring that every item on our shelves is seasonal nutritious, ans sustainably grown. From crisp apples and leafy greens to ripe tomatoes and sweet berries, we offer a wide variety of option that support healthy eating and environmentally conscious choices.<br>

In addition to fresh produce, our store features a diverse range of groceries including dairy products, organic selections, grains, spices, snaks, and beverages. Whether you are preparing a family dinner, a quick lunch, or a wholesome breakfast. Fresh Grocery has everithing you need under one roof.<br>

We believe in building strong relationships with our customers, which is why our frienly team is always available to assist with product recommendations, recipe ideas, and specials orders. Clean aisles, clearly labeled sections, and a welcoming atmosphere make shopping with us an enjoyable experience.<br>

Come visit us and discover the difference that freshness make. At Fresh Grocery, we don't just sell food-we nourish families and strengthen our communit.<br>


# Fresh Grocery Store Cloud Project

Student Name: Meetkumar G Patel  
Student ID: 34881807  
Website: [freshgrocery.site](https://freshgrocery.site)  
Video Demonstration: [Echo360 Video](https://echo360.net.au/media/f9d2062d-4682-430b-b7c4-ea39e257ea4e/public)  


  Project Overview

Fresh Grocery is a cloud-hosted website that provides an online platform for local customers to access fresh fruits, vegetables, dairy, and bakery items. The website ensures secure access, structured categories, and contact details. This project demonstrates Infrastructure as a Service (IaaS) using AWS EC2.


 * Key Features

- Home page introducing the grocery store
- Categories: Fruits, Dairy, Vegetables, Bakery
- SSL and DNS integration for secure access
- Hosted on AWS EC2 (Ubuntu) using Apache
- Contact page with store hours and locations


 * Technologies Used

Server Host: AWS EC2  
Operating System: Ubuntu  
 Web Server: Apache2  
Domain: Hostinger.com  
Framework: WordPress  
Video Hosting: Echo360

* Cloud Server Setup Steps

 1. Launch EC2 Instance
 Use Ubuntu as the OS
 Select free tier eligible instance
 Create a key pair and allow HTTP/HTTPS in the security group

2. Allocate and Associate Elastic IP
 Go to Elastic IPs, click *Allocate* and *Associate* with the instance

3. Connect to the Instance
Use the AWS EC2 Connect 

4. Install Apache Web Server
```bash
sudo apt update
sudo apt install apache2
sudo nano /var/www/html/index.html
```

# 5. Domain Configuration
 Buy domain from Hostinger
 Link it to your Elastic IP (takes ~10–15 min)

# 6. Install MySQL and PHP for WordPress
```bash
sudo apt install mysql-server
sudo apt install php libapache2-mod-php php-mysql
```

# 7. Configure MySQL for WordPress
```sql
sudo mysql
CREATE DATABASE wordpress;
CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'Testpass123';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';
EXIT;
```

# 8. Download & Extract WordPress
```bash
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
sudo mv wordpress/ /var/www/html/
```

# 9. Configure Apache for WordPress
Create WordPress site config:
```bash
sudo nano /etc/apache2/sites-available/wordpress.conf
```
Add the following:
```apache
<VirtualHost *:80>
    ServerAdmin admin@freshgrocery.site
    ServerName freshgrocery.site
    ServerAlias www.freshgrocery.site
    DocumentRoot /var/www/html/wordpress

    <Directory /var/www/html/wordpress/>
        AllowOverride All
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log 
</VirtualHost>
```
Enable site and restart Apache:
```bash
sudo a2ensite wordpress.conf
sudo systemctl restart apache2
```

# 10. Secure Website with SSL
```bash
sudo apt install certbot python3-certbot-apache
sudo certbot --apache
```

Follow prompts to enter email and domain name. Certificate will be issued.


* WordPress Configuration

- Go to `https://freshgrocery.site`
- Follow WordPress setup (language, username, DB info)
- Add pages (Home, Categories, Contact)


* 🔗 Links
Live Website: [freshgrocery.site](http://freshgrocery.site)
Video Demonstration: [Echo360 Link](https://echo360.net.au/media/f9d2062d-4682-430b-b7c4-ea39e257ea4e/public)

Additional: I make onther website for video purpose, but the steps are same as documentation. and also I attech the link of Screenshot of all steps. 
