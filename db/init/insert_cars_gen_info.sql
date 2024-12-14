DELETE FROM cars;
DELETE FROM cars_general_info;

-- nfs 1
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(1, 'Lamborghini', 'Diablo', 320, 3.9, 1576, 5.7, 490, 15, 36000000, 'Italy'), --
(2, 'Ferrari', '512TR', 315, 4.2, 1473, 4.9, 428, 14, 19000000, 'Italy'),
(3, 'Chevrolet', 'Corvette', 290, 4.5, 1500, 5.7, 300, 13, 5000000, 'USA'), --
(4, 'Dodge', 'Viper', 300, 4.3, 1450, 8.0, 400, 16, 10000000, 'USA'), --
(5, 'Porsche', '911', 280, 4.7, 1350, 3.6, 272, 12, 22000000, 'Germany'), --
(6, 'Acura', 'NSX', 270, 4.8, 1300, 3.0, 270, 11, 23900000, 'Japan'),
(7, 'Mazda', 'RX-7', 250, 5.0, 1250, 1.3, 255, 10, 3500000, 'Japan'), --
(8, 'Toyota', 'Supra', 280, 4.6, 1400, 3.0, 276, 12, 5000000, 'Japan'); --

-- nfs 2
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(9, 'McLaren', 'F1', 386, 3.2, 1140, 6.1, 627, 15, 85000000, 'UK'),
(10, 'Ferrari', 'F50', 325, 3.8, 1230, 4.7, 520, 16, 35000000, 'Italy'),
(11, 'Lotus', 'GT1', 340, 3.7, 1050, 3.5, 580, 13, 35000000, 'UK'),
(12, 'Ford', 'Indigo', 362, 3.5, 1200, 6.0, 600, 14, NULL, 'USA'),
(13, 'Jaguar', 'XJ220', 341, 3.6, 1470, 3.5, 542, 15, 90000000, 'UK'),
(14, 'Italdesign', 'Nazca C2', 300, 4.2, 1100, 5.0, 350, 12, NULL, 'Italy'),
(15, 'Italdesign', 'Cala', 300, 4.1, 1200, 3.0, 300, 11, NULL, 'Italy'),
(16, 'Lotus', 'Esprit', 280, 4.4, 1300, 3.5, 350, 10, 4200000, 'UK'),
(17, 'Ford', 'Mustang', 290, 4.5, 1400, 5.0, 460, 13, 4000000, 'USA'), --
(18, 'Ferrari', 'F355', 295, 4.6, 1250, 3.5, 380, 11, 29000000, 'Italy');

-- nfs hp

INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(19, 'Audi', 'R8 V10', 330, 3.2, 1580, 5.2, 525, 13, 16900000, 'Germany'),
(20, 'Audi', 'TT RS', 280, 3.7, 1450, 2.5, 400, 9, 4000000, 'Germany'),
(21, 'Chevrolet', 'Camaro SS (MkV)', 290, 4.0, 1685, 6.2, 455, 12, 3500000, 'USA'),
(22, 'Chevrolet', 'Corvette ZR1', 330, 2.8, 1530, 6.2, 650, 14, 12000000, 'USA'),
(23, 'Dodge', 'Challenger', 290, 4.2, 1770, 6.4, 485, 13, 3500000, 'USA'), --
(24, 'Dodge', 'Charger', 290, 4.3, 1800, 6.4, 485, 13, 4000000, 'USA'), --
(25, 'Lamborghini', 'Gallardo', 325, 3.7, 1430, 5.0, 560, 14, 20000000, 'Italy'),
(26, 'Nissan', '370Z', 250, 5.2, 1474, 3.7, 332, 10, 3600000, 'Japan'),
(27, 'Subaru', 'Impreza WRX STI', 255, 4.9, 1520, 2.5, 305, 10, 3500000, 'Japan'), --
(28, 'Mitsubishi', 'Lancer Evolution VIII', 250, 5.1, 1450, 2.0, 276, 10, 3000000, 'Japan'), --
(29, 'Mitsubishi', 'Lancer Evolution IX', 250, 5.0, 1450, 2.0, 286, 10, 4500000, 'Japan'), --
(30, 'Mitsubishi', 'Lancer Evolution X', 250, 4.5, 1560, 2.0, 291, 10, 3900000, 'Japan'); 


-- NFS porche unl
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(31, 'Porsche', '356 B 1600 Super 90 (1960)', 190, 10.0, 850, 1.6, 90, 8, NULL, 'Germany'),
(32, 'Porsche', '356 B 2000 GS Carrera 2 (1961)', 200, 9.0, 870, 2.0, 130, 9, NULL, 'Germany'),
(33, 'Porsche', '550 (1953)', 220, 8.0, 550, 1.5, 110, 7, NULL, 'Germany'),
(34, 'Porsche', '944 (1983)', 240, 7.0, 1300, 3.0, 220, 10, NULL, 'Germany'),
(35, 'Porsche', '928 GTS (1992)', 270, 6.0, 1450, 5.0, 320, 12, 3650000, 'Germany'),
(36, 'Porsche', '959 (1986)', 339, 3.7, 1450, 2.9, 450, 11, 330000000, 'Germany');

