-- =============================================
-- Marqi Database Schema
-- PostgreSQL 16
-- =============================================

-- Enum types
CREATE TYPE user_role AS ENUM ('CLIENTE', 'VENDEDOR');
CREATE TYPE message_type AS ENUM ('text', 'image', 'audio');

-- =============================================
-- Users Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Users" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "fullName" VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role user_role DEFAULT 'CLIENTE',
    "isVerified" BOOLEAN DEFAULT FALSE,
    "phoneNumber" VARCHAR(50),
    "profilePhoto" VARCHAR(500),
    bio TEXT,
    department VARCHAR(255),
    province VARCHAR(255),
    district VARCHAR(255),
    "intisBalance" DECIMAL(12, 2) DEFAULT 0.00,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_users_email ON "Users"(email);
CREATE INDEX idx_users_role ON "Users"(role);

-- =============================================
-- Products Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Products" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    "oldPrice" DECIMAL(10, 2),
    "priceInIntis" DECIMAL(10, 2),
    stock INTEGER DEFAULT 0,
    category VARCHAR(255) NOT NULL,
    subcategory VARCHAR(255),
    tags TEXT,
    department VARCHAR(255) NOT NULL,
    province VARCHAR(255) NOT NULL,
    district VARCHAR(255) NOT NULL,
    images JSONB DEFAULT '[]',
    "videoUrl" VARCHAR(500),
    "isActive" BOOLEAN DEFAULT TRUE,
    "deliveryPrice" DECIMAL(10, 2),
    "paymentMethods" JSONB DEFAULT '["efectivo"]',
    "sellerId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_products_seller ON "Products"("sellerId");
CREATE INDEX idx_products_category ON "Products"(category);
CREATE INDEX idx_products_location ON "Products"(department, province, district);
CREATE INDEX idx_products_active ON "Products"("isActive");

-- =============================================
-- Services Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Services" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(255) NOT NULL,
    cost DECIMAL(10, 2),
    includes JSONB DEFAULT '[]',
    department VARCHAR(255) NOT NULL,
    province VARCHAR(255) NOT NULL,
    district VARCHAR(255) NOT NULL,
    "isActive" BOOLEAN DEFAULT TRUE,
    "sellerId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_services_seller ON "Services"("sellerId");
CREATE INDEX idx_services_category ON "Services"(category);
CREATE INDEX idx_services_location ON "Services"(department, province, district);

-- =============================================
-- ChatMessages Table
-- =============================================
CREATE TABLE IF NOT EXISTS "ChatMessages" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "senderId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "receiverId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    message TEXT,
    type message_type DEFAULT 'text',
    "mediaUrl" VARCHAR(500),
    "isRead" BOOLEAN DEFAULT FALSE,
    context VARCHAR(255),
    "contextId" UUID,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_chat_sender ON "ChatMessages"("senderId");
CREATE INDEX idx_chat_receiver ON "ChatMessages"("receiverId");
CREATE INDEX idx_chat_context ON "ChatMessages"(context, "contextId");

-- =============================================
-- Favorites Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Favorites" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "productId" UUID REFERENCES "Products"(id) ON DELETE CASCADE,
    "serviceId" UUID REFERENCES "Services"(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE("userId", "productId"),
    UNIQUE("userId", "serviceId")
);

-- =============================================
-- Cart Table
-- =============================================
CREATE TABLE IF NOT EXISTS "CartItems" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "productId" UUID NOT NULL REFERENCES "Products"(id) ON DELETE CASCADE,
    quantity INTEGER DEFAULT 1,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE("userId", "productId")
);

-- =============================================
-- Followers Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Followers" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "followerId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "followingId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "trustHeart" BOOLEAN DEFAULT FALSE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE("followerId", "followingId")
);

-- =============================================
-- Avisos (Announcements) Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Avisos" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    content TEXT NOT NULL,
    images JSONB DEFAULT '[]',
    "authorId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "authorRole" user_role NOT NULL,
    "isActive" BOOLEAN DEFAULT TRUE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_avisos_author ON "Avisos"("authorId");

