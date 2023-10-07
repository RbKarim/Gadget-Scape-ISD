Create database GadgetScape;
use GadgetScape;


-----------------------------------------------Employee
Drop table Manager;
Drop table Salesman;
Drop table Employee;

CREATE TABLE Employee
(
Emp_ID int NOT NULL Primary Key,
EmpName varchar(50) NOT NULL,
Email varchar(70) NOT NULL,
Phone varchar(11) NOT NULL,
Passwords varchar(10) NOT NULL,
NID varchar(17) NOT NULL Unique,
Addresses varchar(70),
Roles varchar(20) NOT NULL,
)

insert into Employee
Values (2208104, 'Sabera', 'xx@gmail.com', '01625193819', '123456789','12345678912345678','38/2,West Malibag,Dhaka','Manager'),
       (2208204, 'Sakib', 'xy@gmail.com', '01625192159', '123456789','12345678912345677','38/1,Dhanmondi,Dhaka','Salesman');
       
select * from Employee;

-------------------------------------------------Salesman
CREATE TABLE Salesman
(
SM_ID int NOT NULL IDENTITY(201,1) Primary Key,
Emp_ID int,
WorkingHours float,
Rate float,
foreign key (Emp_ID) references Employee(Emp_ID)
)

insert into Salesman
Values (2208204, 5.5, 350);

select * from Salesman;

----------------------------------------------------Manager
CREATE TABLE Manager
(
Manager_ID int NOT NULL IDENTITY(101,1) Primary Key,
Emp_ID int,
Period float,
Rate float,
foreign key (Emp_ID) references Employee(Emp_ID)
)

insert into Manager
Values (2208104, 5, 10000);

select * from Manager;

------------------------------------------------------Admin
CREATE TABLE Admins
(
Admin_ID int NOT NULL IDENTITY(1,1) Primary Key,
AdminName varchar(50) NOT NULL,
Phone varchar(11) NOT NULL UNIQUE,
Email varchar(30) NOT NULL,
Passwords varchar(20) NOT NULL,
)

INSERT INTO Admins VALUES ('Rifat Bin Karim', '01777555666', 'rifat@gmail.com', '123456');

SELECT * FROM Admins;

DROP TABLE Admins;
TRUNCATE TABLE Admins;


--------------------------------------------------------customer
CREATE TABLE Customer
(
Cus_ID int NOT NULL IDENTITY(1,1) Primary Key,
Cus_Name varchar(50) NOT NULL,
Phone varchar(11) NOT NULL UNIQUE,
Points int NOT NULL
)

INSERT INTO Customer VALUES ('Rifat Karim', '01777555666', 0);
INSERT INTO Customer VALUES ('Rifat Karim', '01788555666', 10000);

SELECT * FROM Customer;

DROP TABLE Customer;
TRUNCATE TABLE Customer;


---------------------------------------------------------purchase
CREATE TABLE Purchase
(
Trans_ID int NOT NULL PRIMARY KEY,
Cus_ID int,
DateOfPurchase date DEFAULT GETDATE(),
totalAmount float NOT NULL
foreign key (Cus_ID) references Customer(Cus_ID),
);

SELECT * FROM Purchase;

DROP TABLE Purchase;
TRUNCATE TABLE Purchase;

INSERT INTO Purchase (Trans_ID, Cus_ID, totalAmount) VALUES (10001, 1, 1000);

---------------------------------------------------------per transaction
CREATE TABLE perTrans
(
Serial int NOT NULL IDENTITY(1,1) Primary Key,
Product_ID int not null,
quantity int not null,
Trans_ID int not null,
);

INSERT INTO perTrans (Product_ID, quantity,Trans_ID)Values(220906477,72,1)

TRUNCATE TABLE perTrans
DROP TABLE perTrans;
SELECT *FROM perTrans;


----------------------------------------------------Dealers

CREATE TABLE Dealers
(
Dealer_ID int NOT NULL IDENTITY(1,1) Primary Key,
Company_Name varchar(300) NOT NULL,
Phone varchar(20) NOT NULL,
Email varchar(50) NOT NULL,
Addresses varchar(500) NOT NULL);

INSERT INTO Dealers VALUES('Samsung Bangladesh','+8809612300300','samsung.bd@gmail.com','Plot-01, 5th floor, Road-11, Block: H, Dhaka Dhaka Cantonment Dhaka-1206')

INSERT INTO Dealers VALUES('Global Brand','01729200300','globalbrand.bd@gmail.com','19/2, (3rd-7th floor)West, Panthapath, Dhaka 1207')

