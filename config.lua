Config = {}

Config.Locale = 'en'

Config.Price = 100

Config.EnableControls = true


Config.DrawDistance = 50.0
Config.Size   = {x = 1.5, y = 1.5, z = 1.0}
Config.Color  = {r = 255, g = 255, b = 255}
Config.Type   = 27


-- Fill this if you want to see the blips,
-- If you have esx_clothesshop you should not fill this
-- more than it's already filled.
Config.ShopsBlips = {
	Ears = {
		Pos = nil,
		Blip = nil
	},
	Mask = {
		Pos = nil,
		Blip = nil
	},
	Helmet = {
		Pos = nil,
		Blip = nil
	},
	Glasses = {
		Pos = nil,
		Blip = nil
	}
}

Config.Zones = {
	Ears = {
		Pos = {
			{x= 79.93,	  y= -1389.96,	z= 28.42},
			{x= 420.85,	  y= -808.96,	z= 28.53},
			{x= 123.28,	  y= -211.32,	z= 53.65},
			{x= -165.33,  y= -310.71,	z= 38.80},
			{x= -716.1,   y= -152.61,	z= 36.50},
			{x= -1459.13, y= -239.62,	z= 48.90},
			{x= 1199.28,  y= 2705.45,	z= 37.30},
			{x= -1198.25, y= -779.87,	z= 16.40},
			{x= -3172.09, y= 1056.3,	z= 20.00},
			{x= -0.38, y= 6514.19,	z= 30.95},
			{x= 1689.56,     y= 4819.3,	z= 41.13},
		}
		
	},

	Helmet = {
		Pos = {
			{x= 81.42,	 y= -1400.38,	z= 28.42},
			{x= 419.5,	 y= -799.00,	z= 28.53},
			{x= 130.26,	 y= -214.08,	z= 53.65},
			{x= -156.09, y= -297.21,	z= 38.80},
			{x= -714.56, y= -146.46,	z= 36.50},
			{x= -1445.5, y= -231.11,	z= 48.90},
			{x= 1189.29, y= 2704.23,	z= 37.30},
			{x= -1202.54, y= -774.1,	z= 16.40},
			{x= -3165.24, y= 1053.87,	z= 20.00},
			{x= 6.14,     y= 6521.93,	z= 30.95},
			{x= 1686.92,     y= 4829.38,	z= 41.13},
		}
	},
	
	Glasses = {
		Pos = {
			{x= 76.09,	  y= -1391.19,	z= 28.42},
			{x= 425.02,	  y= -807.99,	z= 28.53},
			{x= 126.73,	  y= -220.62,	z= 53.65},
			{x= -159.53,  y= -307.89,	z= 38.80},
			{x= -710.62,  y= -162.01,	z= 36.50},
			{x= -1452.08, y= -231.44,	z= 48.90},
			{x= 1198.55,  y= 2709.49,	z= 37.30},				
			{x= -1195.49, y= -770.46,	z= 16.40},
			{x= -3169.72, y= 1047.18,	z= 20.00},
			{x= 2.99, y= 6511.74,	z= 30.95},
			{x= 1693.4,     y= 4820.89,	z= 41.13},
		}
	}
	
	--[[Mask = {
		Pos = {
			{x = -1338.129, y = -1278.200, z = 4.0},
		}
	},]]
	
}

-- buty
-- clothingshoes try_shoes_positive_d

-- okulary
-- clothingspecs put_on
-- clothingspecs take_off

-- koszulka
-- mp_clothing@female@shirt try_shirt_positive_a
-- clothingshirt try_shirt_positive_a

-- maska
-- mp_masks@standard_car@rds@ put_on_mask

-- kask/czapka
-- missheistdockssetup1hardhat@ put_on_hat
-- missheist_agency2ahelmet take_off_helmet_stand

-- spodnie
-- clothingtrousers try_trousers_neutral_c