-- =============================================
-- Reactions Table (for Avisos)
-- =============================================
CREATE TABLE IF NOT EXISTS "Reactions" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "avisoId" UUID NOT NULL REFERENCES "Avisos"(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE("userId", "avisoId")
);

-- =============================================
-- Stories (Estados) Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Stories" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "mediaUrl" VARCHAR(500) NOT NULL,
    "mediaType" VARCHAR(20) DEFAULT 'image',
    "expiresAt" TIMESTAMP WITH TIME ZONE NOT NULL,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_stories_user ON "Stories"("userId");
CREATE INDEX idx_stories_expires ON "Stories"("expiresAt");

-- =============================================
-- Story Views Table
-- =============================================
CREATE TABLE IF NOT EXISTS "StoryViews" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "storyId" UUID NOT NULL REFERENCES "Stories"(id) ON DELETE CASCADE,
    "viewerId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    reacted BOOLEAN DEFAULT FALSE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE("storyId", "viewerId")
);

-- =============================================
-- Media (Short Videos / TikTok) Table
-- =============================================
CREATE TABLE IF NOT EXISTS "MediaVideos" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "videoUrl" VARCHAR(500) NOT NULL,
    description TEXT,
    "linkedProductId" UUID REFERENCES "Products"(id) ON DELETE SET NULL,
    "linkedServiceId" UUID REFERENCES "Services"(id) ON DELETE SET NULL,
    likes INTEGER DEFAULT 0,
    "sellerId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_media_seller ON "MediaVideos"("sellerId");

-- =============================================
-- Notifications Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Notifications" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    type VARCHAR(100) NOT NULL,
    title VARCHAR(255) NOT NULL,
    body TEXT,
    "relatedId" UUID,
    "relatedType" VARCHAR(50),
    count INTEGER DEFAULT 1,
    "isRead" BOOLEAN DEFAULT FALSE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_notifications_user ON "Notifications"("userId");
CREATE INDEX idx_notifications_read ON "Notifications"("isRead");

-- =============================================
-- Feedback Table
-- =============================================
CREATE TABLE IF NOT EXISTS "Feedback" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "isAnonymous" BOOLEAN DEFAULT FALSE,
    message TEXT NOT NULL,
    images JSONB DEFAULT '[]',
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- =============================================
-- Verification Requests Table
-- =============================================
CREATE TABLE IF NOT EXISTS "VerificationRequests" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "roleToVerify" user_role NOT NULL,
    "frontDniPhoto" VARCHAR(500),
    "backDniPhoto" VARCHAR(500),
    "selfiePhoto" VARCHAR(500),
    "rightSidePhoto" VARCHAR(500),
    "leftSidePhoto" VARCHAR(500),
    "audioUrl" VARCHAR(500),
    status VARCHAR(20) DEFAULT 'pending',
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_verification_user ON "VerificationRequests"("userId");

-- =============================================
-- Trabajos (Jobs) Table - Solo para Clientes
-- =============================================
CREATE TABLE IF NOT EXISTS "Trabajos" (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title VARCHAR(255) NOT NULL,
    keyword VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    payment DECIMAL(10, 2),
    "paymentMethods" JSONB DEFAULT '["efectivo"]',
    duration VARCHAR(100),
    department VARCHAR(255) NOT NULL,
    province VARCHAR(255) NOT NULL,
    district VARCHAR(255) NOT NULL,
    "enableChat" BOOLEAN DEFAULT TRUE,
    "enableWhatsapp" BOOLEAN DEFAULT FALSE,
    "isActive" BOOLEAN DEFAULT TRUE,
    "clientId" UUID NOT NULL REFERENCES "Users"(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    "updatedAt" TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX idx_trabajos_client ON "Trabajos"("clientId");
CREATE INDEX idx_trabajos_location ON "Trabajos"(department, province, district);