SELECT *FROM Dealers;


-----------------------------------------------------Products
CREATE TABLE Products
(
Product_ID int NOT NULL IDENTITY(1,1) Primary Key,
ImageURL varchar(100) NOT NULL,
Product_Name varchar(300) NOT NULL,
Product_Status varchar(20) NOT NULL,
Category varchar(50) NOT NULL,
Details varchar(500) NOT NULL,
Quantity int NOT NULL,
Price float NOT NULL
);

TRUNCATE TABLE Products
DROP TABLE Products;
SELECT *FROM Products;



------------------------CATEGORY: Laptop
--01
INSERT INTO Products VALUES ('/images/products/inspiron-15-5510.jpg', 'Dell Inspiron 15 5510 Intel Core i5 11320H 15.6 Inch FHD Display Platinum Silver Laptop', 
'In Stock', 'Laptop', 'Model: Inspiron 15 5510/nProcessor: Intel Core i5-11320H (8M Cache, 3.20 GHz up to 4.50 GHz, with IPU)/nRAM: 8GB 3200MHz RAM/nSSD: 512GB M.2 PCIe NVMe SSD/nWin 10 Home & MS Office',
 20, 83000);
 
--02
INSERT INTO Products VALUES ('/images/products/laptop-2.jpg', 'Razer Book 13 Core i7 11th Gen 512GB SSD 13.4" FHD Touch Laptop', 
'In Stock', 'Laptop', 'Model: Razer Book 13/nIntel Core i7-1165G7 Processor (12MB Cache, 2.80GHz up to 4.70GHz)/n16GB Dual-Channel RAM/n512GB PCIe SSD/n13.4" (1920 x 1200) Full HD Touch Display',
 20, 19000);
 
---03
INSERT INTO Products VALUES ('/images/products/laptop-3.jpg', 'Razer Blade 15 Advanced Model Core i7 11th Gen RTX3070 8GB Graphics 15.6" FHD 360Hz Gaming Laptop', 
'In Stock', 'Laptop', 'Model: Razer Blade 15 Advanced Model/nIntel Core i7-11800H Processor (24M Cache, 2.30 GHz up to 4.60 GHz)/n15.6" FHD (1920 x 1080) 360Hz Display/nNVIDIA GeForce RTX3070 8GB Graphics/n16GB DDR4 3200MHz RAM+ 1TB SSD',
 20, 299000); 
 
 
-----------------------CATEGORY: Monitor
--01 
INSERT INTO Products VALUES ('/images/products/viewSonic-01.jpg', 'Viewsonic VA1903H 18.5" LED Monitor (HDMI, VGA)', 
'In Stock', 'Monitor', 'Model: VA1903H/nResolution: WXGA (1366 x 768)/nDisplay: TN, 60Hz, 5ms/nPorts: HDMI, VGA, 3.5mm Audio/nFeatures: Flicker Free',
 20, 9900);
 
---02
 INSERT INTO Products VALUES ('/images/products/193v-500x500.png', 'PHILIPS 18.5" 193V5LSB2 LED MONITOR', 
'In Stock', 'Monitor', 'Model: 193V/nResolution: (1366 x 768)/nDisplay: TFT-LCD, 60Hz, 5ms/nPorts: VGA/nFeatures: VESA mount',
 20, 9900);
 
---03
   INSERT INTO Products VALUES ('/images/products/monitor2.png', 'PHILIPS 18.5" 193V5LSB2 LED MONITOR', 
'In Stock', 'Monitor', 'Model: VA1903H/nResolution: WXGA (1366 x 768)/nDisplay: TN, 60Hz, 5ms/nPorts: HDMI, VGA, 3.5mm Audio/nFeatures: Flicker Free',
 20, 10000);
 
