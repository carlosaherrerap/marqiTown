const express = require('express');
const cors = require('cors');
const http = require('http');
const WebSocket = require('ws');
const sequelize = require('./config/database');
const path = require('path');
const authRoutes = require('./routes/authRoutes');
const productRoutes = require('./routes/productRoutes');
require('dotenv').config();

const app = express();
const server = http.createServer(app);
const wss = new WebSocket.Server({ server });

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/uploads', express.static(path.join(__dirname, '../uploads')));

// Routes
app.use('/api/auth', authRoutes);
app.use('/api/products', productRoutes);

// WebSocket handling
wss.on('connection', (ws) => {
  console.log('New client connected');
  ws.on('message', (message) => {
    console.log('Received:', message);
    // Broadcast or handle message
  });
  ws.on('close', () => console.log('Client disconnected'));
});

// Basic Route
app.get('/', (req, res) => {
  res.json({ message: 'Welcome to Marqi API' });
});

// Database Connection & Start Server
const PORT = process.env.PORT || 5000;

sequelize.authenticate()
  .then(() => {
    console.log('✅ Database connected successfully');
    server.listen(PORT, () => {
      console.log(`🚀 Server running on port ${PORT}`);
      console.log(`🔌 WebSocket server ready`);
    });
  })
  .catch(err => {
    console.error('❌ Database connection failed:', err.message);
    process.exit(1);
  });
