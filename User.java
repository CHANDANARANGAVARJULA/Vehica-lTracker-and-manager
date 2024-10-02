package com.controller;

public class User {
    private String gpfcode;
    private String name;
    private int age;
    private String sex;
    private String username;
    private String password;
    private String address;
    private String vehiclenumber;

    // Constructor
    public User(String gpfcode, String name, int age, String sex, String username, String password, String address, String vehiclenumber) {
        this.gpfcode = gpfcode;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.username = username;
        this.password = password;
        this.address = address;
        this.vehiclenumber = vehiclenumber;
    }

    // Default constructor
    public User() {
    }

    // Getters and setters
    public String getGpfcode() {
        return gpfcode;
    }

    public void setGpfcode(String gpfcode) {
        this.gpfcode = gpfcode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getVehiclenumber() {
        return vehiclenumber;
    }

    public void setVehiclenumber(String vehiclenumber) {
        this.vehiclenumber = vehiclenumber;
    }
}