--04
   INSERT INTO Products VALUES ('/images/products/monitor3.jpg', 'LG 19M38A 18.5 Inch Monitor', 
'In Stock', 'Monitor', 'Model: LG 19M38A/nResolution: 1366 x 768/nDisplay: TN, 60Hz, 5ms/nPorts: VGA /nFeatures: Flicker Free',
 20, 10000);
 
 --05
    INSERT INTO Products VALUES ('/images/products/monitor4.jpg', 'Acer EB192Q 18.5 Inch HD Monitor', 
'In Stock', 'Monitor', 'Model: EB192Q/nResolution: HD (1366 x 768)/nDisplay: TN, 60Hz, 5ms/nPorts: VGA /nFeatures: Vesa Mount Support',
 20, 10000);
 
 ---06
 INSERT INTO Products VALUES ('/images/products/monitor5.jpg', 'LG 22MP400-B 22-inch Full HD Monitor', 
'In Stock', 'Monitor', 'Model: 22MP400-B/nResolution: FHD (1920 x 1080)/nDisplay: VA, 75Hz, 5ms (GtG at Faster)/nPorts: 1x HDMI, 1x D-Sub/nFeatures: AMD Free Sync, Smart Energy Saving, Flicker Free',
 20, 13700);
 
 --07
  INSERT INTO Products VALUES ('/images/products/monitor6.jpg', 'MSI Optix G241V E2 24" FHD FreeSync IPS Esports Gaming Monitor', 
'In Stock', 'Monitor', 'Model: 22MP400-B/nResolution: FHD (1920 x 1080)/nDisplay: IPS, 75Hz, 1ms/nPorts: HDMI, 3.5mm Audio Out, DP/nFeatures: Free Sync, Flicker Free',
 20, 18500);
 
 --08
 INSERT INTO Products VALUES ('/images/products/monitor7.jpg', 'ASUS VZ24EHE IPS FHD 23.8 inch Ultra Slim Monitor', 
'In Stock', 'Monitor', 'Model: VZ24EHE/nResolution: FHD (1920x1080)/nDisplay: IPS, 75Hz, 1ms/nPorts: HDMI/nFeatures: Free Sync, Flicker Free, Low Blue Light',
 20, 22500);
 
 --09
 INSERT INTO Products VALUES ('/images/products/monitor8.jpg', 'AOC G2490VX 23.8" FHD 144Hz Gaming Monitor', 
'In Stock', 'Monitor', 'Model: G2490VX/nResolution: Full HD (1920 x 1080)/nDisplay: VA, 144Hz, 1ms/nPorts: HDMI, DP, 3.5mm Audio Out/nFeatures: Free Sync, G-Sync Support, Low Blue Light',
 20, 21800); 
 
 --10
  INSERT INTO Products VALUES ('/images/products/monitor9.jpg', 'AOC G2590PX 24.5" Full HD 144HZ Freesync Gaming Monitor', 
'In Stock', 'Monitor', 'Model: G2590PX/nResolution: FHD (1920x1080)/nDisplay: TN, 144Hz, 1ms/nPPorts: HDMI, DP, Audio Out, USB, D-Sub/nFeatures: Free Sync, G-Sync, Flicker Free, Low Blue Light',
 20, 26000);

 
-----------------------CATEGORY: Keyboard 
--01
INSERT INTO Products VALUES ('/images/products/keyboard1.jpg', 'Logitech MK200 Wired Mouse & Keyboard Combo', 
'In Stock', 'Keyboard', 'Model: MK200/nInterface:Plug & Play USB/nAdjustable keyboard Height/nSpill-resistant Design/nResolution: 1000 dpi',
 20, 1299);

--02
 INSERT INTO Products VALUES ('/images/products/keyboard2.jpg', 'Havit KB329 Wired USB Mini Keyboard Black', 
'In Stock', 'Keyboard', 'Model: HAVIT KB329/nType USB/nCable Length 1.5 m/nDimensions: 306x126x26 mm',
 20, 480);
 
 --03
INSERT INTO Products VALUES ('/images/products/keyboard3.jpg', 'Micropack K2208 USB Mini Keyboard', 
'In Stock', 'Keyboard', 'Model: Micropack K2208/nInterface - USB 2.0/nNumber of Keys: 103/n Multimedia Key: 7',
 20, 775);

--04
INSERT INTO Products VALUES ('/images/products/keyboard4.jpg', 'IMICE GK-480 4 In 1 Gaming Kit Combo', 
'In Stock', 'Keyboard', 'Model: GK-480/nDouble click 7D Gaming Mouse/n104 keys standard layout RGB Keyboard/n Gaming Headset/nGaming Mousepad',
 20, 2365);
 
 --05
 INSERT INTO Products VALUES ('/images/products/keyboard5.jpg', 'Xtrike Me MK-900 Gaming Keyboard, Mouse & Mousepad Combo', 
'In Stock', 'Keyboard', 'Model: MK-900/nDAdjustable multicolor backlight/nInterface: USB 2.0/nKeys: 104+8 (multimedia keys)/nHigh-density cloth material for optimized',
 20, 1700);
 
 --06
 INSERT INTO Products VALUES ('/images/products/keyboard6.jpg', 'Redragon K502 Karura 2 RGB Gaming Keyboard', 
'In Stock', 'Keyboard', 'Model: K502 Karura 2/nAdjustable breathing speed rate of LED light/n1104 standard keys, 2 adjusting gear for input speed/n19 non-conflict keys & 12 multimedia keys/nUnremovable laser engraved chocolate keycaps',
 20, 2150);
 
 --07
  INSERT INTO Products VALUES ('/images/products/keyboard7.jpg', 'Redragon K551RGB MITRA RGB Backlit Mechanical Gaming Keyboard', 
'In Stock', 'Keyboard', 'Model: K551RGB MITRA/nFull-Size Keyboard with 104 standard keys, full numeric keypad/n12 Dual-action Multimedia and F keys
/nBacklit Anti Ghosting/nSplash-resistant design',
 20, 4250);
 
 --08
