const multer = require('multer');
const path = require('path');
const fs = require('fs');

// Ensure upload directories exist
const uploadDir = path.join(__dirname, '../../uploads');
const dirs = ['products', 'videos', 'verification', 'chat'];
dirs.forEach(d => {
  const dirPath = path.join(uploadDir, d);
  if (!fs.existsSync(dirPath)) {
    fs.mkdirSync(dirPath, { recursive: true });
  }
});

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    let folder = 'products';
    if (file.fieldname === 'video') folder = 'videos';
    if (file.fieldname === 'verification') folder = 'verification';
    if (file.fieldname === 'chat') folder = 'chat';
    cb(null, path.join(uploadDir, folder));
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}-${file.originalname}`);
  }
});

const upload = multer({ 
  storage,
  limits: { fileSize: 100 * 1024 * 1024 } // 100MB limit for videos
});

module.exports = upload;
