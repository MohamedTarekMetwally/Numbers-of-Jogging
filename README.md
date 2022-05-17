# JOGGING TIMES PROJECT

## The goal of the project is to trace the jogging times of each user through the distance, time and date of each jogging

We have **three** types of users in the app.
> **normal user** : can only acess his own joggings.

> **moderator** : can acess his joggings and joggings of the normal users.

> **admin**: can acess any jogging on the server.

You can choose your own type while logging in, But for now in the server the default is all the accounts are users but you can upgrade any account to moderator or admin through the rails command line.


## Theories of implementation.

 > **To Control** the accessing of the users in the server, there was **two theroies** of implementation.
 > I used the two in my Code. But I am commenting one of them.

 > **The First one** : is to remove the edit, delete from the document if it's not your document (if you are a user ), and actually it worked very very good at first but after doing some research i found out it can be easly tracked if you bruteforced through the URL.

 > **The Second one** : is to add it in the controller and add before action for the correct user or what type of user i want. But i had a problem in this theory which is it actually works very good but it blocks any person from acessing any other person. So It didn't work in the best way, but i am currently working to find a solution for it as soon as possible.



Note: you will find the commands down below.

### Here is a sample of the GUI of the Project.

### Here is a sample of a user model after logging in.
![Capture](https://user-images.githubusercontent.com/51732423/168706625-3c7d63c4-4995-413d-8493-7101c0970e0f.PNG)

### The users can access his own Joggings but can see the other documents.
![cap](https://user-images.githubusercontent.com/51732423/168706745-191c7fa3-010e-49da-a209-e82ad3cbf4a5.PNG)

### Here is a sample of an Admin model after logging in
![ggs](https://user-images.githubusercontent.com/51732423/168706869-4c14599b-50d0-4677-8bf9-5f37d9a07b2d.PNG)

### The admin as you can see can access all the Documents in the server.
![fsgg](https://user-images.githubusercontent.com/51732423/168706907-70a5025a-09bb-499c-8cbd-8c549f753b9c.PNG)