INSERT INTO Products VALUES ('/images/products/keyboard8.jpg', 'Rapoo K800 2.4G Wireless Low-Profile Compact Keyboard', 
'In Stock', 'Keyboard', 'Model: K800/nEasy Setup/nSilent Keyboards
/nDurable & Long Battery Life/nStylish and Qualified',
 20, 1050);
 
 --09
 INSERT INTO Products VALUES ('/images/products/keyboard9.jpg', 'Razer BlackWidow Lite Silent & Compact Mechanical Gaming Keyboard Mercury White', 
'In Stock', 'Keyboard', 'MPN: RZ03-02640700-R3M1/nModel: BlackWidow Lite/nKey Feel: Tactile and Silent; Sizes: Tenkeyless
/nLighting: True White Led Backlighting/nRazer Orange Mechanical Switch/nKeycaps: Regular ABS',
 20, 8200);
 
 --10
INSERT INTO Products VALUES ('/images/products/keyboard10.jpg', 'Corsair PBT DOUBLE-SHOT PRO Keycap Mod Kit', 
'In Stock', 'Keyboard', 'Model: PBT DOUBLE-SHOT PRO/nHeavy-duty PBT plastic with a textured surface/nAdded grip for long-term durability and performance
/nCompatible with CHERRY MX-compatible keyboards/nComes with a key puller tool & optional silicone O-rings',
 20, 2100);



-----------------------CATEGORY: Mouse
--01
INSERT INTO Products VALUES ('/images/products/mouse1.jpg', 'COUGAR BUNKER Vacuum Mouse Bungee', 
'In Stock', 'Mouse', 'Model: BUNKER/nFlexible Cable Mount Design/nSuperior Stability/nWeight: 85g/nDimensions: 110mm x 70mm x 115mm',
 20, 1100);
 
 --02
 INSERT INTO Products VALUES ('/images/products/mouse2.jpg', 'Logitech M190 Wireless Mouse', 
'In Stock', 'Mouse', 'MPN: 910-005913/nModel: M190/nHigh Precision Optical Tracking/nSensor resolution: 1000 dpi/nNumber of buttons: 3/n18-month battery life',
 20, 1249);
 
 --03
 INSERT INTO Products VALUES ('/images/products/mouse3.png', 'Logitech M221 Silent Wireless Mouse', 
'In Stock', 'Mouse', 'Model: Logitech M221/nSensor Resolution: 1000/nSensor Resolution: 1000/nWeight: 1.8 g',
 20, 1449);
 
 --04
  INSERT INTO Products VALUES ('/images/products/mouse4.jpg', 'Rapoo V280 Optical Gaming Mouse', 
'In Stock', 'Mouse', 'Model: Rapoo V280/n5 buttons/nBacklight LED/n7000 DPI',
 20, 1930);
 
 --05
 INSERT INTO Products VALUES ('/images/products/mouse5.jpg', 'Razer DeathAdder Essential Gaming Mouse', 
'In Stock', 'Mouse', 'MPN: RZ01-03850100-R3M1/nModel: Razer DeathAdder Essential/nTrue 6,400 DPI Optical Sensor
/nErgonomic Form Factor/n5 Hyperesponse Buttons/n10 million-click life cycle',
 20, 1699);
 
 --06
  INSERT INTO Products VALUES ('/images/products/mouse6.jpg', 'Astrum MG210 Wired Gaming Mouse', 
'In Stock', 'Mouse', 'Model: MG210/nResolutions: 1200 - 1800 - 2400 - 3600dpi/nInterface: USB
/nButtons: 6 buttons/nCable length: 1.8M',
 20, 975);
 
 --07
  INSERT INTO Products VALUES ('/images/products/mouse7.png', 'HP OMEN Mouse with SteelSeries', 
'In Stock', 'Mouse', 'Model: HP OMEN Mouse with SteelSeries/n16.8 million RGB Color/nBest-in-class CPI Adjustments.
/n30 million clicks.',
 20, 3150);
 
 --08
   INSERT INTO Products VALUES ('/images/products/mouse8.jpg', 'Astrum MG320 Wired Gaming Mouse', 
'In Stock', 'Mouse', 'Model: MG310/nResolution: 800-1600-2400-3200dpi/nInterface: USB
/nButtons: 7 Buttons/nCable length: 1.8M',
 20, 1250);
 
 --09
    INSERT INTO Products VALUES ('/images/products/mouse9.jpg', 'Astrum MU100 Wired Optical USB Mouse', 
'In Stock', 'Mouse', 'Model: MU100/n3 buttons Wired Optical USB mouse./nMouse sensitivity: 1000 DPI
/nComfort to wrist and Hand/nPerfect for laptops & Desktops',
 20, 350);
 
 ---10
     INSERT INTO Products VALUES ('/images/products/mouse10.jepg', 'Astrum MW220 4B 2.4Ghz Wireless Optical Mouse', 
'In Stock', 'Mouse', 'MPN: A82522-B/nModel: MW220./nResolution: 800 / 1200 / 1600 dpi adjustable
/nConnectivity: 2.4Ghz wireless frequency technology/nNumber of Buttons: 4 Buttons/n3 levels Auto power saving mode',
 20, 590);


