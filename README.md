# RuamPluk_Project

โปรเจคนี้เป็นส่วนหนึ่งของวิชา INT206 Software Process Management II<br>
ลิ้งตัวอย่างการทำงาน(Youtube) : https://www.youtube.com/watch?v=M5mGinm6n5g<br>
ลิ้งทดสอบระบบ : http://18.217.241.110:8080/Ruampluk_Project-1.0/

## Getting Started
เข้ามาใน GitHub Log in เข้าสู่ระบบหลังจากที่ได้ทำการ invite collaborators(คนที่สามารถแก้ไขไฟล์ต่างๆ)มาแล้วโดยผู้ที่สร้าง Repository ขึ้นมา
ก็จะต้องทำการ Clone Project เพื่อให้ทุกคนได้ไฟล์จากโปรเจคมาเหมือนๆกัน และจะต้องทำการลงโปรแกรมหรืออุปกรณ์ที่จำเป็นต่อการทำโปรเจค ดังนี้

### 1. Apache Maven
Download : http://maven.apache.org/download.cgi 
```
$ cd HelloWorldProject
$ mvn clean install
```
ใช้งานผ่าน Plugin ของ IDE เพื่อช่วยในการ config dependencies ในไฟล์ pom.xml และทำให้สามารถเรียกใช้ Plugin ต่างๆได้ <br/>
ตัวอย่าง [POM file](https://github.com/jaratchock11/HelloWorld_Ruampluk/blob/master/pom.xml)

### 2. Apache Tomcat  

Download : https://tomcat.apache.org/download-80.cgi   
หลังจากที่ Download มาเแล้วก็ต้องทำการติดตั้งและเพิ่ม Server Apache Tomcat เข้าไปใน Netbeans จากนั้นทำการตั้ง Username และ Password

### 3. MySQL Community Server 5.7
* [Windows]  
Download : https://dev.mysql.com/downloads/windows/installer/5.7.html  

* [MacOS]  
Download : https://dev.mysql.com/downloads/mysql/  
(ที่ Select platform: เลือกเป็น Mac OS X จากนั้นเลือกตัวติดตั้งแบบ dmg)  

แก้ไขไฟล์ .bash_profile
```bash
# Add MySQL 
export MYSQL_ROOT=/usr/local/mysql 
export PATH=$MYSQL_ROOT/bin:$PATH
```
เปิดโปรแกรม terminal แล้วพิมพ์คำสั่ง  

```bash
mysql -u root -p
```
ตัว terminal จะแสดง Enter password: ให้ใส่ temporary password ที่ได้มา
และตั้งค่ารหัสใหม่ โดยใช้คำสั่ง  

```bash
SET PASSWORD = PASSWORD('รหัสผ่านที่ต้องการ'); 
```
[CREATE DATABASE]
```
CREATE TABLE `ruampluk` (
  `id` int(11) NOT NULL,
  `message` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```

[INSERT DATABASE]
```
INSERT INTO `ruamplukhello`.`ruampluk`
(`id`,
`message`)
VALUES
(<{id: }>,
<{message: }>);
```

### Config Properties
สร้างไฟล์ config.properties ใน /src/main/resoures โดยใส่

```bash
dburl=${databaseURL}
dbuser=${databaseUsername}
dbpassword= ${databasePassword}
```
ต้องทำ Config นี้เพื่อไม่ให้ Windows, Netbeans, Mac OS หรือระบบปฏิบัติการต่างๆที่เป็นพื้นฐานในการใช้งานไม่่สามารถรู้ว่า Username, Password, URL ของ Database โปรเจคเรานั้นคืออะไร(ซ่อนรหัสต่างๆเอาไว้)โดยใช้ gitignore เพื่อไม่ให้ OS ต่างๆ Detect ได้ 

### ทำ .gitignore
- ทำได้โดยทำการสร้างไฟล์ notepad เปล่าขึ้นมา 1 ไฟล์และตั้งชื่อไฟล์เอาไว้ว่า .gitignore 
- เข้าไปที่ลิ้ง https://www.gitignore.io/ จากนั้นทำการใส่ OS ต่างๆที่อาจจะมีการใช้โปรเจคของเราเพื่อดู เช่น เช่น git, macos, maven, nette, windows, netbeans, intellij 
- เมื่อเราทำการ Create ขึ้นมาแล้วก็นำ code ที่ gen ออกมาไปใส่ไว้ในไฟล์ที่ตั้งชื่อว่า .gitignore ไว้ 
- ใส่ path ของ Config Properties (/src/main/resoures/config.properties) ไว้ใน .gitignore 
- ใส่ชื่อไฟล์ pom.xml เอาไว้ใน .gitignore <br>
*ทำเพื่อทำให้สามารถซ่อนไฟล์ที่ต้องการเอาไว้ได้ <br>*
ตัวอย่าง [.gitignore](https://github.com/jaratchock11/HelloWorld_Ruampluk/blob/master/.gitignore)
## Members
58130500001 กมลนาวิน ขวัญมงคลทอง<br> 
58130500005 กิตติธร แสงอ่ำ<br>
58130500012 จรัสโชค ศศิธรศิวิไล<br>
58130500021 ชนินทร์ ทองกรณ์<br>
58130500025 ชุณหกร ลักคนาชีวิน<br>
58130500033 เตชินท์ กิตติปาโล<br>
