
### e_select >>> _ranking_practice ###

CREATE DATABASE IF NOT EXISTS ranking_db;
USE ranking_db;

CREATE TABLE brands (
	brand_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL
);

CREATE TABLE products (
	product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    brand_id BIGINT,
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id) ON DELETE CASCADE
);

-- 브랜드 데이터
INSERT INTO brands (brand_name) 
VALUES
	('삼성전자'),
    ('애플'),
    ('LG전자');
    
-- 상품 데이터
INSERT INTO products (product_name, price, brand_id) 
VALUES
	-- 삼성 전자 제품
    ('갤럭시 S24 Ultra', 1450000, 1),
    ('갤럭시 Z Fold 5', 1990000, 1),
    ('갤럭시 Watch 6', 450000, 1),
    ('갤럭시 Buds 2 Pro', 200000, 1),
    ('갤럭시 Tab S10', 2450000, 1),
    ('갤럭시 Book 4 Pro', 3500000, 1),
    
    -- 애플 제품
    ('iPhone 15 Pro Max', 1890000, 2),
    ('iPhone 15 mini', 1300000, 2),
    ('MacBook Pro 17', 3890000, 2),
    ('AirPods Pro 3', 390000, 2),
    ('Apple Watch 3', 1090000, 2),
    ('Mac Mini M2', 890000, 2),
    
    -- LG 전자 제품
    ('LG Gram 18', 2300000, 3),
    ('LG OLED TV', 5000000, 3),
    ('LG 퓨리케어 공기청정기', 850000, 3),
    ('LG 코드제로 청소기', 1100000, 3),
    ('LG 스탠바이미', 530000, 3),
    ('LG 트롬 오브제컬렉션', 2850000, 3);

SELECT * FROM brands;
SELECT * FROM products;

### 브랜드별 최고가 TOP3 상품 추출 ###
    

    
    
    