-----------------------CATEGORY: GPU
---01
INSERT INTO Products VALUES ('/images/products/rtx-3070-ti.jpg', 'ZOTAC GAMING GeForce RTX 3070 Ti AMP Extreme Holo 8GB GDDR6X Graphics Card', 
'In Stock', 'GPU', 'Model: GAMING GeForce RTX 3070 Ti AMP Extreme Holo/n2nd Gen Ray Tracing Cores & 3rd Gen Tensor Cores/nSPECTRA 2.0 RGB Lighting
/nIceStorm 2.0 Advanced Cooling/nHoloBlack Design',
 20, 112000);

--02
INSERT INTO Products VALUES ('/images/products/gpu2.jpg', 'AFOX Radeon RX 550 4GB GDDR5 Dual Fan Graphics Card', 
'In Stock', 'GPU', 'Model: Radeon RX 550/nVideo Memory: 4GB GDDR5/nEngine Clock: 1183 MHz
/nResolution: 7680x4320/nDVI/ DisplayPort/ HDMI',
 20, 17500);
 
 --03
  INSERT INTO Products VALUES ('/images/products/gpu3.jpg', 'MSI GeForce RTX 3060 GAMING X 12GB GDDR6 Graphics Card', 
'In Stock', 'GPU', 'Model: RTX 3060 GAMING X/nBoost Clock/ Memory Speed: 1837 MHz/ 15 Gbps/nDisplayPort x 3, HDMI x 1
/nTORX Fan 4.0, Core Pipe, Airflow Control/nRGB Mystic Light, Cores: 3584 Units',
 20, 63900);
 
 --04
   INSERT INTO Products VALUES ('/images/products/gpu4.jpg', 'Colorful GeForce RTX 2060 NB V2-V 6GB GDDR6 Graphics Card', 
'In Stock', 'GPU', 'Model: GeForce RTX 2060 NB V2-V/nCUDA Cores: 1920, Memory Bus Width: 192bit
/nCore Clock: Base 1365Mhz; Boost 1680Mhz/nMemory Speed Grade: 14Gbps/nManufacturing Process 12nm',
 20, 41500);
 
 --05
 INSERT INTO Products VALUES ('/images/products/gpu5.jpg', 'Gigabyte Radeon RX 6700 XT EAGLE 12GB GDDR6 Graphics Card', 
'In Stock', 'GPU', 'MPN: GV-R67XTEAGLE-12GD/nModel: Radeon RX 6700 XT EAGLE
/nHoloBlack Design, Active Fan Control/nGame Clock: up to 2424 MHz/nMemory Clock: 16000 MHz; RDNA 2 Architecture/nOutputs: 2x DisplayPort 1.4a; 2 x HDMI 2.1',
 20, 71000);
 
 --06
 INSERT INTO Products VALUES ('/images/products/gpu6.jpg', 'ZOTAC GAMING GeForce RTX 3080 Ti AMP Holo 12GB Graphics Card', 
'In Stock', 'GPU', 'MPN: ZT-A30810F-10P/nModel: GAMING GeForce RTX 3080 Ti AMP Holo/n2nd Gen Ray Tracing Cores & 3rd Gen Tensor Cores
/nMemory Speed Grade: 14Gbps/nSPECTRA 2.0 RGB Lighting/nIceStorm 2.0 Advanced Cooling',
 20, 152000);
 
 --07
  INSERT INTO Products VALUES ('/images/products/gpu7.jpg', 'PNY GeForce RTX 3070 8GB UPRISING Dual Fan LHR GDDR6 Graphics Card', 
'In Stock', 'GPU', 'MPN: VCG30708LDFMPB, VCG30708LDFMPB1/nModel: GeForce RTX 3070 8GB UPRISING Dual Fan LHR/nClock Speed: 1500 MHz, Boost Speed: 1725 MHz
/nMemory Speed: 14 Gbps/nOutputs: DisplayPort 1.4 (x3), HDMI 2.1/nCUDA Cores: 5888',
 20, 69500);
 
 --08
 INSERT INTO Products VALUES ('/images/products/gpu8.jpg', 'Sapphire PULSE AMD Radeon RX 6800 Gaming 16GB GDDR6 Graphics Card', 
'In Stock', 'GPU', 'MPN: 11305-02-20G/nModel: PULSE AMD Radeon RX 6800 Gaming/nBoost Clock: Up to 2170 MHz; Dual UEFI
/nGame Clock: Up to 1950 MHz/nStream Processors: 3840/n1x HDMI, 3x DisplayPort',
 20, 92900);

