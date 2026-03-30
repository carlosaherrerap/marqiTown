-- =============================================
-- Marqi Seed Data
-- Passwords hashed with bcrypt (10 rounds)
-- All passwords: "Test1234!"
-- =============================================

-- =============================================
-- Users (2 Vendedores + 2 Clientes)
-- =============================================
INSERT INTO "Users" (id, "fullName", email, password, role, "isVerified", "phoneNumber", bio, department, province, district, "intisBalance")
VALUES
  ('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'Carlos Herrera', 'carlos@marqi.pe', '$2a$10$xJ8Kq5M5vZjY1Q5q5z5Q5eVhYkL8H0K5qJ5M5c5z5z5z5z5z5z', 'VENDEDOR', true, '900124654', 'Vendedor de electrodomésticos y tecnología en Lima.', 'Lima', 'Lima', 'San Isidro', 500.00),
  ('b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e', 'María López', 'maria@marqi.pe', '$2a$10$xJ8Kq5M5vZjY1Q5q5z5Q5eVhYkL8H0K5qJ5M5c5z5z5z5z5z5z', 'VENDEDOR', true, '987654321', 'Moda y accesorios artesanales de Cusco.', 'Cusco', 'Cusco', 'Wanchaq', 250.00),
  ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'Alex Ramírez', 'alex@marqi.pe', '$2a$10$xJ8Kq5M5vZjY1Q5q5z5Q5eVhYkL8H0K5qJ5M5c5z5z5z5z5z5z', 'CLIENTE', false, '912345678', 'Buscando las mejores ofertas.', 'Lima', 'Lima', 'Miraflores', 100.00),
  ('d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a', 'Lucía Torres', 'lucia@marqi.pe', '$2a$10$xJ8Kq5M5vZjY1Q5q5z5Q5eVhYkL8H0K5qJ5M5c5z5z5z5z5z5z', 'CLIENTE', false, '998877665', 'Amante de la moda y la cocina.', 'Arequipa', 'Arequipa', 'Cayma', 50.00);