-- nfs high s
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(37, 'Aston Martin', 'DB7', 295, 5.0, 1600, 3.2, 335, 12, 15000000, 'UK'),
(38, 'Nissan', 'Skyline GT-R', 250, 4.8, 1540, 2.6, 276, 10, 3500000, 'Japan'),
(39, 'Ford', 'Crown Victoria', 210, 8.0, 1800, 4.6, 210, 13, 1000000, 'USA'),
(40, 'Mercedes-Benz', 'CLK GTR', 320, 3.8, 1100, 6.9, 612, 16, 4000000, 'Germany'),
(41, 'Mercedes-Benz', 'SLK 230', 230, 7.0, 1300, 2.3, 193, 9, 4500000, 'Germany');

-- undg 12 mw 2005 carbon
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(42, 'Ford', 'Focus ZX3', 200, 8.5, 1200, 2.0, 130, 7, 2000000, 'USA'),
--
(43, 'Nissan', '350Z', 250, 5.7, 1400, 3.5, 280, 10, 3000000, 'Japan'),
(44, 'Volkswagen', 'Golf GTI', 230, 6.4, 1300, 2.0, 210, 7, 5500000, 'Germany'),
(45, 'Honda', 'Civic Si', 220, 6.8, 1200, 2.0, 205, 8, 1800000, 'Japan'),
(46, 'Lexus', 'IS 300', 230, 6.5, 1500, 3.0, 255, 9, 4000000, 'Japan'),
(47, 'Mitsubishi', 'Eclipse', 240, 6.0, 1400, 3.0, 260, 9, 900000, 'Japan'),
(48, 'Mazda', 'MX-5 Miata', 220, 6.5, 1100, 2.0, 155, 7, 4500000, 'Japan'),
(49, 'Mercedes-Benz', 'CLK 500', 250, 5.2, 1600, 5.0, 302, 11, 5000000, 'Germany'),
(50, 'Renault', 'Clio V6', 235, 6.0, 1200, 3.0, 255, 9, 1600000, 'France'),
--
(51, 'BMW', 'M3 GTR', 300, 4.5, 1400, 4.0, 450, 12, 7000000, 'Germany'),
(52, 'Pontiac', 'GTO', 250, 5.3, 1600, 6.0, 350, 12, 3500000, 'USA');

-- shift undercover pro street 
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(53, 'Ford', 'Escort RS Cosworth', 225, 6.1, 1200, 2.0, 227, 8, 2200000, 'USA'),
(54, 'Infiniti', 'G35', 250, 5.8, 1500, 3.5, 280, 10, 3500000, 'Japan'),
(55, 'BMW', 'Z4 M Coupe', 250, 5.0, 1350, 3.2, 338, 9, 8000000, 'Germany'),
(56, 'Nissan', 'Silvia', 240, 6.0, 1250, 2.0, 250, 9, 2000000, 'Japan'),
(57, 'Lexus', 'IS-F', 270, 4.6, 1680, 5.0, 416, 11, 6000000, 'Japan'),
(58, 'Bugatti', 'Veyron', 407, 2.5, 1888, 8.0, 1001, 24, 50000000, 'France'),
(59, 'Audi', 'RS4', 280, 4.8, 1620, 4.2, 420, 10, 7000000, 'Germany'),
(60, 'Honda', 'S2000', 240, 5.4, 1250, 2.0, 240, 8, 3500000, 'Japan'),
(61, 'Volkswagen', 'Scirocco', 235, 6.9, 1350, 2.0, 200, 7, 2500000, 'Germany');


-- run rivals
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(62, 'Ferrari', 'F40', 324, 3.8, 1100, 2.9, 478, 16, 120000000, 'Italy'),
(63, 'Lamborghini', 'Aventador', 350, 2.9, 1575, 6.5, 700, 16, 40000000, 'Italy'),
(64, 'McLaren', 'P1', 350, 2.8, 1430, 3.8, 903, 8, 115000000, 'UK'),
(65, 'Maserati', 'GranTurismo MC Stradale', 300, 4.5, 1600, 4.7, 460, 14, 3500000, 'Italy'),
(66, 'Nissan', 'GT-R (R35)', 315, 2.7, 1740, 3.8, 565, 12, 6000000, 'Japan'),
(67, 'Hennessey', 'Venom GT', 435, 2.7, 1244, 7.0, 1244, 19, NULL, 'USA');

-- payback heat unbound
INSERT INTO cars_general_info (id, car_name, car_model, max_speed, acceleration, mass, engine_volume, horsepower, fuel_consumption, price, country) VALUES
(68, 'Mercedes', 'AMG GT', 318, 3.8, 1540, 4.0, 577, 12, 15000000, 'Germany'),
(69, 'Volkswagen', 'Beetle', 180, 7.5, 1200, 2.0, 150, 6, 2000000, 'Germany'),
(70, 'BMW', 'i8', 250, 4.4, 1485, 1.5, 357, 2, 14000000, 'Germany'),
(71, 'Ferrari', 'Testarossa', 290, 4.9, 1360, 4.9, 390, 15, 23500000, 'Italy'),
(72, 'Honda', 'NSX Type-R', 306, 3.1, 1350, 3.5, 573, 11, 20000000, 'Japan'),
(73, 'Mini', 'John Cooper Works Countryman', 225, 6.5, 1500, 2.0, 301, 7, 4000000, 'UK'),
(74, 'Mercury', 'Cougar', 210, 7.0, 1400, 3.0, 170, 9, 9900000, 'USA'),
(75, 'Jaguar', 'F-Type R Coupe', 300, 4.0, 1595, 5.0, 550, 11, 10000000, 'UK');
