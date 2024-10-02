<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <style>
    /* CSS styling for the home page */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }
    ::selection {
      color: maroon;
      background: #fff;
    }
    nav {
      position: fixed;
      background: #1b1b1b;
      width: 100%;
      padding: 10px 0;
      z-index: 12;
    }
    nav .menu {
      max-width: 1250px;
      margin: auto;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 20px;
    }
    .menu .logo {
      display: flex;
      align-items: center;
    }
    .menu .logo a {
      text-decoration: none;
      color: #fff;
      font-size: 30px;
      font-weight: 600;
      margin-left: 10px; /* Space between icon and text */
    }
    .menu .logo img {
      width: 40px; /* Adjust the icon size */
      height: auto;
    }
    .menu ul {
      display: inline-flex;
    }
    .menu ul li {
      list-style: none;
      margin-left: 15px; /* Increased margin for spacing */
    }
    .menu ul li a {
      text-decoration: none;
      color: #fff;
      font-size: 18px;
      font-weight: 500;
      padding: 8px 15px;
      border-radius: 5px;
      transition: all 0.3s ease;
    }
    .menu ul li a:hover {
      background: #fff;
      color: black;
    }
    .img {
      background: #0073e6; /* Changed to blue shade */
      width: 100%;
      height: 100vh;
      position: relative;
    }
    .img::before {
      content: '';
      position: absolute;
      height: 100%;
      width: 100%;
      background: rgba(0, 0, 0, 0.4);
    }
    .center {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 100%;
      padding: 0 20px;
      text-align: center;
      color: #fff; /* Ensure text is white on top of background */
    }
    .center .title {
      font-size: 40px;
      font-weight: 600;
    }
    .center .sub_title {
      font-size: 30px;
      font-weight: 600;
      margin-top: 20px;
    }
    .center .btns {
      margin-top: 5px;
    }
    .center .btns a {
      text-decoration: none;
    }
    .center .btns button {
      height: 60px;
      width: 170px;
      border-radius: 10px;
      border: none;
      margin: 0 10px;
      border: 2px solid white;
      font-size: 20px;
      font-weight: 500;
      padding: 0 10px;
      cursor: pointer;
      outline: none;
      transition: all 0.3s ease;
    }
    .btns button:first-child {
      color: #fff;
      background: none;
    }
    .btns button:first-child:hover {
      background: white;
      color: black;
    }
    .center .btns button:last-child {
      background: maroon;
      color: white;
    }
  </style>
</head>
<body>
  <nav>
    <div class="menu">
      <div class="logo">
        <img src="profile-icon.png" alt="Profile Icon"> <!-- Add the path to your profile icon image -->
        <a href="#">Vehicle Tracking</a>
      </div>
      <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>
    </div>
  </nav>
  <div class="img"></div>
  <div class="center">
    <div class="title">Welcome to our Vehicle Tracking System</div>
    <div class="sub_title">Speed Notifier</div>
    <div class="btns">
      <a href="speednotifier.jsp"><button>Speed Notifier</button></a>
    </div>
    <div class="sub_title">Location Notifier</div> <!-- Changed Location Tracker to Location Notifier -->
    <div class="btns">
      <a href="locationnotifier.jsp"><button>Location Notifier</button></a> <!-- Changed the link as well -->
    </div>
  </div>
</body>
</html>