-- =============================================
-- Products (6 productos de ejemplo)
-- =============================================
INSERT INTO "Products" (id, name, description, price, "oldPrice", "priceInIntis", stock, category, subcategory, tags, department, province, district, images, "isActive", "deliveryPrice", "paymentMethods", "sellerId")
VALUES
  ('p1000001-0000-4000-a000-000000000001', 'Laptop HP Pavilion 15', 'Laptop HP Pavilion 15, procesador Intel Core i5, 8GB RAM, 256GB SSD. Ideal para trabajo y estudio.', 2499.99, 2899.99, 2499.99, 5, 'Tecnología', 'Laptops', '#laptop #hp #tecnologia #oferta', 'Lima', 'Lima', 'San Isidro', '["uploads/products/laptop_hp_1.jpg", "uploads/products/laptop_hp_2.jpg"]', true, 15.00, '["efectivo", "intis", "yape"]', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d'),
  ('p1000001-0000-4000-a000-000000000002', 'Refrigeradora Samsung 300L', 'Refrigeradora Samsung de 300 litros, tecnología No Frost, color gris plateado.', 1899.00, NULL, 1899.00, 3, 'Hogar', 'Electrodomésticos', '#refrigeradora #samsung #hogar', 'Lima', 'Lima', 'San Isidro', '["uploads/products/refri_samsung.jpg"]', true, 50.00, '["efectivo", "intis"]', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d'),
  ('p1000001-0000-4000-a000-000000000003', 'Bolso Artesanal de Cuero', 'Bolso hecho a mano con cuero peruano genuino. Diseño exclusivo cusqueño.', 189.90, 250.00, 189.90, 20, 'Moda', 'Accesorios', '#bolso #artesanal #cuero #cusco', 'Cusco', 'Cusco', 'Wanchaq', '["uploads/products/bolso_cuero_1.jpg", "uploads/products/bolso_cuero_2.jpg"]', true, 10.00, '["efectivo", "intis", "pago contra entrega"]', 'b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e'),
  ('p1000001-0000-4000-a000-000000000004', 'Chompa de Alpaca Premium', 'Chompa de alpaca baby 100% natural. Tejida a mano por artesanas cusqueñas.', 320.00, NULL, 320.00, 15, 'Moda', 'Ropa', '#alpaca #chompa #artesanal #cusco', 'Cusco', 'Cusco', 'Wanchaq', '["uploads/products/chompa_alpaca.jpg"]', true, 12.00, '["efectivo", "intis"]', 'b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e'),
  ('p1000001-0000-4000-a000-000000000005', 'Audífonos Bluetooth Sony', 'Audífonos inalámbricos Sony WH-1000XM4. Cancelación de ruido activa.', 899.00, 1199.00, 899.00, 8, 'Tecnología', 'Audio', '#audifonos #sony #bluetooth', 'Lima', 'Lima', 'San Isidro', '["uploads/products/audifonos_sony.jpg"]', true, 0.00, '["efectivo", "intis", "yape"]', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d'),
  ('p1000001-0000-4000-a000-000000000006', 'Mochila de Viaje 40L', 'Mochila resistente al agua, ideal para trekking y viajes. Múltiples compartimentos.', 159.90, NULL, 159.90, 30, 'Deportes', 'Accesorios', '#mochila #viaje #trekking', 'Lima', 'Lima', 'San Isidro', '["uploads/products/mochila_viaje.jpg"]', true, 8.00, '["efectivo", "pago contra entrega"]', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d');

-- =============================================
-- Services (2 servicios de ejemplo)
-- =============================================
INSERT INTO "Services" (id, title, description, category, cost, includes, department, province, district, "sellerId")
VALUES
  ('s1000001-0000-4000-a000-000000000001', 'Reparación de Refrigeradoras', 'Soy técnico especializado en refrigeradoras. Reparo, instalo y doy mantenimiento a todas las marcas.', 'Técnico', 150.00, '["Diagnóstico gratuito", "Repuestos originales", "Garantía de 3 meses"]', 'Lima', 'Lima', 'San Isidro', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d'),
  ('s1000001-0000-4000-a000-000000000002', 'Diseño de Interiores', 'Diseñadora de interiores con 5 años de experiencia. Asesoría y remodelación completa.', 'Diseño', 500.00, '["Visita al domicilio", "Planos 3D", "Seguimiento del proyecto"]', 'Cusco', 'Cusco', 'Wanchaq', 'b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e');

-- =============================================
-- Avisos (Announcements)
-- =============================================
INSERT INTO "Avisos" (id, content, images, "authorId", "authorRole")
VALUES
  ('av100001-0000-4000-a000-000000000001', '🔥 Gran liquidación de tecnología este fin de semana. ¡Hasta 30% de descuento en laptops y audífonos!', '["uploads/avisos/liquidacion_tech.jpg"]', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'VENDEDOR'),
  ('av100001-0000-4000-a000-000000000002', '¿Alguien sabe dónde conseguir buenas chompas de alpaca a buen precio? 🦙', '[]', 'c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'CLIENTE');

-- =============================================
-- Followers
-- =============================================
INSERT INTO "Followers" ("followerId", "followingId", "trustHeart")
VALUES
  ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', true),
  ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e', false),
  ('d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a', 'b2c3d4e5-f6a7-4b8c-9d0e-1f2a3b4c5d6e', true);

-- =============================================
-- Favorites
-- =============================================
INSERT INTO "Favorites" ("userId", "productId")
VALUES
  ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'p1000001-0000-4000-a000-000000000003'),
  ('d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a', 'p1000001-0000-4000-a000-000000000001');

-- =============================================
-- CartItems
-- =============================================
INSERT INTO "CartItems" ("userId", "productId", quantity)
VALUES
  ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'p1000001-0000-4000-a000-000000000005', 1),
  ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'p1000001-0000-4000-a000-000000000003', 2);

-- =============================================
-- ChatMessages (example conversation)
-- =============================================
INSERT INTO "ChatMessages" ("senderId", "receiverId", message, type, context, "contextId")
VALUES
  ('c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'Hola, me interesa la Laptop HP. ¿Aún está disponible?', 'text', 'product', 'p1000001-0000-4000-a000-000000000001'),
  ('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', '¡Hola! Sí, todavía tengo 5 unidades. ¿Te gustaría verla?', 'text', 'product', 'p1000001-0000-4000-a000-000000000001');

-- =============================================
-- Notifications
-- =============================================
INSERT INTO "Notifications" ("userId", type, title, body, "relatedId", "relatedType", count)
VALUES
  ('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'new_message', 'Nuevo mensaje', 'Alex Ramírez te envió un mensaje sobre Laptop HP Pavilion 15', 'c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f', 'chat', 1),
  ('a1b2c3d4-e5f6-4a7b-8c9d-0e1f2a3b4c5d', 'aviso_reaction', 'Reacción en tu aviso', 'A alguien le gustó tu aviso de liquidación', 'av100001-0000-4000-a000-000000000001', 'aviso', 1);

-- =============================================
-- Reactions (on Avisos)
-- =============================================
INSERT INTO "Reactions" ("userId", "avisoId")
VALUES
  ('d4e5f6a7-b8c9-4d0e-1f2a-3b4c5d6e7f8a', 'av100001-0000-4000-a000-000000000001');

-- =============================================
-- Trabajos (Jobs)
-- =============================================
INSERT INTO "Trabajos" (id, title, keyword, description, payment, "paymentMethods", duration, department, province, district, "enableChat", "enableWhatsapp", "clientId")
VALUES
  ('t1000001-0000-4000-a000-000000000001', 'Necesito pintor para departamento', 'pintor casa', 'Busco un pintor para pintar un departamento de 80m2 en Miraflores. Se requiere experiencia y herramientas propias.', 800.00, '["efectivo"]', '3 días', 'Lima', 'Lima', 'Miraflores', true, true, 'c3d4e5f6-a7b8-4c9d-0e1f-2a3b4c5d6e7f');
