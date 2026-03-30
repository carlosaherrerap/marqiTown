const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');
const auth = require('../middleware/auth');
const upload = require('../middleware/upload');

router.get('/', productController.getAllProducts);
router.post('/', auth, upload.array('images', 5), productController.createProduct);

module.exports = router;