--09
 INSERT INTO Products VALUES ('/images/products/gpu9.jpg', 'ASUS GeForce GT 1030 2GB GDDR5 low Profile Graphics Card', 
'In Stock', 'GPU', 'MPN: GT1030-SL-2G-BRK/nModel: ASUS GeForce GT 1030/nSilent passive cooling means true 0dB
/nResolution: 1920x1200/nVideo Memory: 2GB GDDR5/nEngine Clock: 1506 MHz (OC Mode)',
 20, 9900);
 
 --10
  INSERT INTO Products VALUES ('/images/products/gpu10.jpg', 'Gigabyte AORUS Radeon RX 6900 XT MASTER 16GB GDDR6 Graphics Card', 
'In Stock', 'GPU', 'MPN: GV-R69XTAORUS M-16GD/nModel: Radeon RX 6900 XT MASTER/nPowered by RDNA2 Radeon RX 6900 XT
/n5120 stream processors/nLCD Edge View & Dual BIOS/nMAX-Covered cooling',
 20, 178000);



-----------------------CATEGORY: Processor
--01
 INSERT INTO Products VALUES ('/images/products/pcr1.jpg', 'AMD Athlon 3000G Processor with Radeon Graphics', 
'In Stock', 'Processor', 'Model: Athlon 3000G/nSpeed: 3.5GHz/nCache: L2: 1MB, L3: 4MB
/nCores-2 & Threads-4/nMemory Speed: 2667MHz',
 20, 7800);
 
 --02
  INSERT INTO Products VALUES ('/images/products/pcr2.jpg', 'AMD Ryzen 3 4100 Processor', 
'In Stock', 'Processor', 'Model: Ryzen 3 4100/nClock Speed: 3.8GHz; Up to 4.0GHz/nL1 Cache: 256KB; L2 Cache: 2MB; L3 Cache: 4MB
/n4 Cores & 8 Threads/nCPU Socket: AM4',
 20, 10700);

--03
  INSERT INTO Products VALUES ('/images/products/pcr3.jpg', 'AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics (Tray)', 
'In Stock', 'Processor', 'Model: Ryzen 5 3400G/nSpeed: 3.7GHz up to 4.2GHz/nCache: L2: 2MB, L3: 4MB
/nCores-4 & Threads-8/nMemory Speed: Up to 2933MHz',
 20, 18999);
 
 --04
