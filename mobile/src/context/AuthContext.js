import React, { createContext, useState, useContext, useEffect } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';
import axios from 'axios';

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadStorageData();
  }, []);

  async function loadStorageData() {
    try {
      const authDataSerialized = await AsyncStorage.getItem('@MarqiAuth:user');
      if (authDataSerialized) {
        const authData = JSON.parse(authDataSerialized);
        setUser(authData);
        axios.defaults.headers.common['Authorization'] = `Bearer ${authData.token}`;
      }
    } catch (error) {
    } finally {
      setLoading(false);
    }
  }

  const login = async (email, password) => {
    // API Call would go here
    // For now, placeholder
  };

  const logout = async () => {
    await AsyncStorage.removeItem('@MarqiAuth:user');
    setUser(null);
  };

  return (
    <AuthContext.Provider value={{ user, loading, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);
