package com.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LocationManager {
    // Example method to add location data
    public boolean addLocation(String gpfcode, String location) {
        String query = "INSERT INTO locations (gpfcode, location) VALUES (?, ?)";
        try (Connection conn = LocationDatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, gpfcode);
            ps.setString(2, location);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Example method to get location data
    public String getLocationByGpfcode(String gpfcode) {
        String query = "SELECT location FROM locations WHERE gpfcode = ?";
        try (Connection conn = LocationDatabaseConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setString(1, gpfcode);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getString("location");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}