INSERT INTO Products VALUES ('/images/products/pcr4.jpg', 'AMD Ryzen 9 3900X Processor', 
'In Stock', 'Processor', 'Model: Ryzen 9 3900X/nSpeed: 3.8GHz up to 4.6GHz/nCache: L2: 6MB, L3: 64MB
/nCores-12 & Threads-24/nMemory Speed: 3200MHz',
 20, 46000);
 
 --05
    INSERT INTO Products VALUES ('/images/products/pcr5.jpg', 'AMD Ryzen 3 PRO 4350G Processor', 
'In Stock', 'Processor', 'Model: Ryzen 3 PRO 4350G/nQuad-Core Processor 3.8 GHz / 4.0 GHz/nAMD AM4 socket
/n4 MB L3 cache/nRadeon Vega 6 Graphics',
 20, 15000);
 
 --06
 INSERT INTO Products VALUES ('/images/products/pcr6.jpg', 'Intel 10th Gen Core i3 10100 Processor', 
'In Stock', 'Processor', 'Model: Intel Core i3 10100/nSocket Supported FCLGA1200/nSpeed 3.60 up to 4.30 GHz
/nCores- 4 & Threads- 8/n6M Cache',
 20, 11500);
 
 --07
 INSERT INTO Products VALUES ('/images/products/pcr7.jpg', 'Intel 9th Gen Core i5-9400 Processor', 
'In Stock', 'Processor', 'Model: Intel Core i5-9400/nClock Speed: 4.10 GHz/nCores-6 & Threads-6
/n9 MB SmartCache/nIntel UHD Graphics 630',
 20, 15300);
 
 --08
 INSERT INTO Products VALUES ('/images/products/pcr8.jpg', 'AMD Ryzen 3 3200G Processor with Radeon RX Vega 8 Graphics', 
'In Stock', 'Processor', 'Model: Ryzen 3 3200G/nSpeed: 3.6 GHz up to 4.0 GHz/nCores-4 & Threads-4
/nMemory Speed: Up to 2933MHz/nIRadeon Vega 8 Graphics',
 20, 16800);

--09
 INSERT INTO Products VALUES ('/images/products/pcr9.jpg', 'AMD Ryzen 5 5600G Processor with Radeon Graphics', 
'In Stock', 'Processor', 'Model: Ryzen 5 5600G/nSpeed: 3.9GHz up to 4.4GHz/nCache: L2: 3MB, L3: 16MB
/nCores-6 & Threads-12/nMemory Speed: Up to 3200MHz',
 20, 20500);
 
 --10
  INSERT INTO Products VALUES ('/images/products/pcr10.jpg', 'AMD Ryzen 7 5700X Processor', 
'In Stock', 'Processor', 'Model: Ryzen 7 5700X/nSpeed: 3.4GHz Up to 4.6GHz/nL2 Cache: 4MB, L3 Cache: 32MB
/nCores: 8, Threads: 16/nUp to 3200MHz DDR4',
 20, 29500);


-----------------------CATEGORY: RAM & SSD
--01
 INSERT INTO Products VALUES ('/images/products/ramssd1.jpg', 'Team T-FORCE VULCAN TUF Gaming 8GB 3200MHz RAM & CARDEA II TUF Gaming M.2 NVMe 512GB SSD Bundle', 
'In Stock', 'RAM & SSD', 'Model: T-FORCE TUF Gaming Bundle/nRAM Data Transfer Bandwidth up to 25,600 MB/s/nLatency: CL16-18-18-38 1.35V
/nSSD Read/Write up to 3,400/2,000 MB/s/nInterface: PCIe 3.0 x4 with NVMe 1.3',
 20, 13300);
 
 --02
