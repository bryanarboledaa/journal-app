Created by: Bryan Arboleda
Heroku link: https://batch9-journal-app.herokuapp.com 
Project name: Journal App

>> Root/Log in page

Credentials:
Email: jbdarboleda@gmail.com
Password: test1234

![image](https://user-images.githubusercontent.com/80822041/132270401-464436af-faac-4fbd-9839-0b66ed514dd0.png)

>> Sign up page

- All fields are required
- Password minimum of 6 characters


![image](https://user-images.githubusercontent.com/80822041/132270835-26766ede-f616-4997-998d-26507c5ae81e.png)

User home page

![image](https://user-images.githubusercontent.com/80822041/132271025-5588f274-827d-483b-8b74-ffbf83a71cce.png)

Navigation bar

- Click Journal App on the left side to return to home page

![image](https://user-images.githubusercontent.com/80822041/132271056-b9fabdc6-e81a-44fc-a3cc-744515400b69.png)

- On the right side of navigation bar you can see user's name, if you click it there's a dropdown where you can log out

![image](https://user-images.githubusercontent.com/80822041/132271159-c6fe9ec2-7c56-467f-b25c-d82c417a7234.png)


>> Categories

- Display cards of all categories
- Each category cards has VIEW, EDIT, DELETE and VIEW TASKS

![image](https://user-images.githubusercontent.com/80822041/132271316-62675a09-86e5-4e24-8212-d49538c16b87.png)

Category > VIEW

![image](https://user-images.githubusercontent.com/80822041/132271645-a7f0a530-0803-4b51-b7d4-5d41846e6e4d.png)


Category > EDIT

![image](https://user-images.githubusercontent.com/80822041/132271724-386ea714-7090-4cb0-be27-4c84a6b09946.png)


Category > DELETE

![image](https://user-images.githubusercontent.com/80822041/132271792-5e96aadc-9a21-4910-bb81-4dafe71aecb8.png)

Category > SHOW TASKS

![image](https://user-images.githubusercontent.com/80822041/132271892-d38378da-7961-4d9e-9445-4d63825b78d8.png)


API Wrapper using Rawg IO

First register to https://rawg.io get your API key and use it in your configuration

Resources: 

https://rawg.io/apidocs
https://api.rawg.io/docs/

Setup:

Add RestApi to gemfile

```gem 'rest-client', '~> 2.0.1' ```

Run ```bundle install``` 

Available routes:

```api/creator-roles```
```api/creators```
```api/developers```
```api/genres```
```api/platforms```
```api/publishers```

Test:

To test out make sure your server is running

```rails s```

In testing I highly suggest to use postman















