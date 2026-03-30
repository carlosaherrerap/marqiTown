const { Product } = require('../models');

exports.createProduct = async (req, res) => {
  try {
    const { name, description, price, stock, category, subcategory, department, province, district } = req.body;
    const sellerId = req.userData.userId; // From auth middleware

    const images = req.files ? req.files.map(file => `/uploads/products/${file.filename}`) : [];

    const product = await Product.create({
      name,
      description,
      price,
      stock,
      category,
      subcategory,
      department,
      province,
      district,
      images,
      sellerId
    });

    res.status(201).json(product);
  } catch (error) {
    res.status(500).json({ message: 'Product creation failed', error: error.message });
  }
};

exports.getAllProducts = async (req, res) => {
  try {
    const products = await Product.findAll({
      where: { isActive: true },
      order: [['createdAt', 'DESC']]
    });
    res.json(products);
  } catch (error) {
    res.status(500).json({ message: 'Fetching products failed', error: error.message });
  }
};