INSERT INTO Products VALUES ('/images/products/ramssd2.jpg', 'Team T-FORCE DELTA TUF Gaming RGB 8GB 3200MHz RAM & CARDEA II TUF Gaming M.2 NVMe 1TB SSD Bundle', 
'In Stock', 'RAM & SSD', 'Model: T-FORCE TUF Gaming Bundle/nRAM Data Transfer Bandwidth up to 25,600 MB/s/nLatency: CL16-20-20-40 1.35V
/nSSD Read/Write up to 3,400/3,000 MB/s/nInterface: PCIe 3.0 x4 with NVMe 1.3',
 20, 21700);
 
 --03
 INSERT INTO Products VALUES ('/images/products/ramssd3.jpg', 'Western Digital Green 480GB SSD', 
'In Stock', 'RAM & SSD', 'Model: Western Digital Green 480GB SSD/nCapacity 480GB/nInterface SATA 6Gb/s
/nForm Factor 2.5"/nFor fast performance and reliability',
 20, 5300);
 
 --04
 INSERT INTO Products VALUES ('/images/products/ramssd4.jpg', 'Transcend SSD220S 2TB M.2 PCIe Gen3 x4 SSD', 
'In Stock', 'RAM & SSD', 'MPN: TS2TMTE220S/nModel: SSD220S/nCapacity : 2TB/nInterface : NVMe PCIe Gen3 x4
/nMTBF: 2,000,000 hour(s)/nFlash Type: 3D NAND flash',
 20, 23000); 
 
 --05
 INSERT INTO Products VALUES ('/images/products/ramssd5.jpg', 'Seagate Barracuda Q1 240GB Internal SSD', 
'In Stock', 'RAM & SSD', 'MPN: ZA240CV1A001/nModel: Barracuda Q1/nForm Factor: 2.5 inch
/nInterface: SATA 6 Gb/s/nMax. Sequential Read: 550 MB/s',
 20, 3600);
 
 --06
 INSERT INTO Products VALUES ('/images/products/ramssd6.jpg', 'Kingston Value RAM 4GB DDR4 3200MHz Laptop RAM', 
'In Stock', 'RAM & SSD', 'Model: KVR32S22S6/4/nMemory Capacity: 4GB/nForm Factor: DDR4
/nSpeed (Data Rate): 3200MT/s/nCAS Latency: CL22, Pin: 260 Pin',
 20, 2350);
 
 --07
 INSERT INTO Products VALUES ('/images/products/ramssd7.jpg', 'Adata 4GB DDR4 2666MHz Laptop RAM', 
'In Stock', 'RAM & SSD', 'Model: Adata 4GB DDR4 2666MHz/nCapacity: 4GB/nSpeed: 2666MHz
/nRoHS compliant/nCAS Latency: CL 19-19-19',
 20, 1900);
 
 --08
  INSERT INTO Products VALUES ('/images/products/ramssd8.jpg', 'GeIL PRISTINE 4GB 2400MHz DDR4 RAM', 
'In Stock', 'RAM & SSD', 'Model: PRISTINE 4GB 2400MHz/nType- DDR4 SDRAM/nCapacity: 4 GB
/nSpeed- 2400MHz',
 20, 1900);
 
 --09
   INSERT INTO Products VALUES ('/images/products/ramssd9.jpg', 'Apacer 4GB DDR4 2666MHz Desktop RAM', 
'In Stock', 'RAM & SSD', 'MPN: EL.08G21.GSH/nModel: Apacer 4GB DDR4 2666MHz/nCapacity: 4GB/nFrequency: 2666MHz , PIN: 288-pin
/nModule Height: 31.25mm/ 1.23 inch/nVoltage & Cas Latency: 1.2V/CL19',
 20, 23000);
 
 --10
INSERT INTO Products VALUES ('/images/products/ramssd10.jpg', 'Apacer Panther Golden 4GB DDR4 2666MHZ Desktop RAM', 
'In Stock', 'RAM & SSD', 'Model: Panther Golden 4GB DDR4 2666MHZ/n/nCapacity: 4GB/nFrequency: 2666MHZ , PIN: 288-pin
/nMemory Architecture: x8 FBGA DRAM chip/nVoltage & Cas Latency: 1.2V/16-18-18-38',
 20, 2300);

-----------------------CATEGORY: Sound System
--01
INSERT INTO Products VALUES ('/images/products/sound-1.jpg', 'Digital X X7 Dual Sound Bar System Home Theater Tower Speaker Black', 
'In Stock', 'Sound System', 'Model: X7/nDual Sound Bar System/nWeight (kg) 0.4/nColour Black/nType Speaker',
 20, 10500);
      
---2
INSERT INTO Products VALUES ('/images/products/sound-2.jpg', 'DigitalX X-Y784DBT 2.1 Sound Speaker', 
'In Stock', 'Sound System', 'Model: X-Y784DBT/nFeatures: USB/SD/FM/BT/Remote/nLED Display, DC Power option/nSpeaker Unit: 4" Sub Woofer, 3" Speaker x 2/nOutput Power: 18W (8W + 5W x 2), Frequency: 100Hz ~ 20KHz',
 20, 2970);
 
---3
INSERT INTO Products VALUES ('/images/products/sound-3.jpg', 'Sony Shake X10 High-Power Home Audio Speaker System', 
'In Stock', 'Sound System', 'Model: Shake X10/nFGuitar input/nNFC and Bluetooth/nSound Pressure Horn/nKaraoke features Available',
 20, 61200);
 
---4
INSERT INTO Products VALUES ('/images/products/sound-4.jpg', 'Logitech Rally Speaker for Rally System (7.5W)', 
'In Stock', 'Sound System', 'Model: Logitech Rally Speaker/nAnti-vibration enclosure prevents camera shake/nFront-of-room audio/nComfortable volume',
 20, 21000); 
 
 ---5
 INSERT INTO Products VALUES ('/images/products/sound-5.jpeg', 'Microlab M100 2.1 Multimedia Speaker', 
'In Stock', 'Sound System', 'Model: Microlab M100/nFrequency response : 40 Hz – 18 kHz/nSignal/Noise ratio : > 70 dB/nSeparation : > 45 dB/nOutput power : 10 Watt RMS/nOutput power : 10 Watt RMS',
 20, 2350); 
 
 ---6
 