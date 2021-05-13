-- name: daily-price-table-seed
INSERT INTO "price_day"."tb_098120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5730, 5750, 5480, 5590, 69676,0) , 
(20210513, 5470, 5550, 5300, 5390, 62253,13.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1750, 1770, 1705, 1750, 513850,0) , 
(20210513, 1720, 1725, 1675, 1705, 625285,0.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8910, 11500, 8710, 11500, 43904789,0) , 
(20210513, 12050, 12400, 9670, 9670, 34059733,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6280, 6330, 5850, 6150, 245642,0) , 
(20210513, 5940, 6230, 5850, 6120, 222386,11.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34900, 35650, 32750, 33200, 198196,0) , 
(20210513, 32650, 34250, 32050, 33600, 115956,7.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_282330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 179000, 185000, 175500, 184500, 64882,0) , 
(20210513, 181000, 184000, 177000, 180000, 50916,32.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7320, 7340, 6980, 7060, 624146,0) , 
(20210513, 6960, 7040, 6860, 6950, 417896,6.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8260, 8270, 7800, 8080, 3063900,0) , 
(20210513, 7930, 8370, 7910, 8160, 3868853,39.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001465" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 171000, 171000, 167000, 170000, 158,0) , 
(20210513, 168000, 170000, 168000, 168000, 297,0.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 386000, 386500, 383500, 385000, 492,0) , 
(20210513, 380500, 388500, 379000, 385000, 936,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001045" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 67000, 67000, 63100, 64000, 10165,0) , 
(20210513, 63100, 67600, 62400, 66200, 21365,13.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_00104K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 87200, 87600, 84400, 85200, 12610,0) , 
(20210513, 83600, 88700, 83200, 85800, 20223,8.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 108500, 109000, 104000, 105500, 248656,0) , 
(20210513, 103000, 113500, 103000, 109500, 396810,18.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011155" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46200, 46250, 45150, 45250, 3081,0) , 
(20210513, 44350, 49500, 44000, 44000, 15380,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4650, 4680, 4540, 4560, 342098,0) , 
(20210513, 4475, 4915, 4470, 4705, 10639415,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4600, 4615, 4450, 4480, 1084031,0) , 
(20210513, 4410, 4560, 4405, 4430, 995214,6.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 79400, 79800, 76600, 77100, 13038,0) , 
(20210513, 76300, 78500, 75600, 76600, 10076,2.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 920, 921, 900, 915, 820103,0) , 
(20210513, 902, 919, 895, 910, 800251,2.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7770, 7820, 7380, 7600, 358428,0) , 
(20210513, 7400, 7680, 7300, 7460, 362353,9.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 51200, 51500, 49250, 49900, 262239,0) , 
(20210513, 49500, 51900, 49300, 51600, 391593,43.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000995" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 127000, 127000, 120500, 125500, 799,0) , 
(20210513, 120000, 129500, 114500, 123500, 2216,1.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 55800, 58400, 55000, 57900, 1421123,0) , 
(20210513, 56500, 61000, 56000, 57600, 3179611,16.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_139130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9420, 9440, 9190, 9300, 1068793,0) , 
(20210513, 9180, 9780, 9160, 9380, 1677748,48.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 190500, 192500, 181000, 185000, 23997,0) , 
(20210513, 180500, 184000, 178500, 181500, 9534,2.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000215" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60800, 60800, 53300, 54400, 85900,0) , 
(20210513, 53000, 53800, 50000, 51000, 55510,7.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 37300, 37400, 35750, 36450, 146346,0) , 
(20210513, 35300, 36400, 35000, 35600, 114889,2.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 96500, 96500, 87200, 87500, 1815244,0) , 
(20210513, 86200, 87000, 82000, 82800, 790741,22.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_37550K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 80800, 81200, 78500, 79100, 22656,0) , 
(20210513, 77500, 79000, 77300, 78900, 21375,6.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_375500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 144000, 144500, 136500, 139000, 382820,0) , 
(20210513, 135500, 139500, 134000, 139500, 293517,25.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_155660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7930, 8090, 7410, 7670, 441130,0) , 
(20210513, 7420, 7570, 7100, 7140, 304172,1.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7110, 7240, 6690, 6950, 852404,0) , 
(20210513, 6690, 6890, 6470, 6520, 445977,4.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 49050, 49600, 48550, 49150, 21150,0) , 
(20210513, 48200, 49850, 48000, 48700, 26750,4.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_365550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6710, 6790, 6710, 6790, 404411,0) , 
(20210513, 6850, 6870, 6730, 6750, 496177,24.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6170, 6200, 5930, 6000, 123146,0) , 
(20210513, 5950, 6010, 5800, 5840, 107780,3.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 180000, 0,0) , 
(20210513, 0, 0, 0, 180000, 0,9.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078935" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40500, 40550, 37250, 39150, 30777,0) , 
(20210513, 39000, 39450, 37500, 38900, 21356,11.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 45800, 46000, 43450, 43850, 1404383,0) , 
(20210513, 42750, 44300, 42450, 43450, 901935,28.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 49200, 49500, 47100, 47650, 939668,0) , 
(20210513, 47100, 49350, 47000, 47700, 853788,18.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15150, 15500, 14300, 14600, 1578220,0) , 
(20210513, 14200, 14650, 13900, 14200, 1424128,22.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_294870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30050, 30200, 28650, 29000, 903568,0) , 
(20210513, 28300, 29100, 28100, 28600, 663266,10.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2695, 2940, 2445, 2530, 17973570,0) , 
(20210513, 2435, 2555, 2385, 2470, 3983450,3.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_175330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7830, 7850, 7610, 7770, 588575,0) , 
(20210513, 7640, 7990, 7600, 7890, 752717,40.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_234080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18850, 19000, 18600, 18850, 75358,0) , 
(20210513, 18650, 18850, 18500, 18700, 53637,4.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001065" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 55400, 60500, 53400, 58900, 43926,0) , 
(20210513, 60900, 61000, 54000, 59500, 15804,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001067" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 86000, 89700, 82300, 83000, 26872,0) , 
(20210513, 82500, 85500, 78200, 81000, 8336,0.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29050, 29300, 28500, 28850, 68510,0) , 
(20210513, 28450, 28950, 28400, 28400, 59232,5.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4830, 4860, 4735, 4770, 183151,0) , 
(20210513, 4720, 4825, 4700, 4770, 88194,3.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_105560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 59800, 59800, 57400, 58400, 1571571,0) , 
(20210513, 58200, 59800, 58000, 58800, 2042665,69.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9470, 9490, 9150, 9350, 28490,0) , 
(20210513, 9070, 9430, 9060, 9300, 22556,35.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8360, 8640, 8170, 8260, 2052450,0) , 
(20210513, 8060, 8330, 7860, 8080, 1369353,0.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2095, 2130, 2015, 2040, 316254,0) , 
(20210513, 2015, 2020, 1900, 1945, 410566,2.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016385" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 194500, 194500, 175000, 178000, 2616,0) , 
(20210513, 171000, 180500, 162000, 165000, 1946,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23500, 25150, 22550, 24050, 2757296,0) , 
(20210513, 23400, 24000, 21800, 22200, 1273837,0.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30700, 31150, 29650, 29900, 184043,0) , 
(20210513, 29000, 30050, 28950, 29300, 156891,3.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3620, 3635, 3535, 3570, 3295743,0) , 
(20210513, 3485, 3535, 3360, 3445, 3776374,8.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20750, 21200, 19550, 20200, 101357,0) , 
(20210513, 19550, 20200, 19050, 19450, 72366,8.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 74500, 74900, 72600, 73900, 7580,0) , 
(20210513, 73000, 73700, 71100, 71900, 8868,30.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 81200, 81800, 77900, 80800, 72381,0) , 
(20210513, 79500, 81500, 78700, 79400, 77492,32.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1215, 1215, 1165, 1185, 635419,0) , 
(20210513, 1170, 1225, 1150, 1180, 743378,45.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19650, 19750, 18550, 19250, 254381,0) , 
(20210513, 18750, 19550, 18700, 19250, 179911,23.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003555" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 99500, 0,0) , 
(20210513, 0, 0, 0, 99500, 0,39.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23300, 23750, 22450, 22700, 5435970,0) , 
(20210513, 22150, 22350, 21700, 21900, 6950180,22.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 126500, 0,0) , 
(20210513, 0, 0, 0, 126500, 0,34.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35950, 36700, 34600, 35200, 365608,0) , 
(20210513, 34300, 35550, 34100, 34600, 318089,27.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051905" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 730000, 730000, 708000, 712000, 5965,0) , 
(20210513, 711000, 711000, 699000, 711000, 7289,84.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1556000, 1560000, 1522000, 1530000, 42804,0) , 
(20210513, 1525000, 1539000, 1516000, 1519000, 36783,45.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14700, 14900, 14200, 14600, 4114674,0) , 
(20210513, 14400, 15150, 14350, 14850, 6263988,31.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 197500, 198500, 190000, 191000, 228707,0) , 
(20210513, 186500, 192500, 185500, 189500, 222556,29.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066575" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 71700, 72200, 71200, 71700, 118721,0) , 
(20210513, 70000, 72000, 68500, 71300, 86678,40.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 148500, 150000, 145000, 147000, 1308616,0) , 
(20210513, 144500, 150000, 144000, 148000, 1527492,30.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051915" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 428000, 430000, 405000, 410000, 30516,0) , 
(20210513, 402000, 414500, 398000, 408000, 26519,65.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 912000, 913000, 860000, 863000, 494315,0) , 
(20210513, 848000, 858000, 843000, 850000, 290367,45.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39700, 39850, 38100, 39150, 105652,0) , 
(20210513, 38550, 39500, 38300, 38650, 133453,5.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 57600, 57800, 55800, 56200, 90103,0) , 
(20210513, 55100, 55900, 54900, 55100, 114860,15.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2980, 2980, 2905, 2910, 96322,0) , 
(20210513, 2930, 2970, 2850, 2905, 48951,0.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 77400, 78400, 73200, 74400, 413033,0) , 
(20210513, 72500, 74200, 71700, 72200, 238567,14.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10300, 10400, 9930, 9940, 68947,0) , 
(20210513, 9800, 10350, 9730, 10200, 114514,3.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 349500, 350500, 340500, 343000, 1120816,0) , 
(20210513, 337500, 341500, 334500, 337500, 920840,56.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_181710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 72300, 72300, 70700, 71500, 51883,0) , 
(20210513, 70700, 71200, 70200, 70600, 69844,10.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_338100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4580, 4610, 4510, 4555, 169778,0) , 
(20210513, 4540, 4565, 4510, 4550, 70552,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19000, 19150, 18800, 19000, 44293,0) , 
(20210513, 18950, 19100, 18800, 19000, 25415,22.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6370, 6490, 5810, 5990, 2879259,0) , 
(20210513, 5840, 5990, 5540, 5640, 1833584,1.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004255" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2980, 3000, 2870, 2950, 29587,0) , 
(20210513, 2870, 3000, 2870, 2940, 25581,2.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4515, 4545, 4350, 4450, 181708,0) , 
(20210513, 4350, 4600, 4315, 4460, 330273,4.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 116500, 119500, 114500, 115000, 264699,0) , 
(20210513, 116000, 122500, 113500, 116000, 638975,19.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010955" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 55900, 56500, 53900, 55400, 43579,0) , 
(20210513, 55400, 56700, 53600, 55200, 75804,12.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 97600, 97700, 94700, 96700, 827365,0) , 
(20210513, 96600, 99700, 95500, 95500, 1207770,76.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8840, 9000, 8700, 8830, 70663,0) , 
(20210513, 8700, 8780, 8550, 8560, 85444,80.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2045, 2050, 1980, 1990, 1019837,0) , 
(20210513, 1960, 1975, 1920, 1965, 693797,1.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 45900, 46000, 44700, 45150, 79314,0) , 
(20210513, 44300, 44650, 42100, 43350, 143702,1.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4120, 4200, 4060, 4175, 606312,0) , 
(20210513, 4085, 4230, 4075, 4145, 671943,3.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1250, 1295, 1195, 1210, 23921744,0) , 
(20210513, 1195, 1275, 1175, 1175, 15662663,32.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4655, 4730, 4545, 4590, 330960,0) , 
(20210513, 4580, 4640, 4470, 4490, 209098,7.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5590, 6170, 5040, 5750, 2682753,0) , 
(20210513, 5660, 5870, 5200, 5350, 526313,12.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4390, 4505, 4145, 4275, 341491,0) , 
(20210513, 4220, 4400, 4175, 4295, 115821,6.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_03473K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 264500, 265500, 254500, 256000, 4077,0) , 
(20210513, 253000, 254000, 249500, 250000, 5629,2.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 141000, 142500, 133000, 136500, 529696,0) , 
(20210513, 132500, 134500, 126000, 128500, 652212,11.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 105000, 105000, 102500, 103500, 12942,0) , 
(20210513, 102500, 104500, 101500, 104000, 9178,6.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001745" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 133000, 134000, 131000, 132500, 532,0) , 
(20210513, 130000, 131500, 129500, 130500, 406,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5670, 5700, 5500, 5580, 1343847,0) , 
(20210513, 5500, 5560, 5440, 5490, 1232215,12.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_210980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 37250, 37350, 36250, 36300, 56403,0) , 
(20210513, 35550, 36600, 35450, 35550, 59596,5.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 281500, 282500, 269000, 272000, 322532,0) , 
(20210513, 265000, 271500, 263500, 264000, 310661,20.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_361610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 152000, 160000, 141000, 147500, 4973674,0) , 
(20210513, 145500, 149500, 142500, 144000, 1793486,5.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096775" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 187000, 188500, 180500, 186000, 14065,0) , 
(20210513, 181000, 188500, 180500, 183000, 16278,10.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 269000, 271500, 260000, 266500, 692535,0) , 
(20210513, 263000, 272000, 256000, 258000, 1177622,22.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001515" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5870, 5870, 5600, 5600, 56531,0) , 
(20210513, 5450, 5650, 5450, 5500, 34039,1.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1050, 1055, 1010, 1015, 8554254,0) , 
(20210513, 996, 1035, 991, 1010, 11025360,5.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_28513K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 125000, 125500, 120500, 121500, 10511,0) , 
(20210513, 119000, 122500, 118000, 121000, 15039,6.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_285130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 261500, 262000, 250500, 252000, 172527,0) , 
(20210513, 245500, 254500, 245000, 250000, 95870,18.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 319500, 321000, 307000, 310000, 414719,0) , 
(20210513, 308500, 315000, 306500, 312500, 300069,44.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60400, 61400, 59100, 60600, 65387,0) , 
(20210513, 59500, 60300, 58700, 59600, 57093,21.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18850, 18850, 18350, 18550, 31918,0) , 
(20210513, 18200, 18600, 18150, 18500, 34237,4.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8240, 8400, 8140, 8280, 68689,0) , 
(20210513, 8190, 8420, 8100, 8330, 59994,9.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19500, 19900, 19400, 19800, 67754,0) , 
(20210513, 19600, 19950, 19100, 19900, 38792,11.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 83700, 86000, 82300, 84800, 87992,0) , 
(20210513, 84600, 91500, 82800, 90200, 144027,3.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10450, 11600, 10000, 10850, 1791952,0) , 
(20210513, 10550, 10800, 10100, 10400, 290786,0.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_077970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14850, 18200, 14750, 17000, 2722965,0) , 
(20210513, 16700, 16950, 15450, 15450, 432247,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9330, 10150, 9180, 9660, 5359094,0) , 
(20210513, 9390, 9920, 9060, 9220, 1213229,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2035, 2100, 2020, 2055, 172618,0) , 
(20210513, 1985, 2035, 1975, 2035, 83846,1.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5690, 5740, 5400, 5450, 1232913,0) , 
(20210513, 5400, 5410, 5190, 5210, 721253,0.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4605, 4605, 4175, 4310, 358059,0) , 
(20210513, 4215, 4300, 4105, 4215, 269903,3.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14550, 14700, 14250, 14600, 81102,0) , 
(20210513, 14150, 14600, 14150, 14350, 65603,11.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11600, 12100, 11350, 11550, 444703,0) , 
(20210513, 11250, 11600, 11250, 11500, 200810,4.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29500, 29650, 27950, 28200, 67023,0) , 
(20210513, 27500, 29150, 27300, 28000, 79793,2.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1420, 1440, 1310, 1425, 942629,0) , 
(20210513, 1370, 1450, 1355, 1380, 920895,7.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32150, 32150, 30550, 31350, 27901,0) , 
(20210513, 30850, 31200, 29900, 30100, 29445,10.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6720, 6750, 6560, 6620, 179371,0) , 
(20210513, 6580, 6620, 6500, 6510, 158485,0.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2500, 0,0) , 
(20210513, 0, 0, 0, 2500, 0,0.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26150, 26250, 25400, 25500, 1436507,0) , 
(20210513, 25200, 25900, 25100, 25600, 1174262,20.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6880, 7180, 6850, 6990, 947672,0) , 
(20210513, 6850, 6860, 6490, 6540, 897653,0.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2010, 2055, 1965, 2015, 179404,0) , 
(20210513, 1910, 2035, 1910, 2020, 217792,2.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_063080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40650, 41950, 40500, 41750, 108875,0) , 
(20210513, 40750, 42700, 40750, 42300, 89858,4.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4515, 4560, 4300, 4300, 1530070,0) , 
(20210513, 4195, 4245, 4100, 4110, 1375867,0.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7000, 7040, 6850, 6970, 104239,0) , 
(20210513, 6900, 6970, 6830, 6910, 59300,1.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_223310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 3320, 0,0) , 
(20210513, 0, 0, 0, 3320, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16350, 16500, 15500, 15750, 363779,0) , 
(20210513, 15350, 16000, 15300, 15700, 201429,0.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 63800, 65200, 61700, 62400, 230817,0) , 
(20210513, 61200, 63900, 59800, 60900, 252256,10.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24050, 24150, 23000, 23250, 50272,0) , 
(20210513, 22750, 24200, 22750, 23400, 58214,15.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 47800, 48000, 46100, 47100, 10012,0) , 
(20210513, 45850, 46600, 44750, 45400, 15170,12.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5200, 5350, 5170, 5240, 319670,0) , 
(20210513, 5100, 5260, 5100, 5230, 179319,0.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10650, 10950, 10500, 10550, 239909,0) , 
(20210513, 10450, 10600, 10300, 10400, 140118,7.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14600, 14600, 13900, 13950, 73359,0) , 
(20210513, 14100, 15050, 13950, 14650, 285105,2.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13800, 14000, 13300, 13450, 246591,0) , 
(20210513, 13050, 13400, 13000, 13050, 198424,1.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7200, 7370, 7060, 7140, 1028646,0) , 
(20210513, 7170, 7370, 7080, 7180, 820988,2.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31250, 31600, 30500, 31150, 7919,0) , 
(20210513, 30100, 30550, 29650, 30000, 5966,14.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3110, 3150, 2930, 3060, 182532,0) , 
(20210513, 3060, 3250, 3000, 3155, 347027,1.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35550, 35950, 34150, 34950, 138465,0) , 
(20210513, 33900, 34900, 33600, 33850, 98906,21.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012205" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8390, 8390, 8190, 8300, 17930,0) , 
(20210513, 8080, 8400, 8080, 8280, 19298,3.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4550, 4590, 4450, 4500, 153581,0) , 
(20210513, 4400, 4555, 4395, 4450, 156776,2.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4755, 4995, 4660, 4745, 1675610,0) , 
(20210513, 4635, 4870, 4535, 4745, 465737,1.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_198440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3980, 3995, 3825, 3855, 1480622,0) , 
(20210513, 3785, 3910, 3750, 3775, 750921,0.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7270, 7320, 7160, 7180, 39031,0) , 
(20210513, 7170, 7330, 7030, 7280, 86391,2.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 486500, 490500, 471500, 478500, 111929,0) , 
(20210513, 474000, 486500, 466000, 469500, 108040,22.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30650, 31400, 28500, 29250, 220874,0) , 
(20210513, 28150, 29450, 27600, 27800, 151465,8.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11250, 11300, 10800, 11000, 102111,0) , 
(20210513, 10800, 10950, 10600, 10700, 96014,5.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_348150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36200, 36400, 34050, 34400, 202832,0) , 
(20210513, 33500, 34800, 33200, 33650, 109855,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_098460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25550, 26450, 25500, 25650, 286332,0) , 
(20210513, 25500, 25950, 24500, 24700, 198049,66.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1305, 0,0) , 
(20210513, 0, 0, 0, 1305, 0,0.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1280, 1300, 1260, 1285, 758123,0) , 
(20210513, 1255, 1285, 1250, 1265, 525702,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 98600, 103000, 95100, 101700, 146963,0) , 
(20210513, 100200, 107700, 98600, 100400, 140335,10.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_121440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8290, 8800, 7990, 8600, 1558859,0) , 
(20210513, 8340, 9330, 8300, 8740, 1766810,2.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_183410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1705, 1705, 1605, 1605, 1210,0) , 
(20210513, 1690, 1690, 1645, 1690, 291,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_076340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6000, 6150, 6000, 6150, 446,0) , 
(20210513, 6150, 6150, 6150, 6150, 910,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9130, 9180, 8920, 9000, 220485,0) , 
(20210513, 8930, 9070, 8800, 8940, 152293,21.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3420, 3760, 3405, 3650, 3313091,0) , 
(20210513, 3615, 3830, 3520, 3575, 1778246,0.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2785, 2820, 2700, 2705, 1266315,0) , 
(20210513, 2640, 2730, 2640, 2685, 812735,0.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2505, 2520, 2450, 2470, 240658,0) , 
(20210513, 2445, 2485, 2410, 2420, 162480,21.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 186500, 190500, 184000, 186500, 4804,0) , 
(20210513, 182500, 188000, 182000, 185500, 3637,12.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_026910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6320, 6350, 6080, 6250, 97154,0) , 
(20210513, 6060, 6230, 5880, 6100, 83622,5.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4505, 4570, 4355, 4355, 54430,0) , 
(20210513, 4310, 4345, 4105, 4115, 49093,2.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_355150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2095, 2125, 2095, 2125, 8963,0) , 
(20210513, 2100, 2125, 2100, 2125, 725,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_331520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2160, 2160, 2130, 2155, 6885,0) , 
(20210513, 2155, 2155, 2135, 2145, 9443,0.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9310, 9330, 8830, 9060, 391412,0) , 
(20210513, 8940, 9160, 8800, 8950, 269956,4.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_339770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20800, 21000, 20150, 20200, 377083,0) , 
(20210513, 19900, 20650, 19700, 20150, 239798,0.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3755, 4080, 3755, 3850, 1285089,0) , 
(20210513, 3825, 4160, 3700, 4040, 2086064,0.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 79500, 79600, 73100, 75100, 106662,0) , 
(20210513, 72500, 75100, 72100, 73700, 62011,28.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3870, 3875, 3650, 3730, 676228,0) , 
(20210513, 3655, 3765, 3610, 3680, 307733,1.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24350, 24400, 23350, 24200, 62176,0) , 
(20210513, 23900, 24450, 23400, 24050, 31736,12.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1995, 2060, 1925, 1935, 762371,0) , 
(20210513, 1930, 1935, 1850, 1880, 473100,0.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8240, 8260, 8080, 8160, 68119,0) , 
(20210513, 8000, 8360, 7950, 8180, 67682,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2915, 2920, 2800, 2855, 848882,0) , 
(20210513, 2810, 2910, 2795, 2835, 577394,2.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5420, 5430, 5140, 5200, 526868,0) , 
(20210513, 5020, 5150, 4940, 4970, 362026,1.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6580, 6610, 6320, 6490, 2756731,0) , 
(20210513, 6320, 6660, 6320, 6550, 2172672,5.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7640, 8000, 7550, 7800, 218170,0) , 
(20210513, 7550, 7860, 7550, 7660, 71211,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7480, 7490, 7300, 7330, 91163,0) , 
(20210513, 7300, 7310, 7120, 7260, 57068,2.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_243870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17000, 17000, 17000, 17000, 0,0) , 
(20210513, 17000, 17000, 17000, 17000, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16700, 16900, 16350, 16550, 607111,0) , 
(20210513, 16250, 16950, 16100, 16650, 634113,5.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 951, 0,0) , 
(20210513, 0, 0, 0, 951, 0,66.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_204020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3255, 3360, 3235, 3305, 358305,0) , 
(20210513, 3295, 3335, 3200, 3255, 257806,3.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12800, 12850, 12250, 12300, 166225,0) , 
(20210513, 11850, 12400, 11800, 11850, 158381,0.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_186230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18650, 18650, 16900, 17400, 810099,0) , 
(20210513, 16800, 17550, 16450, 17150, 330388,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5700, 5990, 5520, 5570, 6166099,0) , 
(20210513, 5680, 6050, 5640, 5650, 9346103,2.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24300, 24350, 23350, 23750, 146336,0) , 
(20210513, 23100, 23600, 23000, 23250, 195531,4.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1205, 1205, 1180, 1190, 244087,0) , 
(20210513, 1140, 1185, 1140, 1165, 254744,4.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_204620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3715, 3970, 3660, 3725, 5295489,0) , 
(20210513, 3595, 3785, 3595, 3680, 841882,5.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4360, 4360, 4150, 4220, 227647,0) , 
(20210513, 4000, 4290, 4000, 4105, 176377,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014285" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15400, 15400, 14850, 14900, 15073,0) , 
(20210513, 14400, 15000, 14400, 14450, 5514,1.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7070, 7150, 6610, 6850, 431503,0) , 
(20210513, 6610, 7060, 6610, 6770, 329341,2.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8250, 8250, 7610, 7810, 203040,0) , 
(20210513, 7600, 7750, 7440, 7560, 144742,2.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 81000, 82200, 78100, 80000, 5498,0) , 
(20210513, 77800, 81500, 76100, 78900, 7133,1.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 240, 0,0) , 
(20210513, 0, 0, 0, 240, 0,0.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5140, 5180, 4995, 5070, 259022,0) , 
(20210513, 5010, 5150, 4930, 5070, 320716,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002995" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44000, 44000, 40250, 41250, 17121,0) , 
(20210513, 38800, 40250, 38800, 39000, 13071,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10650, 10650, 10150, 10450, 357525,0) , 
(20210513, 10150, 10550, 10050, 10200, 376843,5.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011785" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 143500, 145000, 131000, 134000, 193421,0) , 
(20210513, 130500, 131500, 122000, 127000, 149327,15.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 264000, 267000, 248500, 250500, 925915,0) , 
(20210513, 245500, 248000, 228500, 236500, 1168341,24.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2555, 2610, 2515, 2560, 3314398,0) , 
(20210513, 2525, 2540, 2430, 2430, 3303535,2.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2795, 3340, 2780, 3155, 2208388,0) , 
(20210513, 3105, 3355, 3000, 3035, 906770,1.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5110, 5920, 4995, 5660, 7214236,0) , 
(20210513, 5630, 5770, 5420, 5460, 3055361,5.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33600, 33700, 32950, 33100, 8098,0) , 
(20210513, 32850, 32850, 32000, 32750, 13814,29.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1840, 1905, 1840, 1845, 589222,0) , 
(20210513, 1840, 1855, 1775, 1790, 330659,2.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3125, 3125, 3005, 3060, 160809,0) , 
(20210513, 2995, 3025, 2940, 2980, 104824,4.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5400, 5430, 5180, 5220, 142072,0) , 
(20210513, 5210, 5270, 5080, 5160, 79950,65.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 81500, 84200, 81500, 83100, 3764012,0) , 
(20210513, 81800, 83100, 81200, 81800, 2635098,32.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2640, 2640, 2515, 2550, 854121,0) , 
(20210513, 2500, 2580, 2470, 2510, 536414,0.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_308100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15000, 15100, 14450, 15100, 214141,0) , 
(20210513, 14700, 16450, 14700, 15950, 1000026,1.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004545" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42450, 42450, 40000, 41700, 26026,0) , 
(20210513, 39250, 42300, 39250, 40400, 17707,3.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6690, 6730, 6460, 6480, 856932,0) , 
(20210513, 6410, 6590, 6370, 6420, 507152,0.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_187790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1740, 1750, 1685, 1725, 300225,0) , 
(20210513, 1695, 1745, 1680, 1710, 327069,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_286750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9000, 9010, 8820, 9000, 7994,0) , 
(20210513, 8610, 8920, 8600, 8920, 15367,0.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_151910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7180, 7190, 6710, 6790, 2712132,0) , 
(20210513, 6610, 6660, 6210, 6560, 2034195,0.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_121600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29200, 29400, 28200, 28300, 64520,0) , 
(20210513, 27350, 28000, 27250, 27450, 79237,1.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_247660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16550, 16750, 16300, 16400, 23117,0) , 
(20210513, 16250, 16400, 16050, 16150, 32842,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8890, 8890, 8490, 8570, 578599,0) , 
(20210513, 8460, 8780, 8390, 8540, 309269,1.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2285, 2330, 2245, 2320, 645405,0) , 
(20210513, 2250, 2300, 2195, 2235, 642666,4.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_244880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2500, 2500, 2225, 2400, 4293,0) , 
(20210513, 2400, 2400, 2400, 2400, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_288490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 161, 0,0) , 
(20210513, 0, 0, 0, 161, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9800, 9860, 9550, 9570, 88527,0) , 
(20210513, 9500, 9610, 9370, 9410, 68746,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_190510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8600, 8640, 8200, 8350, 131753,0) , 
(20210513, 8210, 8480, 8030, 8180, 164396,0.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_242040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3110, 3125, 3045, 3100, 268989,0) , 
(20210513, 3040, 3080, 3000, 3030, 261294,1.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36000, 36550, 35650, 36000, 38586,0) , 
(20210513, 35500, 36300, 35100, 35750, 44746,9.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_293580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13700, 14300, 13400, 14100, 160730,0) , 
(20210513, 13900, 14650, 13800, 14300, 204147,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_257990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9360, 9360, 8140, 8280, 1284,0) , 
(20210513, 8270, 8270, 7650, 8250, 111,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32750, 33400, 32050, 32450, 65590,0) , 
(20210513, 32000, 33500, 31700, 32000, 81095,0.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_130580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10450, 10550, 10050, 10350, 35261,0) , 
(20210513, 10150, 10500, 10100, 10400, 31381,45.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34500, 34950, 32900, 33050, 46008,0) , 
(20210513, 32900, 33750, 31950, 32950, 26914,21.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22400, 22600, 22000, 22450, 180682,0) , 
(20210513, 22400, 23350, 22300, 22850, 207205,39.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4500, 4500, 4360, 4400, 423626,0) , 
(20210513, 4375, 4375, 4250, 4300, 311050,0.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18850, 19150, 18150, 18750, 544736,0) , 
(20210513, 18200, 19250, 18200, 18350, 549688,1.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008355" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52000, 52000, 47000, 49200, 19471,0) , 
(20210513, 47700, 47700, 44550, 44950, 10972,1.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4125, 4170, 3900, 3965, 5495651,0) , 
(20210513, 3885, 4050, 3820, 3870, 3082820,4.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3870, 3910, 3800, 3830, 348918,0) , 
(20210513, 3790, 3930, 3750, 3790, 345216,0.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003925" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 173500, 174500, 168000, 173000, 1876,0) , 
(20210513, 169000, 176000, 169000, 172500, 915,74.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 367500, 380000, 360000, 369500, 10076,0) , 
(20210513, 367000, 382000, 366500, 375000, 8939,23.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10350, 10500, 9790, 9850, 1003547,0) , 
(20210513, 9620, 9970, 9510, 9740, 763066,5.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_111710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10150, 10200, 9860, 9960, 74588,0) , 
(20210513, 9870, 10350, 9760, 10200, 115020,0.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12000, 12000, 11400, 11750, 103138,0) , 
(20210513, 11550, 11750, 11300, 11650, 78627,1.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_168330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2525, 0,0) , 
(20210513, 0, 0, 0, 2525, 0,2.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2005, 2035, 1970, 1990, 243493,0) , 
(20210513, 1990, 2290, 1970, 2230, 2411816,1.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_253590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3475, 3485, 3350, 3355, 192129,0) , 
(20210513, 3310, 3370, 3285, 3335, 139805,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_212560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8280, 8350, 8010, 8070, 90799,0) , 
(20210513, 7990, 8220, 7800, 8010, 95492,4.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23800, 23850, 23050, 23200, 205973,0) , 
(20210513, 22750, 25450, 22550, 24600, 1090965,14.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33950, 34850, 33550, 34050, 65400,0) , 
(20210513, 33300, 34150, 32100, 33450, 108273,5.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11700, 11750, 10800, 11250, 1694352,0) , 
(20210513, 10950, 11700, 10700, 11350, 787378,7.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_311390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8750, 8770, 8610, 8650, 53865,0) , 
(20210513, 8500, 8900, 8420, 8840, 134503,2.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_085910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4325, 4335, 4200, 4280, 64261,0) , 
(20210513, 4160, 4315, 4120, 4225, 82720,11.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35050, 35150, 33350, 33900, 114470,0) , 
(20210513, 33100, 34050, 33100, 33400, 70563,14.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3660, 3660, 3470, 3505, 610893,0) , 
(20210513, 3460, 3570, 3415, 3505, 394492,0.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_306620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3940, 3960, 3875, 3900, 227049,0) , 
(20210513, 3720, 4040, 3720, 3890, 399286,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_153460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8200, 8320, 7820, 7910, 29638,0) , 
(20210513, 7510, 7690, 7330, 7520, 28782,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12700, 13050, 10850, 11700, 3272390,0) , 
(20210513, 11200, 11950, 11100, 11700, 1225465,6.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2100, 2100, 2100, 0,0) , 
(20210513, 2010, 2010, 2000, 2000, 1601,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 37750, 37900, 36500, 36900, 320788,0) , 
(20210513, 35300, 38100, 35300, 36900, 548555,6.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_330860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41400, 41550, 40000, 40200, 56255,0) , 
(20210513, 39500, 41300, 39450, 39900, 66995,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005725" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3800, 3800, 3735, 3740, 20651,0) , 
(20210513, 3710, 3745, 3700, 3715, 7755,20.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5200, 5220, 5000, 5020, 75427,0) , 
(20210513, 4990, 5290, 4955, 5130, 224142,2.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002355" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3735, 3735, 3630, 3650, 18925,0) , 
(20210513, 3500, 3630, 3500, 3625, 30252,6.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8900, 8900, 8540, 8800, 352272,0) , 
(20210513, 8760, 8820, 8590, 8670, 249920,6.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14700, 16500, 14600, 16050, 700971,0) , 
(20210513, 15850, 16850, 15600, 15900, 313811,1.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1680, 1690, 1605, 1615, 1309188,0) , 
(20210513, 1570, 1625, 1555, 1585, 527714,5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13200, 14150, 13100, 13750, 1770384,0) , 
(20210513, 13400, 16200, 13200, 15600, 4092050,6.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_137940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1435, 1500, 1415, 1500, 797546,0) , 
(20210513, 1465, 1485, 1440, 1450, 600911,46.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_160550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9730, 10500, 9590, 10000, 968272,0) , 
(20210513, 9700, 10050, 9440, 9520, 622979,10.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_348210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60100, 60500, 57600, 58100, 117538,0) , 
(20210513, 57200, 59100, 55400, 56900, 90510,10.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14350, 14400, 13850, 13950, 159170,0) , 
(20210513, 13950, 14250, 13450, 13900, 136840,6.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25100, 25100, 24400, 24650, 82130,0) , 
(20210513, 24000, 24500, 24000, 24150, 79566,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12950, 13000, 12500, 12900, 239411,0) , 
(20210513, 11700, 11900, 10000, 10550, 1950870,1.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_251270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 130000, 130500, 126500, 127500, 195924,0) , 
(20210513, 125000, 130000, 123500, 128500, 263633,23.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11750, 11750, 10000, 10950, 9,0) , 
(20210513, 10900, 10900, 9630, 9940, 1030,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28000, 28500, 27400, 27700, 88255,0) , 
(20210513, 27000, 28450, 26500, 27750, 94388,3.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090355" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52000, 58000, 46000, 58000, 124855,0) , 
(20210513, 53500, 56500, 50700, 50700, 65939,1.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14750, 14800, 13700, 14000, 1103117,0) , 
(20210513, 13600, 14150, 13450, 13600, 616282,4.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000325" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 90100, 116500, 86600, 116500, 82901,0) , 
(20210513, 113000, 126000, 105000, 105000, 49817,0.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15700, 15800, 14900, 15300, 187161,0) , 
(20210513, 15100, 15400, 14800, 15250, 89007,3.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_194700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 45700, 46500, 44750, 45550, 114227,0) , 
(20210513, 44450, 46400, 44250, 45900, 115073,0.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_285490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 47400, 47450, 45150, 45900, 83121,0) , 
(20210513, 44350, 46600, 42600, 42600, 227542,2.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_229500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24650, 25000, 24000, 24800, 4188,0) , 
(20210513, 25300, 25300, 23800, 24050, 5453,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_278650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28700, 29100, 27350, 28900, 96728,0) , 
(20210513, 28500, 30800, 28050, 29000, 208267,2.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_144510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 96600, 100500, 96600, 98800, 140210,0) , 
(20210513, 96900, 98000, 93100, 93100, 156440,4.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 361500, 388500, 361500, 387000, 300667,0) , 
(20210513, 383000, 385000, 352500, 356500, 245052,19.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41300, 41700, 41100, 41550, 83841,0) , 
(20210513, 41050, 41700, 41000, 41100, 59441,6.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_142280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10300, 10350, 10000, 10100, 177396,0) , 
(20210513, 9920, 10200, 9920, 9980, 117372,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_234690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12450, 12500, 12250, 12350, 62189,0) , 
(20210513, 12300, 12500, 12100, 12100, 69653,1.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005257" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 98700, 101500, 98600, 99700, 8000,0) , 
(20210513, 106000, 106000, 99400, 99400, 5335,0.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 37750, 39350, 37600, 38450, 610202,0) , 
(20210513, 38350, 39150, 36550, 36850, 409743,5.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 5770, 0,0) , 
(20210513, 0, 0, 0, 5770, 0,0.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 301500, 302500, 292000, 297500, 68207,0) , 
(20210513, 292500, 307000, 292500, 302500, 122193,15.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 82700, 84000, 81500, 82700, 10248,0) , 
(20210513, 82500, 84500, 80900, 82900, 14549,4.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_154030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7650, 7810, 7030, 7170, 862514,0) , 
(20210513, 6970, 7240, 6860, 6880, 481256,1.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14000, 14300, 13550, 13900, 664121,0) , 
(20210513, 13600, 13900, 13200, 13300, 412793,1.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7660, 7840, 7450, 7520, 122570,0) , 
(20210513, 7370, 7480, 7220, 7220, 94964,2.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_040160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7340, 7360, 7160, 7220, 68021,0) , 
(20210513, 7100, 7280, 7050, 7120, 44517,29.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_126870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2230, 0,0) , 
(20210513, 0, 0, 0, 2230, 0,2.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1620, 1625, 1565, 1610, 395673,0) , 
(20210513, 1565, 1600, 1560, 1570, 169912,3.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3365, 3370, 3225, 3250, 428136,0) , 
(20210513, 3195, 3350, 3160, 3275, 369772,1.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10700, 10900, 10600, 10750, 171682,0) , 
(20210513, 10700, 10950, 10500, 10600, 186118,0.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_270870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38450, 39050, 37200, 37600, 112487,0) , 
(20210513, 37250, 39600, 37100, 39050, 252415,2.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_144960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6190, 6190, 5970, 6000, 482988,0) , 
(20210513, 5900, 5920, 5830, 5870, 516396,3.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 717, 0,0) , 
(20210513, 0, 0, 0, 717, 0,12.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_085670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1845, 1845, 1800, 1840, 133243,0) , 
(20210513, 1790, 1820, 1760, 1805, 98465,1.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_119860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30500, 30600, 29900, 30100, 156449,0) , 
(20210513, 29500, 30000, 29500, 29600, 100810,16.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7420, 7660, 7120, 7240, 4388420,0) , 
(20210513, 7080, 7200, 6920, 6930, 1847508,2.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3225, 3245, 3120, 3130, 91219,0) , 
(20210513, 3035, 3165, 3035, 3130, 47686,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5360, 5360, 5260, 5280, 251421,0) , 
(20210513, 5260, 5900, 5110, 5320, 2535845,1.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9370, 9470, 9150, 9170, 268906,0) , 
(20210513, 8990, 9100, 8960, 8960, 328720,1.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5690, 5700, 5380, 5450, 113706,0) , 
(20210513, 5400, 5480, 5230, 5430, 47791,2.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28650, 28700, 27550, 28450, 289840,0) , 
(20210513, 27900, 28250, 26900, 27050, 295902,22.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14150, 14350, 13850, 14250, 593271,0) , 
(20210513, 14150, 14400, 13900, 14150, 387190,5.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_323350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39000, 40950, 34000, 40000, 624,0) , 
(20210513, 40000, 40900, 34100, 40900, 159,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19400, 19400, 18700, 18750, 257945,0) , 
(20210513, 18500, 19450, 18400, 18850, 259892,7.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4290, 4290, 4020, 4095, 2374,0) , 
(20210513, 4200, 4200, 4040, 4165, 585,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_271850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2550, 2550, 2510, 2545, 296,0) , 
(20210513, 2925, 2925, 2380, 2595, 26,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_343090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9450, 9450, 9160, 9450, 4014,0) , 
(20210513, 9400, 9500, 9300, 9400, 3276,0.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4570, 4570, 4420, 4550, 300461,0) , 
(20210513, 4485, 4545, 4400, 4480, 244378,3.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019685" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3395, 3395, 3260, 3280, 180970,0) , 
(20210513, 3330, 3330, 3165, 3165, 161861,5.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11150, 11300, 11000, 11050, 18653,0) , 
(20210513, 10950, 11150, 10850, 11100, 23129,0.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_00806K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12150, 12150, 11550, 11800, 50533,0) , 
(20210513, 11500, 11800, 11200, 11200, 32013,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7450, 7450, 7270, 7300, 383271,0) , 
(20210513, 7240, 7280, 7110, 7180, 377178,11.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_353200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15550, 15800, 15000, 15250, 998462,0) , 
(20210513, 14750, 15050, 14700, 14850, 667370,7.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_35320K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15350, 15350, 14350, 14550, 171828,0) , 
(20210513, 14200, 14450, 13750, 13950, 92646,0.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_178600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3850, 3850, 3440, 3455, 13,0) , 
(20210513, 3840, 3840, 3490, 3785, 419,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11800, 12000, 11050, 11550, 97977,0) , 
(20210513, 11050, 11400, 10950, 11200, 48693,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5270, 5430, 5040, 5130, 124350,0) , 
(20210513, 4900, 5060, 4895, 4925, 94664,0.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11450, 11900, 11350, 11550, 500850,0) , 
(20210513, 11300, 11500, 10600, 10700, 625273,3.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8120, 8600, 7800, 8090, 1346424,0) , 
(20210513, 7800, 7990, 7310, 7340, 534991,1.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8760, 8980, 8500, 8700, 57915,0) , 
(20210513, 8500, 8600, 8330, 8550, 27219,41.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6470, 6470, 6200, 6230, 162382,0) , 
(20210513, 6230, 6360, 6050, 6110, 208476,5.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7760, 7760, 7300, 7460, 86926,0) , 
(20210513, 7210, 7430, 7110, 7310, 86030,3.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15900, 15950, 14750, 15400, 73646,0) , 
(20210513, 15250, 15650, 14800, 15350, 84006,3.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4175, 4190, 4105, 4145, 13876,0) , 
(20210513, 4100, 4160, 4085, 4130, 17958,1.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1495, 1500, 1435, 1440, 1277914,0) , 
(20210513, 1420, 1495, 1420, 1455, 1472183,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6150, 6230, 5930, 6100, 118505,0) , 
(20210513, 6000, 6120, 5830, 6100, 64234,2.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34350, 34700, 33950, 34000, 19639,0) , 
(20210513, 33500, 34550, 33400, 33950, 17456,0.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10950, 11000, 10800, 10900, 33079,0) , 
(20210513, 10850, 10900, 10600, 10700, 25174,2.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001685" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23900, 24350, 22600, 23200, 47624,0) , 
(20210513, 23000, 25200, 22000, 23950, 97173,12.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29400, 29400, 28250, 28800, 764781,0) , 
(20210513, 28200, 31250, 27900, 30700, 2218292,16.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084695" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17800, 18300, 17100, 18000, 51445,0) , 
(20210513, 17300, 18450, 17300, 18200, 35408,0.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12650, 12700, 11850, 12550, 526891,0) , 
(20210513, 12150, 13350, 12100, 13150, 755913,5.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19500, 19500, 18900, 19200, 27071,0) , 
(20210513, 18900, 19650, 18800, 19200, 34709,3.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_128820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4945, 4945, 4755, 4835, 193461,0) , 
(20210513, 4810, 5500, 4740, 5180, 1529771,1.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_117580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5760, 6000, 5730, 5870, 201101,0) , 
(20210513, 5850, 5930, 5730, 5860, 84511,1.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1200, 1200, 1145, 1170, 1056170,0) , 
(20210513, 1155, 1160, 1130, 1140, 802529,33.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4090, 4635, 4015, 4410, 20471789,0) , 
(20210513, 4200, 4270, 4060, 4065, 2788314,0.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2785, 2820, 2730, 2745, 999934,0) , 
(20210513, 2655, 2740, 2650, 2670, 832540,0.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34400, 34550, 33200, 33200, 163739,0) , 
(20210513, 32800, 33600, 32750, 33350, 150972,4.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_332290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2110, 2130, 2110, 2120, 3833,0) , 
(20210513, 2145, 2145, 2110, 2130, 4927,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_336570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2105, 2145, 2100, 2145, 8363,0) , 
(20210513, 2145, 2145, 2110, 2140, 505,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_369370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2090, 2090, 2075, 2090, 28518,0) , 
(20210513, 2080, 2100, 2080, 2095, 18071,0.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1810, 1830, 1750, 1765, 690327,0) , 
(20210513, 1735, 1785, 1715, 1750, 640766,3.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003545" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16950, 17000, 16400, 16900, 174318,0) , 
(20210513, 16600, 16900, 16400, 16550, 123325,9.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003547" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16600, 16750, 16100, 16550, 52236,0) , 
(20210513, 16200, 16600, 16050, 16150, 82555,1.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19800, 19800, 19000, 19150, 200786,0) , 
(20210513, 18800, 19300, 18500, 18800, 161548,17.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6340, 6370, 6080, 6210, 8353241,0) , 
(20210513, 6110, 6290, 6050, 6130, 4872057,6.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5190, 5210, 4735, 4845, 4775199,0) , 
(20210513, 4775, 4920, 4630, 4700, 1162085,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_108380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20200, 20650, 19500, 19850, 176574,0) , 
(20210513, 19400, 19900, 18900, 19550, 131602,1.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 3260, 0,0) , 
(20210513, 0, 0, 0, 3260, 0,0.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2730, 2735, 2630, 2640, 1220151,0) , 
(20210513, 2570, 2605, 2530, 2570, 1255168,1.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7600, 7630, 7380, 7430, 3752569,0) , 
(20210513, 7290, 7540, 7210, 7370, 3596778,9.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2495, 2525, 2450, 2485, 260198,0) , 
(20210513, 2450, 2480, 2430, 2430, 250379,0.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39950, 39950, 38300, 38950, 1103832,0) , 
(20210513, 37800, 39600, 36650, 37600, 1139197,8.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36550, 37000, 35800, 36450, 343001,0) , 
(20210513, 35850, 38700, 35250, 35400, 677968,4.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 153000, 154000, 148000, 149000, 74424,0) , 
(20210513, 147000, 152000, 145500, 147000, 79353,5.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10550, 10600, 10050, 10450, 47056,0) , 
(20210513, 10200, 10400, 10100, 10300, 31543,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4295, 4315, 4200, 4255, 202498,0) , 
(20210513, 4210, 4270, 4175, 4185, 159874,2.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32350, 32700, 31700, 32550, 143424,0) , 
(20210513, 32550, 33800, 31850, 32000, 223127,2.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8360, 8360, 7950, 8060, 82031,0) , 
(20210513, 7900, 8110, 7780, 7920, 74653,12.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006345" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3490, 3490, 3310, 3340, 55844,0) , 
(20210513, 3340, 3685, 3340, 3570, 129940,2.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1655, 1660, 1555, 1565, 1652832,0) , 
(20210513, 1530, 1625, 1515, 1600, 2109945,1.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16800, 16950, 16350, 16500, 98827,0) , 
(20210513, 16350, 16650, 16000, 16200, 54335,17.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2970, 2975, 2790, 2815, 589318,0) , 
(20210513, 2760, 2865, 2700, 2760, 450858,3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14950, 15050, 14500, 14600, 126725,0) , 
(20210513, 14600, 14950, 14350, 14700, 124532,2.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1190, 1200, 1165, 1180, 946165,0) , 
(20210513, 1160, 1210, 1155, 1180, 924154,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7900, 7960, 7730, 7760, 93546,0) , 
(20210513, 7650, 7840, 7550, 7710, 66617,1.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1225, 1225, 1150, 1170, 5268713,0) , 
(20210513, 1120, 1155, 1100, 1110, 5059855,1.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_120240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29550, 30000, 28800, 28850, 69829,0) , 
(20210513, 28350, 30700, 28150, 28900, 115115,0.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2630, 2740, 2600, 2630, 3448930,0) , 
(20210513, 2560, 2665, 2550, 2600, 1227004,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1300, 1300, 1300, 1300, 2000,0) , 
(20210513, 1300, 1300, 1300, 1300, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46300, 47600, 44600, 45000, 305218,0) , 
(20210513, 43900, 44650, 43000, 43450, 246025,6.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9870, 10100, 9390, 9470, 374716,0) , 
(20210513, 9460, 9700, 9200, 9370, 207063,7.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2870, 3015, 2795, 2855, 23102525,0) , 
(20210513, 2760, 2815, 2635, 2685, 5840582,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 513, 516, 491, 500, 3561106,0) , 
(20210513, 491, 497, 480, 482, 2501974,2.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4100, 4100, 3825, 3905, 722178,0) , 
(20210513, 3765, 3870, 3620, 3620, 503509,0.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15900, 16200, 15100, 15450, 640045,0) , 
(20210513, 14950, 18450, 14900, 16500, 9786357,0.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3225, 3250, 3175, 3190, 321137,0) , 
(20210513, 3120, 3215, 3110, 3165, 297202,1.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2850, 2890, 2770, 2880, 2435171,0) , 
(20210513, 2975, 3060, 2890, 2950, 5511436,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12100, 12450, 11850, 12400, 436314,0) , 
(20210513, 12100, 12350, 11900, 11950, 206367,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43900, 44000, 43550, 43900, 4809,0) , 
(20210513, 43900, 43900, 43400, 43550, 6724,0.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39300, 39900, 38300, 38400, 30534,0) , 
(20210513, 37900, 38500, 37200, 38450, 26541,18.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 287500, 291500, 271500, 276500, 130984,0) , 
(20210513, 271000, 276500, 265500, 267500, 87109,20.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1290, 1310, 1255, 1280, 12697839,0) , 
(20210513, 1245, 1265, 1210, 1240, 10626481,2.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24000, 25400, 23000, 24450, 978232,0) , 
(20210513, 23200, 24200, 21400, 21550, 930260,9.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001795" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5950, 7640, 5850, 6600, 4868992,0) , 
(20210513, 6600, 6600, 6000, 6000, 672976,0.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3625, 4350, 3610, 4020, 25392893,0) , 
(20210513, 3930, 4050, 3810, 3850, 2478552,1.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 185000, 193500, 181000, 190000, 58071,0) , 
(20210513, 190000, 203000, 186000, 193500, 88665,9.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003495" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42000, 42000, 40400, 40750, 19405,0) , 
(20210513, 40700, 42000, 39000, 41150, 25462,2.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29800, 29900, 28700, 29400, 5597446,0) , 
(20210513, 28800, 30300, 28600, 29500, 7490867,10.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3485, 3560, 3375, 3425, 5030811,0) , 
(20210513, 3360, 3830, 3345, 3455, 40720528,3.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 145000, 146000, 140000, 144000, 1134,0) , 
(20210513, 142500, 144000, 139500, 139500, 921,0.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2785, 2830, 2670, 2730, 661022,0) , 
(20210513, 2650, 2895, 2645, 2720, 1346529,5.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3870, 4120, 3610, 3870, 27945685,0) , 
(20210513, 3765, 3980, 3425, 3500, 11500470,1.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1020, 1020, 947, 961, 3274989,0) , 
(20210513, 939, 967, 921, 923, 1188222,2.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021045" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1785, 1785, 1550, 1730, 218953,0) , 
(20210513, 1680, 1760, 1680, 1690, 141369,1.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12300, 12450, 12100, 12150, 68848,0) , 
(20210513, 12000, 12450, 11950, 12100, 81160,3.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_161570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1800, 1800, 1765, 1780, 70814,0) , 
(20210513, 1735, 1795, 1710, 1790, 77077,4.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 62100, 64600, 61700, 63600, 175470,0) , 
(20210513, 61800, 62700, 56900, 58500, 445744,9.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 65500, 67500, 64400, 65500, 289577,0) , 
(20210513, 64500, 65400, 63900, 64800, 122097,11.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1445, 1505, 1415, 1470, 1370649,0) , 
(20210513, 1425, 1455, 1395, 1430, 498309,2.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_299170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3000, 3060, 2975, 3025, 72799,0) , 
(20210513, 3015, 3040, 2920, 3015, 95320,0.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3900, 3925, 3740, 3795, 239220,0) , 
(20210513, 3650, 3860, 3640, 3800, 177564,1.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1050, 1055, 1035, 1040, 1244420,0) , 
(20210513, 1035, 1055, 1015, 1025, 2092817,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 82600, 82900, 80500, 80800, 166813,0) , 
(20210513, 79000, 80600, 78800, 78900, 163970,38.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_302920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7600, 7600, 7600, 7600, 1,0) , 
(20210513, 7800, 7800, 7700, 7700, 41,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_213420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41200, 42000, 41000, 41350, 198579,0) , 
(20210513, 40550, 41100, 40000, 40100, 180230,15.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20900, 20900, 19350, 19500, 535395,0) , 
(20210513, 19100, 19900, 18950, 19450, 209091,0.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_077360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12500, 12550, 12000, 12150, 275962,0) , 
(20210513, 11900, 12550, 11850, 12350, 124368,2.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004835" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 47800, 48550, 46250, 47600, 149156,0) , 
(20210513, 46900, 49450, 46000, 47600, 160418,0.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24200, 24850, 23500, 24100, 786614,0) , 
(20210513, 23500, 24900, 23250, 23300, 1080339,0.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1750, 1780, 1575, 1595, 5541758,0) , 
(20210513, 1550, 1625, 1545, 1565, 883254,1.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3505, 3560, 3350, 3400, 408740,0) , 
(20210513, 3340, 3400, 3270, 3325, 221958,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8870, 9000, 8640, 8710, 152853,0) , 
(20210513, 8590, 8680, 8310, 8370, 229376,0.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_194480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 108900, 109700, 105900, 106700, 67104,0) , 
(20210513, 106500, 108500, 104000, 105900, 75354,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_348840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16450, 16450, 16450, 16450, 100,0) , 
(20210513, 15900, 16450, 15900, 16450, 18,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6050, 6060, 5900, 5990, 29090,0) , 
(20210513, 5850, 5980, 5740, 5900, 28837,0.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_199150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9800, 9800, 9740, 9770, 502,0) , 
(20210513, 9800, 10300, 9600, 10300, 3044,8.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_206560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7000, 7080, 6750, 6870, 236495,0) , 
(20210513, 6730, 7030, 6700, 6740, 249848,0.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_261200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11450, 12450, 11250, 11750, 1353389,0) , 
(20210513, 12150, 12850, 11400, 11800, 864915,0.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_145720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60400, 60500, 56900, 57800, 157306,0) , 
(20210513, 56800, 57300, 54500, 55900, 103076,19.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_227420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5990, 6400, 5950, 6300, 36455,0) , 
(20210513, 6250, 6590, 6250, 6590, 43802,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8110, 8110, 7710, 7800, 435326,0) , 
(20210513, 7550, 7900, 7530, 7830, 342757,4.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10200, 10250, 9520, 9850, 704410,0) , 
(20210513, 9550, 9990, 9530, 9590, 396316,2.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9580, 9790, 9310, 9540, 678959,0) , 
(20210513, 9440, 9470, 9250, 9270, 299290,0.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4340, 4415, 4190, 4260, 489550,0) , 
(20210513, 4140, 4220, 4035, 4045, 243325,5.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_075970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5850, 6280, 5720, 5820, 2045844,0) , 
(20210513, 5750, 5880, 5650, 5650, 288016,1.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6270, 6540, 6100, 6120, 1594828,0) , 
(20210513, 5970, 6120, 5960, 5960, 374650,1.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27100, 27800, 25250, 26550, 5323591,0) , 
(20210513, 25300, 26000, 23700, 23900, 5105193,24.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27800, 27850, 27150, 27450, 118993,0) , 
(20210513, 27050, 27200, 26550, 26750, 190611,20.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6930, 7100, 6710, 6910, 3481406,0) , 
(20210513, 6700, 6730, 6410, 6420, 2221161,0.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_099410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2130, 2140, 2050, 2060, 217989,0) , 
(20210513, 2050, 2050, 1980, 1995, 126187,5.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8260, 8530, 7960, 8230, 201664,0) , 
(20210513, 8110, 8430, 7900, 8220, 132126,31.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005965" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 72500, 77600, 65200, 74000, 81378,0) , 
(20210513, 66800, 75000, 66800, 69500, 36392,18.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13300, 13300, 12700, 12850, 196373,0) , 
(20210513, 12700, 12950, 12550, 12700, 153823,4.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_026960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31400, 31450, 30550, 31000, 115220,0) , 
(20210513, 30100, 31150, 30100, 30950, 143823,3.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11650, 11900, 11550, 11600, 127275,0) , 
(20210513, 11500, 11750, 11450, 11550, 91872,5.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_102260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6500, 6550, 6390, 6460, 228540,0) , 
(20210513, 6390, 6560, 6340, 6390, 300805,4.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13500, 13650, 13050, 13250, 437299,0) , 
(20210513, 12850, 13200, 12750, 12850, 455964,3.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 53000, 53000, 50500, 51000, 133588,0) , 
(20210513, 50100, 52500, 49100, 49650, 105798,0.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 130000, 130000, 127000, 127500, 35770,0) , 
(20210513, 127500, 128500, 123000, 124000, 37685,12.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_170900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 87500, 87800, 85900, 87100, 49318,0) , 
(20210513, 86700, 86800, 85100, 85800, 32337,20.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10500, 10550, 9950, 10150, 202952,0) , 
(20210513, 10000, 10150, 9810, 9980, 100439,4.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_028100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22050, 22100, 20850, 21400, 392223,0) , 
(20210513, 20750, 21650, 20500, 20800, 386649,5.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_282690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13550, 13750, 13250, 13650, 54195,0) , 
(20210513, 13400, 13700, 13150, 13300, 54177,3.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12150, 12650, 12100, 12450, 310302,0) , 
(20210513, 12150, 12700, 12150, 12400, 205503,0.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001525" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14100, 15100, 14100, 15100, 166056,0) , 
(20210513, 13800, 18650, 13800, 17600, 328259,0.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001527" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27900, 29250, 27900, 29250, 82386,0) , 
(20210513, 27500, 38000, 27500, 38000, 172389,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001529" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 73100, 73100, 73100, 73100, 24383,0) , 
(20210513, 80600, 95000, 80600, 95000, 45714,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24050, 24100, 23800, 23950, 6290,0) , 
(20210513, 23800, 24100, 23700, 23850, 9470,1.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1485, 1510, 1455, 1485, 1796645,0) , 
(20210513, 1485, 1510, 1445, 1475, 1032228,8.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5740, 6010, 5560, 5700, 1876372,0) , 
(20210513, 5620, 6330, 5490, 6100, 4039693,83.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5870, 5870, 5230, 5590, 8567117,0) , 
(20210513, 5220, 5300, 4890, 5010, 2484332,0.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19700, 19700, 18550, 18750, 102552,0) , 
(20210513, 18600, 18650, 18200, 18350, 61592,9.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1835, 2040, 1800, 1870, 57083813,0) , 
(20210513, 1810, 1830, 1730, 1780, 6780776,0.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_228340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6430, 6630, 6270, 6610, 241734,0) , 
(20210513, 6490, 7090, 6410, 6700, 749790,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5760, 5890, 5730, 5810, 107041,0) , 
(20210513, 5760, 5850, 5710, 5750, 57917,0.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3700, 3705, 3625, 3680, 277241,0) , 
(20210513, 3630, 3730, 3595, 3680, 313703,3.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6850, 7080, 6800, 6910, 735181,0) , 
(20210513, 6770, 6970, 6670, 6780, 363880,3.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 233000, 233500, 225500, 232500, 22488,0) , 
(20210513, 229000, 249000, 227000, 240000, 41280,6.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6630, 6640, 6360, 6400, 267833,0) , 
(20210513, 6230, 6360, 6170, 6240, 340038,13.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1195, 1220, 1135, 1155, 1104001,0) , 
(20210513, 1130, 1175, 1110, 1160, 841537,2.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 308000, 309000, 296000, 303500, 5295,0) , 
(20210513, 296000, 309500, 295000, 303000, 8287,8.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9170, 9270, 9050, 9110, 78205,0) , 
(20210513, 9050, 9430, 8990, 9250, 250588,4.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014825" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40400, 41100, 39500, 40900, 5946,0) , 
(20210513, 40900, 42500, 40500, 42500, 6355,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44500, 44650, 42950, 43400, 36022,0) , 
(20210513, 42750, 43800, 42500, 43200, 40960,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_163560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10450, 10500, 10000, 10100, 106965,0) , 
(20210513, 10000, 10300, 9980, 10000, 88016,3.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_109860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14300, 14300, 14100, 14100, 7707,0) , 
(20210513, 14000, 14200, 14000, 14000, 9212,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14500, 14800, 14350, 14500, 19117,0) , 
(20210513, 14400, 14500, 14250, 14300, 9363,4.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 97800, 101000, 97800, 99300, 4647,0) , 
(20210513, 99300, 102000, 97400, 100000, 3199,3.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5430, 5450, 4985, 5120, 1953241,0) , 
(20210513, 5000, 5070, 4945, 5050, 769337,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7940, 8000, 7560, 7730, 247906,0) , 
(20210513, 7480, 7590, 7150, 7180, 242006,0.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30300, 30450, 29700, 29850, 414078,0) , 
(20210513, 29050, 29400, 28350, 28350, 824344,7.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 70500, 71700, 68100, 69500, 120614,0) , 
(20210513, 67400, 68800, 66000, 66000, 182284,42.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15300, 15400, 14750, 14900, 130243,0) , 
(20210513, 14550, 15000, 14450, 14550, 160176,3.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000155" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 49700, 50000, 46900, 48050, 33440,0) , 
(20210513, 47250, 49800, 46200, 48550, 20911,2.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000157" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 77200, 78200, 74500, 74900, 4231,0) , 
(20210513, 74500, 78800, 73800, 75100, 2961,0.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 51000, 51800, 49800, 51100, 329275,0) , 
(20210513, 49950, 51200, 48600, 49300, 526844,24.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 71000, 71200, 65600, 67200, 225187,0) , 
(20210513, 65600, 70400, 65200, 69200, 206376,8.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11200, 11300, 10850, 11000, 3988262,0) , 
(20210513, 10750, 10950, 10450, 10550, 4718170,10.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12950, 12950, 12500, 12600, 2424446,0) , 
(20210513, 12200, 12700, 12150, 12450, 2817554,8.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_33626K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15250, 15300, 14800, 14800, 49001,0) , 
(20210513, 14750, 14900, 14450, 14700, 67743,10.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_33626L" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18750, 18850, 18050, 18200, 11185,0) , 
(20210513, 17950, 18100, 17500, 17850, 8479,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_336260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41300, 41450, 39900, 39900, 810159,0) , 
(20210513, 38900, 39400, 38400, 39100, 704757,13.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4690, 4755, 4575, 4680, 257873,0) , 
(20210513, 4550, 4740, 4535, 4700, 274439,0.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4260, 4270, 4110, 4160, 225503,0) , 
(20210513, 4075, 4130, 3990, 4025, 235484,2.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_176750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10600, 10600, 10150, 10350, 13738,0) , 
(20210513, 10350, 10400, 10050, 10400, 6152,0.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2160, 2165, 2110, 2110, 129266,0) , 
(20210513, 2040, 2145, 2025, 2115, 166004,1.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_203650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5100, 5120, 4925, 5010, 1324302,0) , 
(20210513, 5140, 5430, 5080, 5330, 6570112,0.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_223250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17650, 17650, 16800, 16900, 7696,0) , 
(20210513, 16900, 16900, 16500, 16550, 8656,6.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5830, 5930, 5720, 5810, 214522,0) , 
(20210513, 5680, 5870, 5640, 5730, 181018,4.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9850, 9950, 9700, 9740, 241913,0) , 
(20210513, 9740, 9740, 9410, 9490, 322967,22.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1835, 1850, 1790, 1795, 88125,0) , 
(20210513, 1735, 1845, 1735, 1780, 171933,16.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_187870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38400, 38550, 37050, 37350, 52606,0) , 
(20210513, 35500, 37200, 35500, 36100, 62340,0.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_367340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2100, 2080, 2100, 3684,0) , 
(20210513, 2080, 2110, 2080, 2105, 334,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_367360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2095, 2095, 2085, 2095, 805,0) , 
(20210513, 2100, 2100, 2090, 2095, 1488,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5020, 5020, 4725, 4835, 163364,0) , 
(20210513, 4705, 4835, 4705, 4800, 87039,2.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16800, 17050, 16050, 16200, 28040,0) , 
(20210513, 15600, 16600, 15600, 16600, 30645,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6770, 6930, 6620, 6790, 298289,0) , 
(20210513, 6570, 6840, 6550, 6770, 174074,7.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4260, 4650, 4110, 4575, 3122063,0) , 
(20210513, 4435, 4640, 4370, 4465, 1185357,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_110990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11400, 11550, 10850, 11400, 100012,0) , 
(20210513, 11100, 11500, 10500, 11250, 110706,1.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7330, 7330, 7080, 7200, 61435,0) , 
(20210513, 7130, 7270, 7010, 7080, 44828,1.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15000, 15150, 14300, 14750, 157355,0) , 
(20210513, 14300, 14700, 14100, 14300, 117969,14.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1645, 1710, 1625, 1665, 2260830,0) , 
(20210513, 1630, 1660, 1595, 1625, 642690,2.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43700, 45200, 43000, 43400, 106759,0) , 
(20210513, 42550, 43150, 41350, 43000, 151257,0.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6090, 6900, 5930, 6470, 5672627,0) , 
(20210513, 6110, 6290, 6060, 6090, 1152642,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_109740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6530, 6580, 6430, 6500, 44206,0) , 
(20210513, 6450, 6580, 6400, 6500, 39178,1.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 370, 0,0) , 
(20210513, 0, 0, 0, 370, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8560, 8660, 8330, 8550, 116726,0) , 
(20210513, 8450, 8730, 8350, 8600, 179783,6.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_196490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6090, 6090, 5920, 6010, 143792,0) , 
(20210513, 5920, 5990, 5900, 5930, 165140,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4775, 4775, 4500, 4590, 116142,0) , 
(20210513, 4440, 4580, 4410, 4435, 45886,1.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_127120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5000, 5030, 4825, 4950, 230221,0) , 
(20210513, 4800, 4900, 4555, 4630, 282898,0.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24500, 25400, 24200, 24350, 186296,0) , 
(20210513, 23750, 24050, 22950, 23050, 280290,8.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8400, 8430, 8200, 8260, 258505,0) , 
(20210513, 8100, 8330, 8070, 8140, 179439,2.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_134580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3035, 3100, 3000, 3040, 58754,0) , 
(20210513, 3000, 3035, 2955, 3000, 34483,10.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38800, 38850, 37000, 37400, 151442,0) , 
(20210513, 36850, 37200, 36150, 36200, 95065,19.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5940, 5970, 5770, 5910, 169759,0) , 
(20210513, 5850, 6120, 5760, 5930, 556299,10.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_210540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20650, 20750, 19700, 20100, 212426,0) , 
(20210513, 19300, 19700, 19000, 19150, 160557,6.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27700, 28100, 26900, 26950, 70702,0) , 
(20210513, 26800, 27400, 26050, 27400, 84082,5.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7700, 7700, 7200, 7360, 121055,0) , 
(20210513, 7010, 7230, 6980, 7070, 100055,0.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_227100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11550, 12250, 11200, 12000, 91378,0) , 
(20210513, 12000, 12150, 11600, 12100, 72505,4.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_113810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 729, 741, 713, 738, 354731,0) , 
(20210513, 719, 732, 715, 727, 172999,6.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3495, 3495, 3330, 3370, 73847,0) , 
(20210513, 3225, 3320, 3105, 3210, 106422,1.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_197140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6790, 6800, 6450, 6650, 171600,0) , 
(20210513, 6540, 6560, 6370, 6460, 131481,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_106520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1010, 0,0) , 
(20210513, 0, 0, 0, 1010, 0,2.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8210, 8520, 8170, 8340, 445522,0) , 
(20210513, 8300, 8530, 8240, 8450, 281012,1.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4040, 4095, 3950, 4020, 935696,0) , 
(20210513, 3925, 4100, 3920, 3995, 972482,1.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_105740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13450, 13550, 13250, 13350, 77433,0) , 
(20210513, 13300, 13450, 13100, 13450, 100746,1.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11350, 11550, 10950, 11200, 63240,0) , 
(20210513, 11000, 11450, 11000, 11300, 85763,3.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20650, 20650, 20100, 20250, 40674,0) , 
(20210513, 19700, 20200, 19650, 20050, 46178,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 37200, 38000, 36500, 36750, 69406,0) , 
(20210513, 36200, 37750, 35000, 37150, 40143,7.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_187220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7100, 7200, 6990, 7030, 60932,0) , 
(20210513, 6900, 7160, 6870, 7080, 49131,1.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_026890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14450, 14850, 14100, 14350, 1093702,0) , 
(20210513, 14000, 14500, 13850, 13950, 859334,2.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_163430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6500, 7130, 6340, 6350, 31541,0) , 
(20210513, 6360, 6800, 6360, 6550, 53467,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1770, 1775, 1740, 1750, 144625,0) , 
(20210513, 1725, 1775, 1715, 1750, 172887,18.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10950, 11200, 10800, 10800, 86451,0) , 
(20210513, 10600, 11000, 10500, 10650, 114390,0.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4250, 4315, 4125, 4135, 1108904,0) , 
(20210513, 4160, 4350, 4140, 4170, 1475854,1.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_232680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22500, 23000, 21550, 22300, 14959,0) , 
(20210513, 22950, 24400, 21200, 23850, 19135,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_300120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24000, 24000, 23300, 23450, 73496,0) , 
(20210513, 23350, 23750, 22800, 23450, 43718,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_171120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12300, 12400, 11150, 11550, 380422,0) , 
(20210513, 11100, 11700, 11050, 11450, 212419,2.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 5420, 0,0) , 
(20210513, 0, 0, 0, 5420, 0,1.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_285770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2600, 2740, 2250, 2485, 2178,0) , 
(20210513, 2495, 2650, 2485, 2650, 361,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_347700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11200, 11200, 10300, 10400, 348387,0) , 
(20210513, 10150, 10900, 10150, 10450, 165922,0.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35400, 35400, 31900, 34800, 157225,0) , 
(20210513, 34450, 34800, 32850, 32850, 112955,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14300, 14450, 13750, 13850, 123416,0) , 
(20210513, 13800, 14250, 13650, 13900, 118891,73.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19600, 20800, 19600, 20300, 929,0) , 
(20210513, 20200, 20600, 20050, 20400, 2851,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_171010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6570, 6600, 6440, 6530, 67096,0) , 
(20210513, 6500, 6500, 6320, 6390, 88364,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19700, 20050, 19200, 19600, 405196,0) , 
(20210513, 19300, 19800, 19150, 19500, 387807,1.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4840, 4880, 4685, 4715, 411893,0) , 
(20210513, 4570, 4780, 4570, 4620, 401236,1.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5200, 5500, 4630, 4740, 4547,0) , 
(20210513, 4845, 4845, 4695, 4695, 402,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 179, 0,0) , 
(20210513, 0, 0, 0, 179, 0,4.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_141080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 48100, 48700, 47100, 48050, 150328,0) , 
(20210513, 48000, 50700, 47550, 49000, 383965,8.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1830, 0,0) , 
(20210513, 0, 0, 0, 1830, 0,4.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29000, 30350, 28600, 29200, 92645,0) , 
(20210513, 28950, 30850, 28200, 30000, 134161,12.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_294140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8300, 8300, 8170, 8170, 170939,0) , 
(20210513, 8150, 8260, 8110, 8120, 184844,1.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_228670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 51400, 52300, 50600, 51300, 110541,0) , 
(20210513, 50800, 50900, 47750, 49000, 161329,18.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_228850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14150, 14300, 13750, 13850, 132609,0) , 
(20210513, 13600, 14200, 13600, 13800, 112791,3.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_281740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3940, 3950, 3825, 3885, 607121,0) , 
(20210513, 3910, 3910, 3800, 3875, 468336,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_277810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22900, 23050, 22400, 22650, 91650,0) , 
(20210513, 22000, 22800, 22000, 22150, 87132,0.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_179720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3600, 3700, 3600, 3700, 7,0) , 
(20210513, 3700, 3700, 3700, 3700, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5300, 5320, 5160, 5180, 209440,0) , 
(20210513, 5100, 5240, 5080, 5150, 158336,2.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26000, 26250, 25050, 25300, 87271,0) , 
(20210513, 24500, 26150, 24300, 25350, 79034,1.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_238500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2790, 2790, 2630, 2770, 14383,0) , 
(20210513, 2800, 2935, 2615, 2725, 18723,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_108490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16550, 16550, 16000, 16400, 62932,0) , 
(20210513, 15800, 16400, 15800, 16300, 41799,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 340, 342, 330, 335, 789855,0) , 
(20210513, 328, 332, 324, 328, 542680,44.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8210, 8350, 8040, 8070, 87881,0) , 
(20210513, 7850, 8230, 7840, 8080, 130081,0.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5900, 5950, 5730, 5800, 133884,0) , 
(20210513, 5690, 5790, 5680, 5730, 66375,41.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18300, 18400, 17800, 17900, 424841,0) , 
(20210513, 17550, 18750, 17550, 18250, 755589,3.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_330590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5560, 5630, 5550, 5600, 889390,0) , 
(20210513, 5600, 5600, 5510, 5550, 571427,9.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1970, 1980, 1850, 1895, 2248748,0) , 
(20210513, 1860, 2030, 1835, 2020, 4533768,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 121500, 121500, 117500, 119500, 175176,0) , 
(20210513, 116500, 118000, 115000, 115500, 245910,11.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 63500, 64400, 60600, 61500, 302857,0) , 
(20210513, 60600, 62600, 60100, 60800, 264712,22.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_286940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40200, 40700, 39150, 39700, 111480,0) , 
(20210513, 39300, 40450, 39000, 40000, 71148,2.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_280360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 149000, 163500, 149000, 162500, 75043,0) , 
(20210513, 162500, 165000, 157500, 159000, 27176,18.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_00499K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 66000, 66000, 64200, 64200, 2849,0) , 
(20210513, 63500, 64500, 63500, 63800, 1736,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38700, 38750, 36950, 37600, 1110725,0) , 
(20210513, 36600, 38450, 36600, 38000, 468492,10.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005305" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 85900, 95000, 84300, 90500, 22283,0) , 
(20210513, 90100, 94500, 87000, 90500, 12201,8.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 161000, 175000, 159000, 167500, 175648,0) , 
(20210513, 164500, 175500, 161500, 165000, 89422,9.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 299500, 304000, 286500, 287500, 397425,0) , 
(20210513, 282000, 288000, 279000, 283000, 364903,26.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 415000, 438000, 414000, 425500, 14650,0) , 
(20210513, 420000, 434500, 415500, 434000, 14681,11.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42500, 43000, 40800, 41350, 120408,0) , 
(20210513, 40700, 41200, 40000, 40800, 92265,13.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1440, 1445, 1360, 1390, 473090,0) , 
(20210513, 1375, 1425, 1350, 1415, 433309,6.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_162120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3980, 3980, 3980, 3980, 151580,0) , 
(20210513, 4150, 4275, 3415, 4000, 156191,0.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_253610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3300, 3300, 3050, 3055, 149,0) , 
(20210513, 3360, 3360, 3010, 3280, 29,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_085370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10850, 11000, 10550, 10850, 325205,0) , 
(20210513, 10500, 11200, 10400, 10600, 453560,7.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_08537M" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15500, 15550, 15300, 15400, 435,0) , 
(20210513, 15500, 15500, 15200, 15250, 715,0.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6490, 6490, 6290, 6320, 84560,0) , 
(20210513, 6130, 6350, 6100, 6270, 114147,45.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 162900, 162900, 156300, 156700, 58065,0) , 
(20210513, 153400, 155000, 150100, 151000, 47770,47.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1515, 1550, 1420, 1470, 2156955,0) , 
(20210513, 1430, 1480, 1425, 1440, 730042,1.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 849, 852, 806, 827, 2154700,0) , 
(20210513, 814, 827, 799, 816, 1420831,0.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4770, 4845, 4535, 4600, 237826,0) , 
(20210513, 4475, 5280, 4420, 5040, 1161927,1.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9220, 9240, 8960, 8970, 180284,0) , 
(20210513, 8950, 9310, 8770, 9020, 337712,10.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_302550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25400, 26200, 24800, 25800, 60619,0) , 
(20210513, 25200, 25850, 25000, 25600, 38618,5.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_029480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 607, 612, 586, 599, 971816,0) , 
(20210513, 595, 598, 565, 568, 1001239,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_277070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6990, 7300, 6740, 6850, 524245,0) , 
(20210513, 6710, 6820, 6510, 6680, 70112,1.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6290, 6320, 6150, 6240, 103708,0) , 
(20210513, 6100, 6220, 6080, 6150, 65767,0.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_219420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7970, 8020, 7700, 7820, 81919,0) , 
(20210513, 7800, 7940, 7700, 7750, 75969,1.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 777, 782, 756, 770, 2835784,0) , 
(20210513, 765, 780, 735, 769, 3394584,2.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_195500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6630, 6690, 6500, 6540, 53669,0) , 
(20210513, 6420, 6600, 6420, 6540, 53850,0.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 512, 512, 499, 502, 1530826,0) , 
(20210513, 499, 511, 490, 500, 914234,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_305090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20900, 21200, 19700, 20300, 83731,0) , 
(20210513, 20250, 21050, 19200, 20950, 115969,2.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_147760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8680, 9060, 8270, 9020, 484177,0) , 
(20210513, 8780, 9050, 8710, 8850, 195011,3.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_169330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8550, 8600, 8350, 8460, 44542,0) , 
(20210513, 8360, 8650, 8340, 8470, 15935,1.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31700, 32050, 30650, 31150, 60968,0) , 
(20210513, 30350, 31150, 30100, 30700, 82348,2.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_204320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 64100, 66900, 63900, 65300, 1161205,0) , 
(20210513, 63800, 66400, 63600, 64500, 809181,24.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26600, 27050, 24700, 25200, 70606,0) , 
(20210513, 24500, 25100, 23450, 23450, 34447,6.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_220630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3900, 4185, 3900, 3910, 3121142,0) , 
(20210513, 3870, 4180, 3795, 4080, 2205942,7.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 79100, 79800, 77800, 79700, 69027,0) , 
(20210513, 78000, 79800, 77500, 79100, 44407,16.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10550, 11100, 10450, 10450, 190257,0) , 
(20210513, 10400, 10850, 10100, 10650, 104449,3.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_127160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 282, 0,0) , 
(20210513, 0, 0, 0, 282, 0,3.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5870, 5880, 5530, 5660, 208121,0) , 
(20210513, 5500, 5950, 5480, 5830, 284460,13.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_141070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 743, 0,0) , 
(20210513, 0, 0, 0, 743, 0,1.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12100, 12150, 12100, 12100, 713683,0) , 
(20210513, 12100, 12150, 12050, 12100, 1062442,15.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9800, 9870, 9470, 9570, 88402,0) , 
(20210513, 9500, 9570, 9340, 9400, 60445,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34950, 35300, 34350, 34900, 19801,0) , 
(20210513, 34500, 34850, 34150, 34300, 9880,4.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14050, 14100, 13450, 13650, 116534,0) , 
(20210513, 13500, 14250, 13400, 13850, 144718,34.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60800, 63500, 60100, 62400, 85381,0) , 
(20210513, 62800, 68900, 62400, 65500, 333043,25.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_133750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6050, 6120, 5800, 5900, 1205469,0) , 
(20210513, 5810, 6000, 5330, 5480, 2148513,0.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_235980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 76100, 76900, 72900, 73400, 165008,0) , 
(20210513, 72000, 77600, 71700, 74400, 163731,6.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7520, 7640, 7510, 7590, 7945,0) , 
(20210513, 7460, 7890, 7450, 7870, 3535,2.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16150, 16300, 15900, 16050, 71568,0) , 
(20210513, 15650, 16050, 15650, 15800, 65762,4.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_233250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41950, 41950, 41950, 41950, 0,0) , 
(20210513, 41950, 41950, 41950, 41950, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 6200, 0,0) , 
(20210513, 0, 0, 0, 6200, 0,3.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_236340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9300, 9500, 9030, 9280, 983,0) , 
(20210513, 9010, 9260, 8880, 9260, 2382,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1520, 1530, 1400, 1415, 2759222,0) , 
(20210513, 1390, 1405, 1355, 1380, 965536,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 181000, 182500, 176700, 177600, 39790,0) , 
(20210513, 174900, 184800, 173500, 175100, 67917,11.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33150, 33150, 32300, 32350, 88282,0) , 
(20210513, 32250, 32400, 31700, 31750, 107952,15.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3710, 3770, 3665, 3715, 140175,0) , 
(20210513, 3700, 3720, 3645, 3675, 143848,0.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20500, 21400, 20250, 20700, 419654,0) , 
(20210513, 20700, 21250, 20250, 20450, 276156,7.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4955, 4970, 4840, 4870, 2889253,0) , 
(20210513, 4765, 4905, 4750, 4830, 2609377,13.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21150, 21150, 20400, 20450, 262145,0) , 
(20210513, 20200, 21300, 20050, 21200, 445971,11.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 659, 662, 636, 657, 332096,0) , 
(20210513, 651, 655, 639, 644, 445134,2.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 167200, 169200, 165400, 167500, 39545,0) , 
(20210513, 165200, 166800, 161500, 163400, 48287,19.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11800, 11950, 11550, 11800, 34421,0) , 
(20210513, 11550, 11750, 11250, 11400, 40983,0.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1160, 1170, 1130, 1140, 372607,0) , 
(20210513, 1120, 1145, 1095, 1100, 539904,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_059210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2920, 2940, 2835, 2900, 519524,0) , 
(20210513, 2840, 3010, 2825, 2920, 594920,2.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17300, 17700, 16500, 16800, 168585,0) , 
(20210513, 16700, 16950, 16000, 16500, 134883,5.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2150, 2175, 2105, 2145, 284101,0) , 
(20210513, 2090, 2130, 2015, 2070, 476561,19.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5690, 5760, 5530, 5630, 331512,0) , 
(20210513, 5550, 5600, 5400, 5500, 161262,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_257370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 9210, 0,0) , 
(20210513, 0, 0, 0, 9210, 0,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27650, 28450, 26900, 27300, 310220,0) , 
(20210513, 26750, 27100, 26150, 26450, 239264,1.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1900, 1900, 1680, 1760, 5008,0) , 
(20210513, 1750, 1750, 1745, 1745, 528,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4070, 4070, 3870, 3955, 171359,0) , 
(20210513, 3875, 3940, 3760, 3800, 113697,0.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23800, 24300, 23550, 23900, 508871,0) , 
(20210513, 23450, 24050, 23200, 23650, 378397,13.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_204210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4060, 4060, 3940, 4030, 24712,0) , 
(20210513, 4020, 4300, 3970, 4190, 124534,0.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20700, 20700, 20100, 20400, 11779,0) , 
(20210513, 20000, 20750, 19900, 20400, 12429,2.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_087260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4390, 4480, 4310, 4350, 286219,0) , 
(20210513, 4210, 4315, 4175, 4225, 381228,1.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5330, 5340, 5160, 5260, 339838,0) , 
(20210513, 5300, 5790, 5260, 5540, 5580329,1.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2785, 2785, 2670, 2715, 414216,0) , 
(20210513, 2665, 2825, 2630, 2675, 653754,0.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_348030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21350, 21700, 20800, 21200, 64012,0) , 
(20210513, 20650, 21150, 20600, 20900, 38341,0.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_250060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2925, 2975, 2915, 2960, 329246,0) , 
(20210513, 2895, 2960, 2805, 2835, 665805,1.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9140, 9150, 8750, 8770, 37453,0) , 
(20210513, 8700, 8730, 8120, 8400, 32805,51.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12800, 12900, 12550, 12600, 51386,0) , 
(20210513, 12500, 12700, 12050, 12350, 74460,10.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_118990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5940, 6050, 5770, 5790, 675432,0) , 
(20210513, 5710, 5870, 5670, 5700, 273820,0.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6440, 6440, 6030, 6210, 608773,0) , 
(20210513, 6150, 6190, 5930, 5970, 238723,3.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3570, 3650, 3495, 3530, 135614,0) , 
(20210513, 3490, 3590, 3380, 3460, 138249,4.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3160, 3205, 3070, 3120, 511224,0) , 
(20210513, 3025, 3180, 3025, 3120, 340734,6.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5910, 6290, 5680, 5940, 2663473,0) , 
(20210513, 5890, 6040, 5680, 5830, 1067448,3.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_322970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5390, 5390, 4900, 5130, 2377,0) , 
(20210513, 5300, 5300, 5250, 5250, 9,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9500, 9550, 8730, 9150, 239754,0) , 
(20210513, 8800, 9420, 8770, 9160, 121774,14.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6310, 6530, 5900, 6070, 3032594,0) , 
(20210513, 5820, 6020, 5700, 5780, 1049767,0.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_279600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14800, 15000, 14250, 14800, 97521,0) , 
(20210513, 14450, 15100, 14350, 14650, 44367,2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4880, 4885, 4585, 4685, 560499,0) , 
(20210513, 4595, 4625, 4395, 4430, 613568,3.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14850, 14950, 14600, 14800, 26510,0) , 
(20210513, 14650, 14800, 14500, 14500, 23284,60.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_218150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5550, 6500, 5550, 5730, 16388721,0) , 
(20210513, 5630, 6490, 5430, 6440, 15438190,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 550, 568, 545, 550, 1679471,0) , 
(20210513, 542, 551, 532, 540, 1189380,2.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_353490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2130, 2170, 2120, 2140, 51595,0) , 
(20210513, 2130, 2150, 2105, 2120, 73584,0.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_328380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2145, 2100, 2140, 9965,0) , 
(20210513, 2130, 2140, 2100, 2140, 13190,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_333430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4075, 4075, 3940, 3960, 50382,0) , 
(20210513, 3915, 3970, 3705, 3835, 83136,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_357250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5020, 5020, 4995, 5010, 89845,0) , 
(20210513, 5000, 5010, 4990, 5010, 71662,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4745, 4765, 4740, 4755, 68051,0) , 
(20210513, 4755, 4780, 4710, 4755, 121691,4.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8430, 8900, 8280, 8700, 963501,0) , 
(20210513, 8480, 8570, 8190, 8190, 388790,1.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_085620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4085, 4120, 4015, 4035, 295029,0) , 
(20210513, 3995, 4560, 3975, 4225, 3422661,4.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006805" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7200, 7200, 6510, 6940, 423934,0) , 
(20210513, 6800, 6970, 6630, 6900, 144896,0.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_00680K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5060, 5060, 4875, 4930, 827960,0) , 
(20210513, 4855, 4955, 4835, 4885, 596851,12.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10600, 10600, 10000, 10200, 4638973,0) , 
(20210513, 9940, 10250, 9920, 10000, 3468231,15.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2400, 2400, 2400, 2400, 0,0) , 
(20210513, 2040, 2200, 2040, 2200, 47,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38750, 38800, 37700, 37800, 66881,0) , 
(20210513, 37000, 38350, 36500, 37850, 37954,0.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_213090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9150, 9160, 8880, 8880, 22995,0) , 
(20210513, 8750, 8840, 8450, 8660, 12347,0.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_207760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11200, 11200, 10800, 10800, 192130,0) , 
(20210513, 10700, 11050, 10550, 10850, 217130,0.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 283, 0,0) , 
(20210513, 0, 0, 0, 283, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 216000, 216500, 213000, 215500, 2807,0) , 
(20210513, 211000, 219000, 211000, 219000, 3922,4.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_268280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 183000, 183500, 175000, 175500, 1540,0) , 
(20210513, 175000, 175500, 172500, 175500, 1791,1.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_107590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 122500, 122500, 118000, 120500, 1434,0) , 
(20210513, 121500, 122500, 118500, 121500, 2343,0.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_134380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 78700, 78700, 77400, 77500, 587,0) , 
(20210513, 77500, 77500, 76800, 76900, 354,5.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 84300, 88500, 83000, 84000, 15170,0) , 
(20210513, 84000, 87400, 83300, 83800, 16124,32.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_059090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14550, 14600, 14150, 14200, 184086,0) , 
(20210513, 13950, 14200, 13850, 13900, 275189,4.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14250, 14600, 14150, 14300, 192974,0) , 
(20210513, 14000, 14250, 13600, 13750, 336543,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_201490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6740, 6780, 6620, 6710, 250864,0) , 
(20210513, 6640, 6650, 6540, 6570, 315033,4.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21450, 21550, 21250, 21450, 35064,0) , 
(20210513, 21400, 21400, 21050, 21200, 43071,21.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17900, 17950, 17400, 17500, 97102,0) , 
(20210513, 17050, 17700, 17050, 17300, 83651,7.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_155900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2600, 2610, 2595, 2610, 22610,0) , 
(20210513, 2605, 2610, 2600, 2605, 13208,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_206640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20300, 21500, 20300, 20350, 380463,0) , 
(20210513, 19850, 20650, 19700, 19850, 268334,4.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3010, 3170, 2985, 3020, 332336,0) , 
(20210513, 3000, 3070, 2960, 3015, 117048,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1450, 1470, 1440, 1460, 412856,0) , 
(20210513, 1440, 1530, 1430, 1455, 1193936,1.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1005, 0,0) , 
(20210513, 0, 0, 0, 1005, 0,0.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24950, 25850, 24300, 24500, 1016751,0) , 
(20210513, 23850, 24350, 22950, 23050, 1400192,7.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_301300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31500, 31900, 31050, 31400, 29410,0) , 
(20210513, 30500, 31300, 30300, 30500, 30900,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17700, 17900, 17150, 17200, 378907,0) , 
(20210513, 16800, 17450, 16700, 16950, 309686,7.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_314930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52100, 52900, 48950, 49000, 127662,0) , 
(20210513, 48000, 48000, 44950, 45500, 171817,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3060, 3235, 3055, 3135, 1520931,0) , 
(20210513, 3080, 3200, 3070, 3185, 722739,1.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_142760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7940, 8700, 7500, 7850, 13638577,0) , 
(20210513, 7680, 7910, 7320, 7320, 2789748,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27400, 27950, 27000, 27200, 49020,0) , 
(20210513, 26800, 27200, 26600, 26950, 41119,2.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6010, 6050, 5740, 5790, 224240,0) , 
(20210513, 5680, 5890, 5620, 5860, 141953,1.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_281310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6840, 6840, 5910, 6620, 4,0) , 
(20210513, 6790, 6790, 6720, 6720, 6,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_266470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3090, 3095, 2635, 3035, 36655,0) , 
(20210513, 2995, 2995, 2580, 2900, 32065,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10800, 10950, 10350, 10400, 159572,0) , 
(20210513, 10150, 10850, 10100, 10450, 138796,1.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_199290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2930, 0,0) , 
(20210513, 0, 0, 0, 2930, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1340, 1350, 1325, 1340, 309738,0) , 
(20210513, 1330, 1345, 1320, 1335, 235869,2.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5000, 5000, 4870, 4985, 1876,0) , 
(20210513, 4985, 4985, 4980, 4980, 151,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33150, 35300, 33150, 34250, 584304,0) , 
(20210513, 33700, 34400, 33200, 33650, 139245,24.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_323990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 91800, 93300, 89000, 89500, 313947,0) , 
(20210513, 88700, 89000, 86200, 86800, 283925,3.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2700, 2965, 2655, 2765, 5134940,0) , 
(20210513, 2745, 2920, 2695, 2785, 2185462,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10550, 10650, 10050, 10400, 138345,0) , 
(20210513, 10250, 10500, 10000, 10300, 91868,1.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5100, 5220, 5050, 5090, 636466,0) , 
(20210513, 5060, 5130, 4975, 5060, 664810,2.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3855, 3895, 3710, 3805, 3655505,0) , 
(20210513, 4020, 4255, 3480, 3480, 13657065,1.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10350, 10400, 9800, 9970, 725789,0) , 
(20210513, 9690, 10050, 9630, 9780, 579164,1.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1780, 1800, 1720, 1735, 86938,0) , 
(20210513, 1735, 1785, 1680, 1725, 166228,1.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4300, 4340, 4140, 4145, 340184,0) , 
(20210513, 4045, 4165, 4020, 4065, 207961,1.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_206400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6160, 6200, 6090, 6170, 59786,0) , 
(20210513, 5980, 6180, 5980, 6100, 67689,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2540, 2540, 2435, 2470, 321885,0) , 
(20210513, 2430, 2465, 2380, 2425, 342454,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_177350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5220, 5250, 5000, 5070, 175005,0) , 
(20210513, 4875, 5100, 4870, 4915, 121992,3.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_299910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28000, 28350, 26950, 28000, 14532,0) , 
(20210513, 27950, 28600, 27400, 28450, 7899,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4510, 4570, 4210, 4280, 2673650,0) , 
(20210513, 4175, 4330, 4110, 4270, 1722724,5.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7830, 8030, 7390, 7580, 1484059,0) , 
(20210513, 7300, 7490, 7150, 7300, 497998,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_250000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16500, 17100, 16350, 16500, 63212,0) , 
(20210513, 16100, 17200, 15950, 16750, 92685,1.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2360, 2450, 2310, 2330, 2904766,0) , 
(20210513, 2305, 2450, 2305, 2360, 2673732,1.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22050, 23250, 21800, 22950, 1419429,0) , 
(20210513, 22750, 23400, 22400, 23050, 925167,5.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3260, 3275, 3105, 3140, 1421722,0) , 
(20210513, 3080, 3170, 3045, 3145, 1581786,3.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1210, 1215, 1155, 1180, 4058604,0) , 
(20210513, 1160, 1190, 1150, 1165, 3227497,1.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3370, 3370, 3145, 3240, 667896,0) , 
(20210513, 3175, 3240, 3080, 3095, 349069,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_206950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 3840, 0,0) , 
(20210513, 0, 0, 0, 3840, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7950, 8060, 7650, 7730, 106866,0) , 
(20210513, 7650, 7750, 7350, 7350, 73381,2.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22400, 22500, 21800, 22000, 674862,0) , 
(20210513, 22000, 22350, 20500, 20700, 1339429,4.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001275" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22650, 22800, 22300, 22500, 9512,0) , 
(20210513, 22500, 22500, 22000, 22050, 3048,12.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25700, 25800, 24500, 25250, 15508,0) , 
(20210513, 24650, 25200, 24650, 24900, 6302,1.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_026940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5500, 5600, 5220, 5310, 1301276,0) , 
(20210513, 5210, 5270, 5010, 5090, 580655,0.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3540, 3540, 3410, 3490, 304196,0) , 
(20210513, 3400, 3525, 3385, 3405, 537572,0.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 70600, 70800, 67900, 69500, 9966,0) , 
(20210513, 69200, 69300, 67500, 68000, 6282,3.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 145000, 145000, 136500, 140000, 30908,0) , 
(20210513, 137500, 142000, 137000, 139500, 12504,1.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 604, 606, 597, 599, 319156,0) , 
(20210513, 590, 599, 589, 594, 314957,4.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_338220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21800, 22050, 20750, 20900, 136372,0) , 
(20210513, 20400, 21050, 20150, 20150, 76093,2.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38050, 38200, 37350, 37950, 52630,0) , 
(20210513, 37000, 38300, 37000, 38000, 43935,33.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_337930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12800, 13100, 12500, 12700, 322650,0) , 
(20210513, 12200, 12800, 12200, 12550, 141467,0.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5150, 5160, 4885, 4940, 236546,0) , 
(20210513, 4880, 4980, 4795, 4845, 125603,5.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_288330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13200, 13450, 12950, 13300, 55601,0) , 
(20210513, 12900, 13450, 12750, 13250, 57559,0.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_251630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10400, 10700, 10250, 10300, 81069,0) , 
(20210513, 10150, 10300, 9930, 9990, 163632,0.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9110, 9310, 9000, 9230, 691036,0) , 
(20210513, 9130, 9500, 9110, 9320, 1057614,4.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 4555, 0,0) , 
(20210513, 0, 0, 0, 4555, 0,0.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2730, 2790, 2680, 2745, 103178,0) , 
(20210513, 2655, 2735, 2640, 2645, 95343,1.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7650, 7740, 7500, 7600, 140021,0) , 
(20210513, 7420, 7750, 7400, 7660, 88048,2.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_191600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8130, 8130, 8130, 8130, 1,0) , 
(20210513, 8100, 8100, 8100, 8100, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_126340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38500, 39650, 36650, 36800, 99899,0) , 
(20210513, 35650, 37250, 35100, 35400, 70442,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_121800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11550, 12450, 11400, 12150, 2740557,0) , 
(20210513, 11450, 11550, 11100, 11250, 1432928,4.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_148140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5790, 5830, 5360, 5510, 691449,0) , 
(20210513, 5400, 5990, 5210, 5710, 1096207,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1495, 1510, 1480, 1500, 805635,0) , 
(20210513, 1490, 1510, 1470, 1500, 984683,0.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_318410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19350, 19450, 18950, 19100, 41387,0) , 
(20210513, 18850, 19200, 18850, 18950, 29386,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3565, 3590, 3455, 3500, 467807,0) , 
(20210513, 3445, 3565, 3370, 3415, 461079,0.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8180, 9150, 7890, 8020, 1950345,0) , 
(20210513, 7850, 8160, 7810, 7950, 136885,7.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17500, 17550, 17100, 17200, 54562,0) , 
(20210513, 16950, 17400, 16750, 16900, 66752,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_141000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11800, 11800, 11400, 11650, 224210,0) , 
(20210513, 11400, 11550, 11200, 11400, 132772,2.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16550, 16650, 16050, 16150, 244393,0) , 
(20210513, 15850, 16350, 15750, 16300, 282216,8.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4020, 4025, 3930, 3985, 111899,0) , 
(20210513, 3970, 4200, 3605, 3995, 228025,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1900, 2080, 1900, 1990, 2945,0) , 
(20210513, 1990, 2075, 1990, 2075, 11,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14050, 14900, 13900, 14850, 359781,0) , 
(20210513, 14250, 14250, 13250, 13800, 371200,1.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_335890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2455, 2540, 2425, 2515, 852160,0) , 
(20210513, 2450, 2715, 2405, 2440, 2822308,0.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21050, 21200, 19950, 20200, 48101,0) , 
(20210513, 19850, 20200, 19500, 20000, 33884,8.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14000, 14100, 13650, 13750, 101391,0) , 
(20210513, 13500, 14300, 13500, 13950, 130680,30.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 5780, 0,0) , 
(20210513, 0, 0, 0, 5780, 0,9.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8360, 8920, 8200, 8320, 2136162,0) , 
(20210513, 8150, 8310, 8020, 8020, 322046,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10750, 10800, 10250, 10450, 388241,0) , 
(20210513, 10150, 10400, 10050, 10100, 225265,0.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9350, 9460, 8700, 9160, 96971,0) , 
(20210513, 9060, 9340, 8770, 8950, 140701,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9420, 9540, 9050, 9200, 90734,0) , 
(20210513, 9020, 9300, 9020, 9050, 63688,1.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_148780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9000, 9710, 9000, 9590, 4275,0) , 
(20210513, 9650, 9650, 9470, 9470, 503,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_238200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10450, 10600, 10250, 10500, 28072,0) , 
(20210513, 10450, 10650, 10250, 10350, 30302,1.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5450, 5500, 5380, 5470, 30182,0) , 
(20210513, 5350, 5440, 5340, 5440, 30229,10.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7300, 7350, 7060, 7150, 2069957,0) , 
(20210513, 7050, 7170, 6940, 6980, 1645498,3.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_210120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9300, 9300, 8580, 9280, 3,0) , 
(20210513, 9090, 9090, 9090, 9090, 112,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 61800, 62500, 61000, 61600, 69771,0) , 
(20210513, 61100, 64800, 60600, 64000, 133295,23.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7320, 7370, 7050, 7140, 73647,0) , 
(20210513, 6990, 7190, 6860, 7060, 87648,4.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_266170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2140, 1800, 1885, 128,0) , 
(20210513, 1885, 2165, 1885, 2000, 2800,5.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_143240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34500, 34900, 33750, 34800, 28408,0) , 
(20210513, 34800, 35950, 34150, 35200, 50811,29.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20900, 21150, 20300, 20600, 103898,0) , 
(20210513, 20100, 22100, 20100, 21100, 174675,1.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1430, 1585, 1430, 1475, 30254499,0) , 
(20210513, 1445, 1525, 1420, 1505, 7284983,0.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 50100, 50400, 48650, 49300, 24142,0) , 
(20210513, 48750, 51700, 48250, 50400, 60299,2.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6410, 6410, 6190, 6230, 298571,0) , 
(20210513, 6170, 6500, 6120, 6300, 896409,1.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11100, 11150, 10600, 10900, 117575,0) , 
(20210513, 10650, 11650, 10600, 11350, 397027,1.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18700, 19000, 18000, 18150, 404409,0) , 
(20210513, 17700, 18200, 17500, 17600, 383423,3.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4295, 4295, 4125, 4150, 482453,0) , 
(20210513, 4035, 4120, 4000, 4005, 530140,1.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7990, 8150, 7910, 8000, 36219,0) , 
(20210513, 7940, 8030, 7860, 7960, 26102,0.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16750, 16850, 15400, 16200, 153103,0) , 
(20210513, 15600, 16250, 15450, 15550, 204588,3.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6960, 7030, 6880, 6930, 108390,0) , 
(20210513, 6820, 6900, 6760, 6810, 73945,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1705, 1735, 1565, 1600, 4841747,0) , 
(20210513, 1575, 1590, 1445, 1480, 2391218,3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18250, 18300, 17100, 17150, 184586,0) , 
(20210513, 17000, 17750, 16600, 16950, 135836,5.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2900, 2920, 2780, 2805, 1492306,0) , 
(20210513, 2720, 2815, 2705, 2750, 1281127,3.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006405" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 434000, 437500, 425500, 429000, 9236,0) , 
(20210513, 420000, 420000, 410000, 410500, 12974,18.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 641000, 642000, 628000, 633000, 293943,0) , 
(20210513, 614000, 618000, 600000, 602000, 584077,42.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14500, 15600, 13700, 15600, 154997,0) , 
(20210513, 15250, 15950, 14800, 15700, 118660,8.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_291230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3050, 3105, 2970, 3045, 782033,0) , 
(20210513, 2965, 3060, 2965, 3020, 331952,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_02826K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 131500, 135000, 130000, 131000, 19637,0) , 
(20210513, 129500, 131500, 128000, 130000, 11038,7.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_028260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 136000, 139500, 134000, 136500, 978019,0) , 
(20210513, 134000, 135500, 132500, 132500, 664013,14.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_207940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 838000, 864000, 827000, 856000, 785496,0) , 
(20210513, 844000, 905000, 843000, 866000, 598986,10.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 85600, 86200, 83200, 84100, 585213,0) , 
(20210513, 83000, 88000, 82800, 86300, 1331812,13.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 180000, 181000, 177000, 178000, 184553,0) , 
(20210513, 175000, 177000, 174500, 175500, 206570,11.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_028050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19300, 19450, 18600, 19150, 4958488,0) , 
(20210513, 18600, 19750, 18600, 19350, 5064880,27.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009155" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 109000, 109500, 105000, 106000, 30351,0) , 
(20210513, 101500, 105000, 101000, 102000, 41343,11.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 175500, 176000, 163500, 165000, 1978102,0) , 
(20210513, 160500, 163000, 158500, 160500, 1854068,33.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005935" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 74100, 74100, 73100, 73500, 1916667,0) , 
(20210513, 72100, 73000, 71600, 72200, 2129658,76.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 80800, 81200, 79800, 80000, 35812268,0) , 
(20210513, 78900, 79600, 78400, 78500, 31020142,54.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8100, 8490, 7800, 8410, 12041468,0) , 
(20210513, 8720, 9100, 8200, 8260, 22565937,3.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010145" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 305000, 305000, 297500, 300000, 2495,0) , 
(20210513, 324000, 324000, 302000, 302000, 2964,2.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6010, 6020, 5850, 5890, 13442629,0) , 
(20210513, 5820, 5950, 5730, 5890, 8133125,15.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46500, 46550, 44250, 45100, 996047,0) , 
(20210513, 43850, 45000, 43800, 44000, 868524,27.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43000, 43700, 41800, 42050, 230396,0) , 
(20210513, 41450, 42950, 41050, 41050, 187518,0.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_029780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34850, 35150, 33150, 33300, 625267,0) , 
(20210513, 32800, 33550, 32500, 33550, 261141,11.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000815" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 161500, 163500, 158500, 160500, 41203,0) , 
(20210513, 160000, 166500, 159500, 165000, 39539,23.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 212000, 215000, 206500, 211500, 225950,0) , 
(20210513, 211000, 220000, 210000, 215000, 348718,47.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15250, 15700, 14600, 15400, 3241601,0) , 
(20210513, 14600, 15050, 14250, 14950, 1030729,33.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15750, 15750, 15400, 15500, 13154,0) , 
(20210513, 15200, 15600, 15200, 15500, 7075,0.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_145995" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 48250, 48800, 48050, 48050, 1893,0) , 
(20210513, 47250, 49500, 47200, 48800, 4170,6.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_145990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 65600, 66200, 62700, 64000, 96327,0) , 
(20210513, 63400, 68700, 62100, 66200, 168502,4.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 96400, 96800, 93600, 95100, 82945,0) , 
(20210513, 93400, 97600, 92300, 97500, 139270,6.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10500, 10550, 10250, 10500, 45359,0) , 
(20210513, 10300, 10550, 10250, 10450, 53675,1.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 88200, 88200, 84700, 85300, 13751,0) , 
(20210513, 83200, 86900, 83000, 86800, 8288,6.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_272550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30300, 30750, 29650, 30500, 59289,0) , 
(20210513, 30050, 31350, 29800, 30650, 46750,9.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000075" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 82600, 82600, 80500, 80500, 1317,0) , 
(20210513, 80000, 80000, 78500, 79600, 1626,2.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 131500, 134500, 122500, 125500, 91311,0) , 
(20210513, 122000, 126500, 119000, 122500, 90015,8.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2960, 3045, 2860, 2970, 228858,0) , 
(20210513, 2850, 2980, 2850, 2945, 169426,1.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16900, 17000, 16400, 16700, 26708,0) , 
(20210513, 16600, 16650, 16200, 16200, 36524,20.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5990, 6050, 5710, 5790, 254280,0) , 
(20210513, 5680, 5830, 5630, 5640, 269475,2.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8570, 8830, 8500, 8770, 267703,0) , 
(20210513, 8600, 9130, 8600, 8690, 437516,1.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12250, 12450, 11900, 11900, 124285,0) , 
(20210513, 11800, 12050, 11600, 11750, 100611,41.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2880, 2920, 2820, 2820, 184766,0) , 
(20210513, 2820, 2855, 2770, 2800, 118237,4.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4200, 4390, 4005, 4075, 643043,0) , 
(20210513, 3970, 4075, 3865, 3900, 382555,1.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15250, 15350, 14550, 14800, 106525,0) , 
(20210513, 14300, 14750, 14050, 14100, 110547,34.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1800, 1815, 1765, 1775, 766008,0) , 
(20210513, 1745, 1800, 1730, 1760, 630810,3.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3890, 3900, 3590, 3665, 691733,0) , 
(20210513, 3580, 3705, 3450, 3495, 608598,1.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5490, 5520, 5310, 5390, 83252,0) , 
(20210513, 5290, 5560, 5190, 5470, 134284,2.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16200, 16300, 15350, 15500, 178234,0) , 
(20210513, 15050, 15800, 14950, 15350, 88432,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9500, 9600, 9370, 9410, 61051,0) , 
(20210513, 9360, 9500, 9200, 9250, 59681,2.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38550, 39600, 37700, 38400, 10633,0) , 
(20210513, 37600, 38300, 37050, 37400, 5976,4.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13750, 14000, 13600, 13850, 118105,0) , 
(20210513, 13650, 13800, 13450, 13700, 81329,1.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12650, 13850, 12350, 13200, 613838,0) , 
(20210513, 12600, 13250, 12600, 12950, 112775,3.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3745, 3765, 3615, 3675, 234050,0) , 
(20210513, 3600, 4040, 3575, 3760, 4639274,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26500, 26550, 26100, 26450, 38573,0) , 
(20210513, 26000, 26550, 26000, 26350, 30726,15.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 56300, 59400, 54300, 58100, 918674,0) , 
(20210513, 56500, 58000, 56100, 56400, 370099,6.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 88800, 89400, 86200, 87400, 18967,0) , 
(20210513, 86500, 86800, 85700, 86400, 17216,18.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15250, 15350, 14100, 14300, 653705,0) , 
(20210513, 14250, 14700, 13700, 14300, 296523,3.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5550, 5560, 5260, 5330, 1025675,0) , 
(20210513, 5140, 5400, 5140, 5200, 563592,2.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8680, 8850, 8290, 8380, 745827,0) , 
(20210513, 8150, 8500, 7990, 8000, 493560,0.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6730, 6740, 6320, 6320, 1424797,0) , 
(20210513, 6190, 6390, 6120, 6190, 1417148,6.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3455, 3580, 3450, 3500, 636798,0) , 
(20210513, 3485, 3580, 3400, 3405, 785977,1.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41600, 42000, 41350, 41700, 2938,0) , 
(20210513, 41050, 41600, 41050, 41500, 1079,7.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35700, 35700, 33900, 34650, 105618,0) , 
(20210513, 33650, 36300, 33650, 35100, 203212,24.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3970, 4050, 3810, 3870, 44891,0) , 
(20210513, 3870, 3975, 3830, 3850, 60266,6.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 63300, 64100, 59800, 60400, 230455,0) , 
(20210513, 59000, 61000, 58600, 60000, 77846,10.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13900, 13900, 13400, 13500, 345091,0) , 
(20210513, 13000, 13400, 12950, 13050, 189435,9.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1700, 1715, 1630, 1655, 763707,0) , 
(20210513, 1620, 1695, 1600, 1670, 681897,2.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7910, 8120, 7620, 7770, 936076,0) , 
(20210513, 7630, 7890, 7570, 7630, 733165,7.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2095, 2290, 2095, 2205, 551727,0) , 
(20210513, 2180, 2260, 2160, 2200, 94670,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_329560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2085, 2090, 2070, 2070, 15279,0) , 
(20210513, 2055, 2105, 2055, 2090, 7202,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1280, 1280, 1215, 1235, 496176,0) , 
(20210513, 1200, 1270, 1190, 1235, 745941,2.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1420, 1420, 1350, 1395, 414777,0) , 
(20210513, 1355, 1390, 1310, 1365, 508314,1.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4570, 4680, 4500, 4535, 143339,0) , 
(20210513, 4490, 4650, 4440, 4480, 169203,1.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13700, 13700, 13150, 13350, 101530,0) , 
(20210513, 13050, 13300, 13000, 13300, 100581,1.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5020, 5020, 4810, 4855, 160101,0) , 
(20210513, 4765, 4900, 4670, 4790, 95952,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 45050, 45850, 43500, 44500, 179976,0) , 
(20210513, 43250, 44400, 42950, 43700, 92856,1.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1480, 1500, 1445, 1485, 512644,0) , 
(20210513, 1455, 1485, 1400, 1420, 613473,1.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10800, 11000, 10550, 10650, 63383,0) , 
(20210513, 10500, 10500, 10050, 10150, 126439,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_075180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6030, 6080, 5960, 5970, 22667,0) , 
(20210513, 5820, 5930, 5820, 5930, 4006,68.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2015, 0,0) , 
(20210513, 0, 0, 0, 2015, 0,1.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 57000, 57100, 55000, 55500, 25577,0) , 
(20210513, 55500, 64000, 54000, 56900, 212642,6.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_248170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52400, 52500, 51000, 52000, 36942,0) , 
(20210513, 51100, 64000, 50800, 57000, 659458,4.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_294630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3360, 3400, 3275, 3335, 83879,0) , 
(20210513, 3310, 3325, 3150, 3170, 83724,1.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15700, 17050, 14800, 15150, 4381454,0) , 
(20210513, 16000, 19650, 15800, 19650, 15096072,0.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8180, 8280, 8010, 8110, 250046,0) , 
(20210513, 8000, 8130, 7900, 7930, 275161,14.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3165, 3250, 3060, 3060, 333684,0) , 
(20210513, 3030, 3130, 2990, 2995, 137787,2.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6300, 6490, 6230, 6420, 597790,0) , 
(20210513, 6280, 6440, 6170, 6260, 200110,1.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20000, 20150, 19100, 19300, 542451,0) , 
(20210513, 18850, 19600, 18800, 19000, 450833,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9380, 9380, 9000, 9070, 188195,0) , 
(20210513, 8990, 9150, 8860, 8900, 184786,8.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11800, 11850, 11300, 11350, 271664,0) , 
(20210513, 11100, 11550, 11050, 11200, 183033,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 102500, 102500, 99600, 101000, 3630,0) , 
(20210513, 101000, 102000, 99700, 102000, 2973,7.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1185, 1240, 1160, 1230, 569101,0) , 
(20210513, 1210, 1210, 1180, 1195, 313974,1.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17650, 17650, 17000, 17100, 207767,0) , 
(20210513, 16750, 19400, 16550, 17100, 2514931,0.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20700, 20800, 20100, 20300, 848796,0) , 
(20210513, 19900, 20450, 19850, 20000, 698410,12.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004415" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5740, 5840, 5600, 5650, 14567,0) , 
(20210513, 5650, 5780, 5590, 5770, 27341,0.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 370, 383, 364, 374, 18229544,0) , 
(20210513, 372, 374, 364, 365, 9569403,1.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_063170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15650, 15800, 14900, 15350, 340952,0) , 
(20210513, 14900, 15250, 14800, 14900, 310705,1.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 987, 996, 967, 995, 906799,0) , 
(20210513, 984, 1025, 963, 980, 1239651,2.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8960, 9040, 8800, 8960, 22784,0) , 
(20210513, 8870, 8930, 8710, 8780, 25350,2.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3015, 3040, 2810, 2860, 2853455,0) , 
(20210513, 2805, 2890, 2750, 2750, 1291224,2.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7820, 7870, 7670, 7730, 70042,0) , 
(20210513, 7660, 7800, 7570, 7720, 63182,7.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_189860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5230, 5320, 4970, 5040, 178007,0) , 
(20210513, 4900, 5030, 4775, 4845, 204047,4.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_178320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41050, 41500, 39900, 40200, 224537,0) , 
(20210513, 39400, 40900, 39400, 40050, 164667,7.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3200, 3200, 2770, 2845, 269242,0) , 
(20210513, 2835, 2840, 2745, 2830, 83687,2.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5770, 5770, 5520, 5580, 347720,0) , 
(20210513, 5450, 5530, 5180, 5280, 616510,0.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1965, 1975, 1850, 1875, 6073787,0) , 
(20210513, 1820, 1870, 1780, 1780, 2930092,6.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21750, 21750, 21050, 21300, 14433,0) , 
(20210513, 20950, 21400, 20750, 20950, 21196,1.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 54500, 55000, 53700, 53900, 22376,0) , 
(20210513, 53200, 54700, 52700, 54400, 29434,11.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2175, 2200, 2105, 2130, 3034826,0) , 
(20210513, 2065, 2155, 2040, 2105, 3050560,6.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_357550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20300, 20400, 20050, 20150, 39803,0) , 
(20210513, 19850, 20050, 19550, 19850, 39560,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39050, 39050, 37750, 37800, 20460,0) , 
(20210513, 37350, 38900, 37350, 38650, 94770,4.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23200, 23700, 22500, 23400, 110047,0) , 
(20210513, 23150, 23900, 22800, 23700, 92751,7.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4135, 4170, 3910, 4035, 426796,0) , 
(20210513, 3920, 4055, 3920, 3985, 349865,0.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38750, 38900, 37800, 38350, 10415,0) , 
(20210513, 38000, 38000, 36750, 37700, 18562,0.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7360, 7470, 7070, 7270, 45475,0) , 
(20210513, 7000, 7090, 6550, 6850, 79287,1.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_171090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13550, 15000, 13500, 13950, 1074701,0) , 
(20210513, 13550, 14400, 13400, 13750, 173066,0.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_136490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20400, 21600, 19900, 20600, 725962,0) , 
(20210513, 20200, 22200, 19900, 21550, 703114,15.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19500, 19500, 19000, 19100, 33579,0) , 
(20210513, 18850, 19200, 18750, 18950, 32661,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10950, 11000, 10400, 10550, 529168,0) , 
(20210513, 10150, 10650, 9960, 10300, 607258,9.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6550, 6600, 6410, 6480, 105579,0) , 
(20210513, 6420, 6430, 6240, 6270, 133856,4.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014915" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12500, 14350, 12200, 14000, 108404,0) , 
(20210513, 12900, 14000, 12000, 12250, 69235,2.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2455, 2470, 2375, 2410, 583200,0) , 
(20210513, 2380, 2435, 2355, 2370, 397662,3.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5240, 5240, 4970, 4980, 242617,0) , 
(20210513, 4915, 5080, 4875, 4900, 135193,1.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004985" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18250, 18250, 17000, 17450, 23746,0) , 
(20210513, 17150, 18100, 17000, 17000, 18407,0.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11500, 11750, 10500, 10950, 946258,0) , 
(20210513, 10700, 11100, 10450, 10600, 485148,6.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 787, 0,0) , 
(20210513, 0, 0, 0, 787, 0,0.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_081580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3270, 3305, 3205, 3245, 46423,0) , 
(20210513, 3210, 3245, 3120, 3230, 47606,2.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5710, 5860, 5600, 5790, 306106,0) , 
(20210513, 5650, 5740, 5600, 5630, 124296,2.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5810, 6050, 5740, 5810, 976722,0) , 
(20210513, 5710, 5820, 5620, 5700, 420377,10.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3220, 3535, 3200, 3295, 4948416,0) , 
(20210513, 3170, 3270, 3125, 3135, 1989975,2.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9010, 9010, 8760, 8860, 42163,0) , 
(20210513, 8740, 8940, 8690, 8760, 39969,4.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1880, 1880, 1800, 1800, 894773,0) , 
(20210513, 1770, 1815, 1740, 1790, 490215,0.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_148150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21050, 21100, 20500, 20650, 79749,0) , 
(20210513, 20150, 20650, 20150, 20450, 42721,0.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 6160, 0,0) , 
(20210513, 0, 0, 0, 6160, 0,0.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2080, 2110, 2000, 2000, 234222,0) , 
(20210513, 1910, 1960, 1875, 1890, 381269,0.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5210, 5260, 4960, 5120, 447020,0) , 
(20210513, 5010, 5140, 4930, 4940, 300949,3.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004365" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9000, 9000, 8800, 8870, 4281,0) , 
(20210513, 8870, 8890, 8780, 8780, 18406,13.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15350, 15400, 14700, 14950, 165497,0) , 
(20210513, 14500, 15000, 14400, 14550, 185884,4.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 86900, 86900, 82700, 83300, 114677,0) , 
(20210513, 81100, 84800, 80500, 82500, 102748,23.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7650, 7650, 7200, 7420, 100983,0) , 
(20210513, 7160, 7340, 7100, 7170, 90909,6.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34350, 35500, 32400, 35250, 1344919,0) , 
(20210513, 33900, 35800, 33400, 33850, 855818,15.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_306200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 134000, 137000, 126000, 129500, 61075,0) , 
(20210513, 125000, 130500, 119000, 121000, 41598,7.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 83200, 83200, 75800, 80200, 24873,0) , 
(20210513, 77300, 79200, 75500, 78000, 21356,5.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19950, 20300, 18000, 18850, 199741,0) , 
(20210513, 18050, 18700, 17250, 17400, 138990,2.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 119500, 121000, 113000, 116500, 5671,0) , 
(20210513, 113000, 116000, 112500, 112500, 2848,0.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2470, 0,0) , 
(20210513, 0, 0, 0, 2470, 0,1.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5440, 5440, 5240, 5260, 441772,0) , 
(20210513, 5100, 5450, 5070, 5210, 554897,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_234100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5500, 5500, 5280, 5320, 756519,0) , 
(20210513, 5210, 5460, 5180, 5300, 492544,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 6280, 0,0) , 
(20210513, 0, 0, 0, 6280, 0,2.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1835, 1840, 1760, 1770, 651629,0) , 
(20210513, 1730, 1780, 1725, 1745, 394522,4.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 8090, 0,0) , 
(20210513, 0, 0, 0, 8090, 0,14.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4115, 4190, 3935, 3980, 190345,0) , 
(20210513, 3910, 4125, 3860, 4000, 266848,9.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8430, 8500, 8230, 8330, 151067,0) , 
(20210513, 8280, 8380, 8170, 8170, 115448,1.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_258830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10500, 10700, 10250, 10450, 19780,0) , 
(20210513, 10300, 10500, 10200, 10300, 23162,1.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 737, 742, 711, 720, 11987389,0) , 
(20210513, 713, 714, 697, 697, 9085852,1.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3005, 3005, 2920, 2930, 120472,0) , 
(20210513, 2915, 2960, 2895, 2945, 88351,3.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_075580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6870, 6950, 6510, 6650, 733081,0) , 
(20210513, 6400, 6630, 6330, 6350, 629107,0.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5570, 5890, 5550, 5720, 402815,0) , 
(20210513, 5670, 5680, 5430, 5490, 137814,6.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 6440, 0,0) , 
(20210513, 0, 0, 0, 6440, 0,7.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_234340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34300, 34350, 33400, 33400, 61166,0) , 
(20210513, 32650, 33800, 32650, 33050, 59021,7.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2375, 2375, 2240, 2290, 1007292,0) , 
(20210513, 2215, 2275, 2150, 2190, 1521118,0.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_145210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 654, 680, 650, 680, 4895472,0) , 
(20210513, 778, 810, 692, 692, 32646211,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_252500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4665, 4745, 4520, 4635, 2464178,0) , 
(20210513, 4605, 4780, 4540, 4710, 2482764,5.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_347000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20400, 20550, 19750, 19900, 28988,0) , 
(20210513, 19400, 20150, 19100, 19750, 35287,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_308170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29050, 29150, 27750, 27900, 135399,0) , 
(20210513, 27350, 27400, 26700, 26800, 120459,0.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2100, 2000, 2030, 519637,0) , 
(20210513, 1990, 2305, 1825, 2150, 1466864,0.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2490, 0,0) , 
(20210513, 0, 0, 0, 2490, 0,2.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_331920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19650, 19650, 18450, 19000, 73310,0) , 
(20210513, 18500, 18900, 18100, 18250, 85633,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5690, 5700, 5580, 5650, 191485,0) , 
(20210513, 5600, 7340, 5520, 7340, 5453569,1.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_299660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 81100, 86300, 79500, 82500, 1080261,0) , 
(20210513, 80500, 94800, 80300, 89500, 2964523,0.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_268600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 114500, 117400, 113600, 116000, 131381,0) , 
(20210513, 113700, 116300, 112400, 112400, 137256,4.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_108860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5090, 5350, 5040, 5150, 377704,0) , 
(20210513, 5110, 5110, 4250, 4620, 1560236,4.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2800, 2950, 2765, 2950, 281516,0) , 
(20210513, 2850, 2890, 2745, 2745, 279318,2.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_258250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13000, 13500, 12950, 13050, 1972,0) , 
(20210513, 13050, 13550, 12850, 13000, 3843,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 270500, 274500, 261500, 262500, 771734,0) , 
(20210513, 260500, 270500, 260000, 265000, 851092,20.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 135000, 138300, 130100, 130300, 203341,0) , 
(20210513, 129000, 132400, 128200, 129000, 148322,8.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 114100, 116100, 110200, 110500, 1143616,0) , 
(20210513, 109000, 112900, 108700, 110100, 973917,16.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17250, 17400, 16900, 17000, 46744,0) , 
(20210513, 16700, 17300, 16450, 16950, 52811,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 230, 231, 221, 223, 5358276,0) , 
(20210513, 0, 0, 0, 223, 0,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14350, 14900, 14150, 14500, 377232,0) , 
(20210513, 14450, 14750, 14150, 14700, 246652,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1885, 1890, 1830, 1840, 392727,0) , 
(20210513, 1820, 1840, 1790, 1800, 364266,7.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032685" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34650, 44800, 33850, 42500, 28758,0) , 
(20210513, 46400, 46400, 38650, 40950, 17706,0.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_258790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3555, 3585, 3345, 3345, 420662,0) , 
(20210513, 3340, 3505, 3320, 3350, 567104,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3040, 3050, 2955, 2980, 914732,0) , 
(20210513, 2935, 2960, 2815, 2835, 1367428,1.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 392, 0,0) , 
(20210513, 0, 0, 0, 392, 0,1.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_33637K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19050, 19700, 18600, 18800, 165460,0) , 
(20210513, 18350, 18700, 17650, 17850, 85432,8.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_33637L" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32200, 32900, 30650, 31650, 29523,0) , 
(20210513, 31600, 31600, 30000, 30250, 5835,0.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_336370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52600, 54400, 52300, 53400, 757986,0) , 
(20210513, 52200, 52900, 49950, 50900, 544089,5.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_154040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3945, 3975, 3860, 3915, 179702,0) , 
(20210513, 3870, 4150, 3835, 4030, 340492,3.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_248070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24650, 24650, 23750, 24000, 459528,0) , 
(20210513, 23500, 25650, 23100, 24800, 930911,0.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7790, 7910, 7450, 7650, 293251,0) , 
(20210513, 7580, 8360, 7450, 7500, 959423,1.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_357780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 344000, 344000, 333000, 340200, 29433,0) , 
(20210513, 330000, 335400, 324000, 327900, 57107,26.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40450, 40700, 40000, 40100, 63248,0) , 
(20210513, 39600, 39800, 39150, 39150, 73344,6.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_304100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31250, 31350, 30700, 30850, 24327,0) , 
(20210513, 30300, 30800, 30100, 30300, 26553,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19900, 19950, 18550, 18800, 764805,0) , 
(20210513, 18350, 19100, 18100, 18600, 447839,17.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4185, 4220, 4030, 4085, 293549,0) , 
(20210513, 4035, 4150, 3920, 4070, 254071,1.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31900, 32050, 30450, 31150, 71575,0) , 
(20210513, 30800, 31800, 29800, 30800, 80128,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5580, 5750, 5470, 5500, 1353122,0) , 
(20210513, 5430, 5540, 5300, 5300, 1364805,2.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2795, 2795, 2695, 2720, 242483,0) , 
(20210513, 2680, 2815, 2620, 2760, 374696,0.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_253840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29750, 29750, 27050, 27500, 554232,0) , 
(20210513, 26700, 28650, 25600, 25650, 499983,0.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1620, 0,0) , 
(20210513, 0, 0, 0, 1620, 0,6.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_236200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26650, 26950, 26250, 26450, 40457,0) , 
(20210513, 26250, 26450, 26100, 26200, 22657,6.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17550, 17650, 17050, 17300, 12144,0) , 
(20210513, 16950, 17200, 16800, 17050, 13714,1.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10450, 10500, 10200, 10350, 74471,0) , 
(20210513, 10250, 10400, 10000, 10000, 71510,0.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60200, 60800, 59500, 60100, 36882,0) , 
(20210513, 59500, 59900, 58800, 59200, 28576,18.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_099440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1785, 1795, 1750, 1785, 174646,0) , 
(20210513, 1765, 1780, 1740, 1770, 77772,1.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 829, 0,0) , 
(20210513, 0, 0, 0, 829, 0,37.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_159910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 263, 0,0) , 
(20210513, 0, 0, 0, 263, 0,0.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_158310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 505, 0,0) , 
(20210513, 0, 0, 0, 505, 0,4.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5320, 5330, 5210, 5280, 18862,0) , 
(20210513, 5150, 5260, 5090, 5210, 50717,2.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_258540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22700, 23450, 21350, 21700, 3397,0) , 
(20210513, 21100, 22500, 20500, 21650, 2176,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_204630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2450, 2590, 2420, 2490, 124695,0) , 
(20210513, 2440, 2510, 2385, 2435, 107219,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_253450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 98200, 98600, 95200, 95400, 242607,0) , 
(20210513, 94200, 95200, 93000, 93000, 207250,12.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9100, 9170, 8840, 8870, 164655,0) , 
(20210513, 8720, 8910, 8640, 8760, 130398,0.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 7360, 0,0) , 
(20210513, 0, 0, 0, 7360, 0,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21400, 21400, 20100, 20350, 142886,0) , 
(20210513, 19950, 21500, 19600, 20350, 169388,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8520, 8560, 8250, 8290, 134346,0) , 
(20210513, 8120, 8440, 8090, 8290, 104970,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1390, 1600, 1355, 1600, 8906656,0) , 
(20210513, 1540, 1640, 1510, 1630, 10157339,2.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_260870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 57800, 60900, 57000, 58500, 36888,0) , 
(20210513, 57100, 58200, 54200, 55200, 33083,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3200, 3295, 3040, 3110, 631086,0) , 
(20210513, 3080, 3135, 3030, 3090, 269407,13.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3780, 3810, 3715, 3730, 566623,0) , 
(20210513, 3695, 3695, 3640, 3645, 589010,4.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_134790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 77600, 81500, 75900, 80600, 49841,0) , 
(20210513, 79500, 88600, 77200, 82700, 49303,1.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_269620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2055, 2070, 1955, 2005, 2365679,0) , 
(20210513, 1960, 2055, 1960, 2000, 1379657,0.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1465, 1500, 1455, 1485, 298202,0) , 
(20210513, 1445, 1480, 1445, 1480, 153768,1.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_232830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4285, 4285, 4100, 4190, 682,0) , 
(20210513, 4400, 4495, 4000, 4295, 1161,0.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_139050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 720, 721, 703, 708, 1193904,0) , 
(20210513, 695, 727, 681, 697, 1470663,2.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 86200, 87200, 83000, 83700, 32382,0) , 
(20210513, 83400, 84800, 82000, 83400, 19638,9.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17100, 17250, 16750, 17000, 25071,0) , 
(20210513, 16600, 17000, 16550, 16750, 19460,0.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_029530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32550, 33250, 31600, 32100, 32868,0) , 
(20210513, 31500, 32050, 31350, 31700, 14611,21.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12150, 12200, 11700, 11950, 44074,0) , 
(20210513, 11750, 12050, 11650, 11900, 22555,3.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3465, 3600, 3365, 3465, 6523653,0) , 
(20210513, 3775, 4055, 3500, 3535, 9861260,3.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18600, 18650, 17900, 18300, 41540,0) , 
(20210513, 17650, 18800, 17650, 18300, 54026,1.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 12100, 0,0) , 
(20210513, 0, 0, 0, 12100, 0,3.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10400, 10700, 10250, 10600, 732495,0) , 
(20210513, 10400, 10850, 10000, 10150, 976078,11.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3050, 3080, 2975, 3010, 2756823,0) , 
(20210513, 2915, 3000, 2915, 2960, 1715757,5.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1960, 1965, 1870, 1935, 3018504,0) , 
(20210513, 1880, 2035, 1865, 1875, 6822028,2.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46800, 46800, 45200, 45300, 33947,0) , 
(20210513, 44300, 46100, 44000, 44200, 30739,2.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 321000, 323500, 313000, 320000, 148742,0) , 
(20210513, 316000, 322000, 305500, 307000, 234656,28.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 180000, 182000, 176500, 180500, 11943,0) , 
(20210513, 176500, 181000, 175000, 177500, 10196,3.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 228000, 234000, 220500, 231500, 106402,0) , 
(20210513, 229000, 232000, 221500, 221500, 114075,4.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 99000, 104000, 97000, 101000, 65171,0) , 
(20210513, 99700, 109000, 99700, 105000, 98792,4.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5850, 6350, 5780, 6150, 466747,0) , 
(20210513, 6010, 6570, 5930, 6150, 333476,1.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8360, 8430, 8090, 8190, 76365,0) , 
(20210513, 8070, 8250, 8040, 8050, 72717,1.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 117500, 120000, 116000, 120000, 2526,0) , 
(20210513, 117500, 122000, 117500, 118500, 3010,26.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001725" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 64000, 64000, 63000, 63100, 5184,0) , 
(20210513, 62900, 63500, 61500, 63000, 1482,6.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 63600, 64100, 63000, 63700, 6901,0) , 
(20210513, 63000, 63400, 62500, 63300, 6728,7.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_323280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2150, 2150, 2120, 2125, 7742,0) , 
(20210513, 2125, 2150, 2120, 2125, 11284,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_344050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2130, 2135, 2110, 2115, 15643,0) , 
(20210513, 2120, 2125, 2110, 2120, 23056,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009275" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 55100, 58000, 50700, 58000, 15347,0) , 
(20210513, 54200, 75400, 54200, 75400, 35032,0.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1795, 1810, 1710, 1725, 1363762,0) , 
(20210513, 1700, 1920, 1685, 1775, 5945317,3.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7030, 7070, 6700, 6810, 202337,0) , 
(20210513, 6540, 6850, 6540, 6640, 119577,1.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2250, 2270, 2155, 2195, 2500807,0) , 
(20210513, 2150, 2210, 2120, 2155, 1748003,3.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15700, 15750, 15000, 15250, 111230,0) , 
(20210513, 14750, 15300, 14750, 15050, 62053,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8200, 8260, 7930, 8120, 23286,0) , 
(20210513, 8010, 8290, 7900, 8000, 31515,3.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16350, 16500, 15300, 15750, 150360,0) , 
(20210513, 15450, 16050, 15400, 15600, 76670,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019175" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 98000, 102000, 91300, 94400, 113718,0) , 
(20210513, 89600, 95300, 85500, 87700, 74361,0.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 70100, 71300, 66100, 67700, 2606220,0) , 
(20210513, 65000, 69400, 64500, 66200, 1973910,9.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3480, 3515, 3430, 3470, 162225,0) , 
(20210513, 3400, 3430, 3280, 3300, 264985,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_055550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42200, 42300, 40500, 40850, 2328363,0) , 
(20210513, 40550, 41800, 40350, 41500, 1813114,60.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_293940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8250, 8250, 8100, 8210, 133470,0) , 
(20210513, 8180, 8250, 8050, 8210, 137682,1.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_333050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2110, 2130, 2110, 2130, 4552,0) , 
(20210513, 2130, 2140, 2120, 2135, 7393,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_366330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2115, 2100, 2115, 7535,0) , 
(20210513, 2115, 2115, 2100, 2115, 16254,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33850, 34050, 31800, 32050, 16302,0) , 
(20210513, 32000, 32450, 31250, 31800, 20131,4.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_056700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3730, 3825, 3615, 3650, 618076,0) , 
(20210513, 3590, 3640, 3530, 3530, 523011,3.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_187270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3780, 3800, 3625, 3685, 80108,0) , 
(20210513, 3600, 3615, 3510, 3510, 60822,2.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15300, 15500, 14950, 15500, 20452,0) , 
(20210513, 15500, 16900, 14600, 14800, 68824,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_243840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 48500, 48500, 47200, 47600, 72244,0) , 
(20210513, 46000, 47200, 45950, 46250, 63527,1.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_108320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 95500, 97600, 92400, 94200, 259040,0) , 
(20210513, 91800, 94800, 91600, 93000, 188417,35.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22700, 23100, 22150, 22250, 286259,0) , 
(20210513, 21800, 22100, 21050, 21650, 648059,4.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2935, 2935, 2820, 2835, 276544,0) , 
(20210513, 2785, 2835, 2735, 2735, 309552,2.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_160980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23050, 23400, 22300, 22600, 110170,0) , 
(20210513, 22000, 23200, 21850, 23150, 165251,5.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_356890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17050, 17050, 16500, 16850, 88817,0) , 
(20210513, 16800, 17650, 16700, 17050, 458106,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 63400, 64700, 61900, 63600, 41470,0) , 
(20210513, 62600, 63900, 62000, 63700, 24605,1.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_102280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 640, 646, 627, 637, 2858899,0) , 
(20210513, 627, 654, 625, 634, 2946861,2.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7820, 7850, 7550, 7660, 1921563,0) , 
(20210513, 7500, 7740, 7470, 7610, 1205243,3.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2770, 0,0) , 
(20210513, 0, 0, 0, 2770, 0,76.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1500, 0,0) , 
(20210513, 0, 0, 0, 1500, 0,3.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3600, 3620, 3485, 3510, 404629,0) , 
(20210513, 3455, 3525, 3405, 3425, 307050,2.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10000, 10000, 10000, 10000, 1,0) , 
(20210513, 10800, 10800, 10800, 10800, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2390, 2570, 2365, 2470, 3432181,0) , 
(20210513, 2495, 2830, 2435, 2670, 5640705,1.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2105, 2155, 2090, 2120, 448734,0) , 
(20210513, 2095, 2115, 2065, 2065, 211422,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2075, 2110, 1990, 1995, 261386,0) , 
(20210513, 1955, 2010, 1930, 2010, 134193,1.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_136510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6230, 6250, 6050, 6090, 19543,0) , 
(20210513, 6090, 6090, 5950, 5970, 14333,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_099320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 50200, 51300, 48950, 50100, 107606,0) , 
(20210513, 48750, 49800, 47800, 47800, 121178,3.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 6410, 0,0) , 
(20210513, 0, 0, 0, 6410, 0,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18950, 19200, 18650, 18850, 20553,0) , 
(20210513, 18500, 18950, 18400, 18850, 20399,11.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6970, 7090, 6840, 6860, 432003,0) , 
(20210513, 6820, 6820, 6450, 6460, 670226,5.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1010, 1050, 1000, 1020, 627556,0) , 
(20210513, 1010, 1030, 995, 1000, 338698,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11800, 11950, 11250, 11400, 680465,0) , 
(20210513, 11000, 11400, 10850, 11200, 659052,2.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1540, 1730, 1535, 1630, 813373,0) , 
(20210513, 1565, 1655, 1545, 1615, 193401,1.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_236030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7150, 7150, 7150, 7150, 400,0) , 
(20210513, 6950, 7290, 6940, 7290, 321,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_103660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 5950, 0,0) , 
(20210513, 0, 0, 0, 5950, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_245450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2495, 2495, 2495, 2495, 1,0) , 
(20210513, 2495, 2495, 2495, 2495, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3680, 3710, 3550, 3605, 154397,0) , 
(20210513, 3545, 3650, 3415, 3590, 148523,1.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_264660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13550, 13550, 13150, 13250, 29290,0) , 
(20210513, 13000, 13250, 12800, 12850, 62933,0.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_352700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22800, 23400, 22000, 22400, 104796,0) , 
(20210513, 21950, 22200, 21550, 21950, 58574,2.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_056730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1550, 0,0) , 
(20210513, 0, 0, 0, 1550, 0,2.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7720, 8490, 6980, 7350, 9804697,0) , 
(20210513, 7160, 7380, 6900, 7120, 2243746,0.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_297090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29650, 30550, 28850, 29300, 58623,0) , 
(20210513, 28550, 29250, 28550, 28750, 36879,4.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2190, 2190, 2085, 2095, 278071,0) , 
(20210513, 2065, 2070, 1995, 2020, 293060,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_112610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 72000, 76000, 70900, 72000, 582592,0) , 
(20210513, 69700, 71300, 68800, 69100, 471113,10.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_286000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8790, 8790, 8400, 8500, 339,0) , 
(20210513, 8600, 9100, 8600, 9100, 4,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 839, 0,0) , 
(20210513, 0, 0, 0, 839, 0,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6290, 6350, 6170, 6250, 149856,0) , 
(20210513, 6210, 6480, 6170, 6330, 184958,0.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_056000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2860, 0,0) , 
(20210513, 0, 0, 0, 2860, 0,0.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1520, 1525, 1480, 1485, 246209,0) , 
(20210513, 1470, 1505, 1460, 1485, 216985,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_189330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43800, 43900, 41500, 42650, 14411,0) , 
(20210513, 42250, 42250, 40500, 40600, 14516,0.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 170500, 170500, 165500, 168500, 73294,0) , 
(20210513, 166000, 171500, 165500, 171500, 68167,22.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27800, 27950, 26800, 27000, 438006,0) , 
(20210513, 26500, 27750, 26450, 27450, 544557,5.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 153100, 153200, 148200, 148700, 164303,0) , 
(20210513, 146000, 149500, 145200, 145200, 189249,19.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_097955" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 223500, 225000, 215000, 221500, 36445,0) , 
(20210513, 215000, 228000, 214500, 222000, 25343,27.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_097950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 459000, 461500, 447500, 454500, 160453,0) , 
(20210513, 447000, 479500, 444000, 462000, 216480,24.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27900, 28600, 27350, 28150, 175424,0) , 
(20210513, 27750, 30250, 27500, 29900, 353640,15.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 79700, 82200, 79700, 80000, 512973,0) , 
(20210513, 79200, 80300, 78100, 79000, 496184,14.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 363, 363, 342, 347, 673900,0) , 
(20210513, 345, 347, 337, 346, 442353,27.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8300, 8350, 8100, 8200, 39723,0) , 
(20210513, 8110, 8220, 8020, 8180, 18519,1.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7100, 7240, 7060, 7080, 130891,0) , 
(20210513, 7000, 7190, 6980, 7130, 93714,1.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_260930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9360, 9390, 9180, 9180, 24022,0) , 
(20210513, 9120, 9120, 8900, 9000, 36026,2.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5290, 5480, 5190, 5340, 721212,0) , 
(20210513, 5220, 5590, 5140, 5280, 1428073,2.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22200, 22450, 21700, 22350, 177227,0) , 
(20210513, 22000, 22400, 21800, 22300, 77719,1.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8630, 8700, 8280, 8370, 2165314,0) , 
(20210513, 8290, 8540, 8210, 8290, 1212556,4.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2820, 2835, 2740, 2775, 619138,0) , 
(20210513, 2760, 2795, 2715, 2745, 455720,0.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 990, 0,0) , 
(20210513, 0, 0, 0, 990, 0,0.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 275, 0,0) , 
(20210513, 0, 0, 0, 275, 0,3.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_125210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13850, 13900, 13350, 13500, 188532,0) , 
(20210513, 13300, 13800, 13300, 13600, 151113,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002795" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27350, 27650, 26450, 26900, 66047,0) , 
(20210513, 26300, 27450, 25900, 26950, 61475,48.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_00279K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 48050, 48400, 47000, 48100, 14886,0) , 
(20210513, 47000, 50000, 46950, 50000, 14232,7.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 77000, 77200, 73500, 75400, 235328,0) , 
(20210513, 74400, 76300, 73200, 75400, 235068,18.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090435" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 100000, 102500, 98600, 101500, 107585,0) , 
(20210513, 99200, 105500, 99200, 102500, 86693,57.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 291500, 296000, 286000, 292500, 259901,0) , 
(20210513, 291000, 292000, 287000, 290000, 231522,34.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30150, 30150, 29100, 29400, 85955,0) , 
(20210513, 28900, 29500, 28750, 29050, 54935,4.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_074430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3165, 3240, 2905, 2945, 7026454,0) , 
(20210513, 2885, 3165, 2865, 2985, 11162896,0.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36000, 38200, 35450, 37600, 672457,0) , 
(20210513, 37300, 39500, 36450, 38300, 1038361,8.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12200, 12400, 12100, 12200, 89615,0) , 
(20210513, 11850, 12050, 11750, 11750, 97660,6.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_149950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19200, 19400, 18550, 19000, 41418,0) , 
(20210513, 18800, 19350, 18150, 18800, 36601,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7200, 7290, 6900, 6960, 165308,0) , 
(20210513, 6870, 7030, 6750, 6970, 79115,17.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 146000, 147000, 136000, 137000, 9582,0) , 
(20210513, 135000, 138500, 131500, 133000, 7382,5.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_183190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 143500, 146500, 132000, 143000, 60563,0) , 
(20210513, 136000, 140500, 134000, 136000, 29442,4.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 57400, 58600, 55200, 55500, 61782,0) , 
(20210513, 54800, 56500, 53300, 55000, 68164,6.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3805, 3940, 3750, 3850, 342760,0) , 
(20210513, 3750, 3830, 3715, 3735, 210376,4.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3010, 3035, 2915, 2930, 160741,0) , 
(20210513, 2850, 2940, 2835, 2900, 110326,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_246720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6900, 7630, 6210, 6510, 613424,0) , 
(20210513, 6510, 7000, 6150, 6700, 119761,1.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6040, 6100, 5830, 5950, 310458,0) , 
(20210513, 5850, 5940, 5820, 5860, 230618,1.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_127710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5340, 5780, 5200, 5280, 6421055,0) , 
(20210513, 5350, 5690, 5250, 5490, 3589110,0.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23950, 23950, 22800, 23100, 86271,0) , 
(20210513, 22550, 24250, 22500, 23800, 162001,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15400, 15500, 15000, 15150, 787587,0) , 
(20210513, 14900, 15550, 14900, 15200, 815203,19.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_227610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2720, 2810, 2655, 2765, 215969,0) , 
(20210513, 2675, 2875, 2675, 2875, 208301,4.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_143160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27800, 27800, 26950, 27500, 30871,0) , 
(20210513, 26800, 27250, 26750, 26950, 13981,0.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14000, 14150, 13800, 13900, 10486,0) , 
(20210513, 13650, 13850, 13500, 13650, 6724,8.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_332370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8610, 8690, 8430, 8580, 34454,0) , 
(20210513, 8380, 8490, 8360, 8410, 22489,0.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10800, 11350, 10600, 11350, 729696,0) , 
(20210513, 11100, 11350, 10850, 10900, 445184,11.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_339950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3405, 3550, 3350, 3475, 6621700,0) , 
(20210513, 3450, 3820, 3050, 3155, 10501684,1.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_335870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2225, 2225, 2160, 2190, 11132,0) , 
(20210513, 2215, 2215, 2155, 2195, 4273,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_351340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2190, 2190, 2190, 2190, 1,0) , 
(20210513, 2160, 2165, 2160, 2165, 86,0.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_351320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2280, 0,0) , 
(20210513, 0, 0, 0, 2280, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_373200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2120, 2190, 2120, 2185, 2171,0) , 
(20210513, 2180, 2180, 2170, 2170, 4000,0.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_099190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27100, 27400, 26100, 26350, 158137,0) , 
(20210513, 26000, 26700, 25800, 26350, 118149,36.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_289010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8690, 8760, 8400, 8540, 121259,0) , 
(20210513, 8470, 8570, 8410, 8470, 70889,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20500, 20650, 20100, 20350, 24844,0) , 
(20210513, 19900, 20200, 19900, 20000, 27317,1.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_040910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15500, 15550, 15250, 15350, 142674,0) , 
(20210513, 15000, 15250, 15000, 15050, 158412,5.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4010, 4010, 3880, 3955, 235064,0) , 
(20210513, 3895, 4060, 3850, 3940, 289751,0.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4755, 4820, 4600, 4700, 116881,0) , 
(20210513, 4570, 4720, 4550, 4575, 123218,2.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 66600, 67500, 64500, 65000, 75038,0) , 
(20210513, 63900, 65800, 63600, 64600, 105270,5.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21000, 21400, 20850, 20950, 200720,0) , 
(20210513, 20450, 20900, 20350, 20400, 156573,3.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4080, 4080, 3935, 4000, 13762,0) , 
(20210513, 4000, 5180, 3895, 4435, 1137036,0.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1355, 1365, 1305, 1355, 5038714,0) , 
(20210513, 1315, 1350, 1300, 1325, 4590582,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3920, 3925, 3835, 3855, 170771,0) , 
(20210513, 3795, 3865, 3655, 3760, 181871,4.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2215, 2290, 2050, 2185, 1873492,0) , 
(20210513, 2080, 2185, 1960, 2095, 1198186,2.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3940, 3980, 3750, 3870, 180277,0) , 
(20210513, 3860, 3900, 3755, 3770, 176604,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 5350, 0,0) , 
(20210513, 0, 0, 0, 5350, 0,0.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2565, 2615, 2475, 2565, 2720642,0) , 
(20210513, 2515, 2750, 2490, 2615, 7940491,1.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7840, 8050, 7820, 7940, 213334,0) , 
(20210513, 7790, 7940, 7700, 7790, 197253,5.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5020, 5020, 4865, 4880, 168050,0) , 
(20210513, 4800, 4865, 4740, 4740, 208661,2.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_185490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25061, 30701, 23424, 28200, 5479601,0) , 
(20210513, 28950, 31000, 26550, 27250, 1759919,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_059100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10100, 10750, 9770, 10500, 131901,0) , 
(20210513, 10300, 10850, 10000, 10250, 106385,8.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_149010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6370, 6370, 5200, 6180, 4,0) , 
(20210513, 6160, 6160, 5260, 5430, 462,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_262840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13450, 13450, 12800, 12900, 101649,0) , 
(20210513, 12700, 12900, 12500, 12700, 52783,0.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_175250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44900, 44900, 42700, 42750, 96802,0) , 
(20210513, 41600, 42800, 41300, 41950, 121119,1.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8410, 8450, 8050, 8070, 493934,0) , 
(20210513, 7950, 8300, 7920, 8030, 426390,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_119830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9800, 9800, 9550, 9740, 188754,0) , 
(20210513, 9510, 10200, 9500, 9900, 435254,1.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 3180, 0,0) , 
(20210513, 0, 0, 0, 3180, 0,0.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_124500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5930, 5960, 5700, 5800, 390369,0) , 
(20210513, 5670, 5860, 5620, 5750, 330200,1.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_099520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1285, 0,0) , 
(20210513, 0, 0, 0, 1285, 0,1.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44000, 44300, 43000, 43150, 40474,0) , 
(20210513, 42500, 42700, 42250, 42300, 57628,3.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_223220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 638, 0,0) , 
(20210513, 0, 0, 0, 638, 0,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6930, 7330, 6890, 7210, 4870630,0) , 
(20210513, 7050, 7080, 6860, 6910, 1899570,0.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2855, 2855, 2755, 2825, 273486,0) , 
(20210513, 2755, 2820, 2710, 2720, 280779,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3585, 3650, 3450, 3510, 856816,0) , 
(20210513, 3440, 3600, 3425, 3560, 514030,2.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_059120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7370, 7430, 7200, 7350, 54894,0) , 
(20210513, 7200, 7830, 7160, 7650, 204419,3.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_158430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23950, 24000, 23350, 23600, 10942,0) , 
(20210513, 23300, 23550, 23100, 23150, 13865,0.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_149300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2300, 2300, 2000, 2200, 30068,0) , 
(20210513, 2180, 2180, 2145, 2160, 3248,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 94900, 96600, 92600, 93800, 136272,0) , 
(20210513, 92300, 94500, 91600, 91900, 100418,48.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13450, 13500, 13050, 13200, 36863,0) , 
(20210513, 12950, 13350, 12800, 13050, 34320,3.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 67000, 67600, 66200, 66800, 61837,0) , 
(20210513, 66000, 66700, 65500, 65800, 76010,17.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_251280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12100, 12250, 12100, 12100, 740,0) , 
(20210513, 12500, 12500, 12300, 12300, 71,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 48500, 49300, 48300, 48950, 94238,0) , 
(20210513, 48050, 49300, 48000, 48000, 124988,12.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_297570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5980, 6000, 5630, 5840, 570133,0) , 
(20210513, 5670, 6070, 5660, 5820, 794696,0.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5500, 5500, 5030, 5110, 6527507,0) , 
(20210513, 4920, 5190, 4920, 4995, 2616595,1.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_260660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12700, 12950, 12400, 12400, 52110,0) , 
(20210513, 12300, 12550, 12100, 12200, 47743,1.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8520, 8640, 8300, 8340, 505901,0) , 
(20210513, 8280, 8290, 8060, 8100, 433710,20.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9350, 9350, 9030, 9260, 120440,0) , 
(20210513, 9110, 9240, 9050, 9050, 57335,1.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_327260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28950, 34500, 28950, 30800, 287220,0) , 
(20210513, 30450, 30900, 28800, 29200, 80227,1.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5520, 5520, 5300, 5410, 85865,0) , 
(20210513, 5310, 5400, 5230, 5300, 60971,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_218410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36300, 37450, 36000, 36350, 294356,0) , 
(20210513, 35850, 36650, 35700, 35750, 181933,10.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_061040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7470, 7540, 7230, 7320, 126413,0) , 
(20210513, 7690, 7930, 7450, 7780, 1065375,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_148250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16050, 16100, 15700, 15850, 34346,0) , 
(20210513, 15500, 15850, 15350, 15650, 20520,2.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_347860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29200, 31600, 29200, 29400, 383255,0) , 
(20210513, 28900, 28900, 27800, 28250, 213243,0.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_196170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 75400, 76400, 73600, 74000, 194765,0) , 
(20210513, 71500, 73400, 71000, 71100, 229490,18.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6140, 6190, 5800, 5930, 130729,0) , 
(20210513, 5850, 5990, 5610, 5860, 62902,1.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_085810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2365, 2590, 2240, 2340, 1025701,0) , 
(20210513, 2305, 2360, 2250, 2280, 257548,0.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_117670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4725, 4805, 4630, 4725, 159843,0) , 
(20210513, 4695, 4760, 4605, 4660, 127568,1.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_291650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21050, 21300, 20200, 20400, 86830,0) , 
(20210513, 20300, 20650, 19950, 20200, 62285,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_293780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 59000, 60000, 58000, 58500, 100094,0) , 
(20210513, 57100, 57900, 55800, 56000, 175692,0.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1590, 1590, 1590, 1590, 2,0) , 
(20210513, 1590, 1590, 1585, 1585, 22,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26850, 26900, 25600, 26200, 227745,0) , 
(20210513, 25700, 26450, 25550, 26150, 131256,2.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_161000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13100, 13200, 12100, 12400, 768659,0) , 
(20210513, 12200, 12950, 12150, 12550, 601916,16.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_196300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15200, 15450, 14850, 15150, 46086,0) , 
(20210513, 15000, 15850, 14700, 15350, 83975,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_310200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3125, 3375, 3055, 3115, 6980985,0) , 
(20210513, 3020, 3360, 3020, 3120, 4130833,3.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_179530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30000, 33000, 29000, 31400, 4457,0) , 
(20210513, 32000, 32500, 30050, 30050, 2747,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_205500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3365, 3950, 3360, 3770, 5279160,0) , 
(20210513, 3675, 3850, 3530, 3650, 1408451,0.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9150, 9160, 8960, 9020, 29534,0) , 
(20210513, 8900, 8950, 8600, 8630, 54755,50.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5100, 5590, 5100, 5550, 658983,0) , 
(20210513, 5500, 5530, 5250, 5420, 301421,1.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9530, 9530, 9210, 9330, 28122,0) , 
(20210513, 9150, 9330, 9120, 9270, 30064,0.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_238090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5160, 5310, 5130, 5150, 2304012,0) , 
(20210513, 5060, 5110, 4870, 4910, 2354718,0.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4890, 4980, 4805, 4940, 100805,0) , 
(20210513, 4905, 5050, 4805, 4975, 164940,0.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_129890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25450, 25650, 25150, 25300, 60792,0) , 
(20210513, 24950, 25600, 24950, 25000, 58793,5.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_174900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25000, 25050, 23050, 23050, 293169,0) , 
(20210513, 22950, 24150, 22750, 23700, 147765,11.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_255440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15100, 15250, 14750, 15000, 79178,0) , 
(20210513, 15000, 15200, 14600, 14700, 57559,1.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14200, 14950, 14050, 14450, 886825,0) , 
(20210513, 15200, 15450, 13950, 13950, 726747,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_102120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15500, 15850, 15300, 15750, 541575,0) , 
(20210513, 15400, 16200, 15350, 15800, 702331,1.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_238120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8560, 8570, 8180, 8250, 14977,0) , 
(20210513, 7890, 8250, 7890, 8240, 17757,1.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_224810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4400, 4400, 4400, 4400, 0,0) , 
(20210513, 4400, 4400, 4400, 4400, 2315,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12650, 13500, 12300, 12800, 605953,0) , 
(20210513, 12450, 16300, 12350, 14600, 8327381,18.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2240, 2400, 2225, 2265, 5299870,0) , 
(20210513, 2200, 2285, 2175, 2205, 1300398,0.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_270660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39600, 40600, 39600, 40150, 2150,0) , 
(20210513, 41000, 41000, 40500, 40500, 1145,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7190, 7260, 7050, 7070, 140180,0) , 
(20210513, 7000, 7100, 6900, 6970, 189450,2.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4975, 4975, 4760, 4910, 196176,0) , 
(20210513, 4860, 4885, 4760, 4780, 56410,1.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_121890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 739, 0,0) , 
(20210513, 0, 0, 0, 739, 0,8.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_099220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2875, 2915, 2810, 2825, 566999,0) , 
(20210513, 2750, 2835, 2745, 2765, 456687,0.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_097780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1610, 1670, 1545, 1570, 20195888,0) , 
(20210513, 1540, 1590, 1525, 1550, 3897016,6.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_289080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4505, 4505, 4400, 4425, 403735,0) , 
(20210513, 4350, 4730, 4320, 4400, 1267424,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2185, 2325, 2150, 2290, 13675667,0) , 
(20210513, 2215, 2245, 2080, 2080, 6751236,7.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29500, 30600, 29150, 29550, 143124,0) , 
(20210513, 29000, 30100, 28850, 29300, 112958,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7900, 7930, 7700, 7800, 101161,0) , 
(20210513, 7760, 7880, 7630, 7800, 59977,1.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1815, 1855, 1740, 1760, 1161565,0) , 
(20210513, 1695, 1875, 1695, 1770, 3557420,52.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4140, 4160, 4000, 4060, 132235,0) , 
(20210513, 4010, 4090, 3965, 4005, 142705,3.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33550, 34200, 32200, 32600, 108513,0) , 
(20210513, 31800, 33800, 31500, 32500, 98425,7.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 639, 0,0) , 
(20210513, 0, 0, 0, 639, 0,8.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_270210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6430, 7250, 6100, 6280, 16,0) , 
(20210513, 6280, 6280, 6280, 6280, 33,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_103230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2505, 0,0) , 
(20210513, 0, 0, 0, 2505, 0,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_260970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40000, 41800, 39500, 39500, 204,0) , 
(20210513, 40000, 45400, 40000, 42950, 683,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 197, 0,0) , 
(20210513, 0, 0, 0, 197, 0,56.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30300, 30400, 29450, 29600, 168355,0) , 
(20210513, 28750, 29200, 28000, 28250, 293570,5.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21900, 22100, 21400, 21500, 70312,0) , 
(20210513, 21200, 22400, 20950, 21500, 89203,65.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5040, 5040, 4810, 4860, 198696,0) , 
(20210513, 4900, 5000, 4800, 4835, 133166,2.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_275630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6460, 6590, 6400, 6510, 136427,0) , 
(20210513, 6440, 6490, 6350, 6410, 56072,3.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3080, 3080, 2930, 2980, 940347,0) , 
(20210513, 2930, 2990, 2895, 2940, 635432,3.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3050, 3070, 2810, 2860, 681429,0) , 
(20210513, 2785, 2900, 2770, 2830, 341354,0.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_056190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41550, 41700, 39950, 40250, 220013,0) , 
(20210513, 39450, 40550, 39400, 39650, 180442,18.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7420, 7530, 7200, 7350, 2571795,0) , 
(20210513, 7140, 7590, 7100, 7230, 3068632,4.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4320, 4345, 4175, 4250, 187994,0) , 
(20210513, 4210, 4290, 4110, 4190, 125888,1.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5790, 5790, 5580, 5660, 90700,0) , 
(20210513, 5580, 5660, 5500, 5500, 87421,2.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1050, 1085, 1025, 1080, 809245,0) , 
(20210513, 1045, 1080, 1040, 1060, 355361,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26450, 28750, 26400, 28350, 1641430,0) , 
(20210513, 27750, 28050, 26750, 26850, 694486,15.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_246250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10750, 10950, 10400, 10950, 18381,0) , 
(20210513, 10950, 12050, 10900, 11100, 2139,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_063440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2740, 2790, 2655, 2660, 1173590,0) , 
(20210513, 2600, 2660, 2555, 2595, 1334349,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_299670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5690, 5690, 5690, 5690, 1,0) , 
(20210513, 4840, 4840, 4840, 4840, 101,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32000, 33000, 30900, 31300, 824685,0) , 
(20210513, 31100, 32000, 30950, 31000, 438904,17.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1750, 1755, 1690, 1715, 325427,0) , 
(20210513, 1700, 1735, 1680, 1705, 390172,3.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8040, 8200, 7780, 7890, 227274,0) , 
(20210513, 7720, 7900, 7630, 7760, 176182,2.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_109610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3805, 3850, 3670, 3740, 324756,0) , 
(20210513, 3690, 3710, 3640, 3640, 312988,1.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 81900, 82100, 79800, 80100, 123042,0) , 
(20210513, 80000, 80600, 79700, 79800, 88475,55.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_306040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30850, 31300, 30250, 30400, 261531,0) , 
(20210513, 29350, 30000, 28200, 28650, 229577,5.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 498, 0,0) , 
(20210513, 0, 0, 0, 498, 0,0.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 351, 351, 350, 350, 210,0) , 
(20210513, 358, 358, 323, 353, 145,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 778, 779, 744, 757, 1563047,0) , 
(20210513, 750, 762, 731, 747, 864973,2.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 61800, 62500, 59500, 60400, 40746,0) , 
(20210513, 59100, 59600, 57900, 58000, 45515,3.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1070, 1070, 1020, 1025, 439395,0) , 
(20210513, 1010, 1025, 997, 1005, 586224,3.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_184230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1445, 1450, 1405, 1445, 299165,0) , 
(20210513, 1400, 1420, 1375, 1385, 382201,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_040610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2750, 2785, 2635, 2650, 230037,0) , 
(20210513, 2605, 2720, 2595, 2650, 176600,3.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_255220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2440, 2440, 2330, 2375, 708098,0) , 
(20210513, 2300, 2380, 2285, 2350, 366957,1.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 328000, 330500, 315200, 318000, 52907,0) , 
(20210513, 310800, 320500, 310700, 315400, 46881,15.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006125" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43450, 44700, 43200, 43500, 8020,0) , 
(20210513, 43000, 43300, 42000, 42500, 5294,1.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 55900, 55900, 54200, 54600, 63831,0) , 
(20210513, 54200, 55300, 53400, 54100, 49068,10.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12550, 12700, 12100, 12300, 437781,0) , 
(20210513, 12050, 13500, 11900, 13050, 1304562,0.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_302440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 148000, 152500, 143000, 144000, 725156,0) , 
(20210513, 139000, 149000, 138000, 145500, 529703,2.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_326030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 108000, 114500, 107000, 107500, 860584,0) , 
(20210513, 106500, 109000, 105000, 108000, 301770,7.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_224020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1580, 1580, 1580, 1580, 1,0) , 
(20210513, 1580, 1580, 1580, 1580, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2060, 2065, 2055, 2065, 2047,0) , 
(20210513, 2065, 2065, 2055, 2060, 5258,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_337450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2145, 2145, 2120, 2145, 207,0) , 
(20210513, 2140, 2140, 2140, 2140, 2,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_340350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2080, 2110, 2080, 2110, 2189,0) , 
(20210513, 2105, 2105, 2085, 2100, 111,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 123000, 123500, 119000, 119500, 8272196,0) , 
(20210513, 116000, 118500, 115500, 117500, 5944713,49.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2375, 2375, 2235, 2270, 1560664,0) , 
(20210513, 2225, 2295, 2170, 2235, 562920,1.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11650, 11950, 11400, 11550, 48304,0) , 
(20210513, 11500, 11700, 11450, 11600, 47882,55.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12050, 12100, 11650, 11900, 137876,0) , 
(20210513, 11650, 11950, 11500, 11850, 116178,2.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_234300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6840, 6850, 6560, 6750, 345675,0) , 
(20210513, 6690, 6690, 6410, 6470, 248627,1.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18800, 19000, 18200, 18500, 97037,0) , 
(20210513, 18100, 18600, 18000, 18100, 91451,6.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_098660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3470, 3490, 3365, 3470, 159619,0) , 
(20210513, 3410, 3460, 3340, 3410, 84526,3.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8370, 8550, 8230, 8320, 145002,0) , 
(20210513, 8160, 8570, 8160, 8360, 333438,2.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_237690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 122500, 122700, 114800, 118600, 653987,0) , 
(20210513, 123800, 125000, 114000, 114000, 671763,1.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5390, 5470, 5200, 5280, 149884,0) , 
(20210513, 5220, 5270, 5080, 5130, 80700,0.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_288620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31750, 31750, 30500, 30900, 31035,0) , 
(20210513, 30100, 30500, 29500, 30000, 31229,4.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7660, 7880, 7470, 7700, 57985,0) , 
(20210513, 7450, 7880, 7450, 7800, 96011,1.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12000, 12050, 11200, 11400, 948835,0) , 
(20210513, 11050, 11250, 10700, 10800, 746911,1.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1305, 1315, 1265, 1310, 641347,0) , 
(20210513, 1275, 1345, 1260, 1320, 1176267,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4440, 4500, 4350, 4370, 255561,0) , 
(20210513, 4370, 4370, 4150, 4165, 403103,1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3640, 3650, 3535, 3580, 344491,0) , 
(20210513, 3540, 3645, 3505, 3560, 506860,0.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1430, 1510, 1400, 1485, 1757431,0) , 
(20210513, 1440, 1605, 1430, 1525, 7544160,0.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24450, 25000, 23900, 24100, 86445,0) , 
(20210513, 23500, 23900, 22950, 23100, 158220,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7130, 7130, 6460, 6800, 291572,0) , 
(20210513, 6620, 7040, 6550, 6820, 164784,1.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8070, 8080, 7780, 7930, 293964,0) , 
(20210513, 7790, 8060, 7780, 7820, 124201,10.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20900, 21350, 20800, 21350, 226567,0) , 
(20210513, 20850, 21750, 20550, 20750, 226230,5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_203400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14000, 14000, 12800, 13450, 27638,0) , 
(20210513, 13500, 14800, 12200, 13950, 42142,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_195990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1415, 1555, 1330, 1550, 59232406,0) , 
(20210513, 1570, 1630, 1420, 1500, 84268896,6.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43200, 43300, 42250, 42650, 819,0) , 
(20210513, 43500, 46100, 43200, 46000, 16756,3.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_322190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1700, 1700, 1540, 1695, 6261,0) , 
(20210513, 1875, 1875, 1505, 1685, 7896,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15750, 16150, 15450, 15500, 308734,0) , 
(20210513, 15150, 15950, 15000, 15650, 347754,6.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32500, 33600, 32050, 33000, 155400,0) , 
(20210513, 32400, 32750, 31150, 31850, 150879,7.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 4480, 0,0) , 
(20210513, 0, 0, 0, 4480, 0,11.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 543, 0,0) , 
(20210513, 0, 0, 0, 543, 0,0.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_312610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10050, 10150, 9650, 9850, 188847,0) , 
(20210513, 9580, 9920, 9580, 9600, 129285,0.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1415, 1435, 1405, 1425, 194046,0) , 
(20210513, 1420, 1560, 1400, 1505, 1001233,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_234070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 17600, 0,0) , 
(20210513, 0, 0, 0, 17600, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12800, 15900, 12150, 15900, 1582061,0) , 
(20210513, 15450, 19700, 13550, 13800, 2173334,0.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12150, 13100, 12150, 12200, 369823,0) , 
(20210513, 11900, 12400, 11650, 12100, 146041,3.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6210, 6260, 6040, 6070, 164460,0) , 
(20210513, 6020, 6110, 5990, 6030, 92364,8.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3605, 3700, 2935, 3005, 35683813,0) , 
(20210513, 2970, 3145, 2740, 2770, 20379570,3.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17000, 17150, 16150, 16450, 103521,0) , 
(20210513, 16250, 16500, 15950, 16200, 85638,5.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5990, 6090, 5740, 5900, 165498,0) , 
(20210513, 5800, 5940, 5720, 5840, 201980,1.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10700, 10900, 10300, 10500, 1418276,0) , 
(20210513, 10100, 10800, 9990, 10150, 1610320,1.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12850, 12850, 12250, 12300, 6717,0) , 
(20210513, 12650, 12650, 12200, 12500, 1027,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_176440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1920, 0,0) , 
(20210513, 0, 0, 0, 1920, 0,13.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_028300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32900, 32950, 32000, 32100, 613265,0) , 
(20210513, 31600, 32250, 31450, 31600, 555993,15.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10200, 10250, 9970, 10000, 1085641,0) , 
(20210513, 9850, 10100, 9840, 9920, 911508,6.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15350, 15500, 15100, 15250, 124471,0) , 
(20210513, 15100, 15250, 15000, 15100, 128805,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1810, 1840, 1740, 1805, 3829543,0) , 
(20210513, 1760, 2000, 1730, 1895, 21788115,1.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_239610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42100, 42100, 41150, 41950, 21435,0) , 
(20210513, 41350, 41750, 41150, 41600, 16304,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_353070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2075, 2090, 2065, 2070, 52089,0) , 
(20210513, 2070, 2140, 2070, 2080, 2091,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_353060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2075, 2075, 2065, 2075, 27959,0) , 
(20210513, 2075, 2075, 2060, 2070, 40606,0.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44150, 48550, 44100, 47600, 20954229,0) , 
(20210513, 47800, 50000, 43200, 44450, 28271543,12.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2285, 2330, 2170, 2210, 300487,0) , 
(20210513, 2110, 2175, 2110, 2160, 234664,3.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15500, 15550, 14800, 15050, 84515,0) , 
(20210513, 14650, 18400, 14500, 15700, 1288138,1.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36800, 36900, 35700, 36000, 120781,0) , 
(20210513, 35700, 36750, 35700, 36000, 171656,0.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_224110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39150, 39700, 36950, 37800, 230738,0) , 
(20210513, 37200, 38200, 36050, 36450, 220172,0.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_230980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2110, 2140, 2065, 2075, 324321,0) , 
(20210513, 2055, 2095, 2000, 2000, 327956,0.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5120, 6650, 5000, 6650, 58132971,0) , 
(20210513, 6340, 6500, 5920, 6140, 23408666,2.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2975, 3030, 2875, 2920, 229193,0) , 
(20210513, 2870, 2870, 2800, 2825, 275003,0.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6740, 6740, 6540, 6650, 124000,0) , 
(20210513, 6550, 6650, 6470, 6550, 84556,3.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2035, 0,0) , 
(20210513, 0, 0, 0, 2035, 0,3.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_207490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10250, 10250, 10250, 10250, 5,0) , 
(20210513, 9960, 9960, 9030, 9040, 202,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_262260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43250, 44200, 41850, 42400, 64201,0) , 
(20210513, 41450, 42200, 39750, 40750, 130183,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1285, 1400, 1205, 1220, 59949250,0) , 
(20210513, 1200, 1235, 1185, 1205, 4523083,3.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2220, 2470, 2100, 2115, 103876697,0) , 
(20210513, 2080, 2180, 2070, 2110, 8452861,2.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_109960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 890, 980, 842, 860, 163504787,0) , 
(20210513, 827, 840, 782, 787, 18459144,1.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_244920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8860, 8910, 8550, 8610, 271431,0) , 
(20210513, 8320, 9200, 8300, 8800, 917290,0.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_265520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29500, 29650, 28500, 28950, 186733,0) , 
(20210513, 28150, 28550, 27850, 27950, 195362,13.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15400, 16300, 15150, 16000, 263819,0) , 
(20210513, 15050, 15850, 14800, 15400, 341026,1.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_211270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14050, 14150, 13600, 13650, 101420,0) , 
(20210513, 13300, 13600, 13100, 13100, 90074,0.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27600, 27600, 26250, 26500, 265393,0) , 
(20210513, 25600, 26300, 25300, 25850, 291661,2.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_230240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21050, 21200, 20600, 20700, 36352,0) , 
(20210513, 20300, 20600, 20200, 20200, 35159,1.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 960, 960, 903, 912, 1619009,0) , 
(20210513, 912, 945, 890, 917, 1079118,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_230360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24000, 24200, 23650, 23950, 132380,0) , 
(20210513, 23500, 24050, 23500, 23700, 147084,4.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8790, 9030, 8530, 8740, 493131,0) , 
(20210513, 8520, 8660, 8360, 8480, 72201,1.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_128540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3795, 3825, 3700, 3745, 130205,0) , 
(20210513, 3740, 3740, 3635, 3645, 139288,0.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 74800, 0,0) , 
(20210513, 0, 0, 0, 74800, 0,12.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_247540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 174000, 176000, 170000, 172700, 128637,0) , 
(20210513, 166100, 169900, 162700, 163100, 245399,7.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2755, 2790, 2690, 2720, 355022,0) , 
(20210513, 2670, 2730, 2645, 2660, 415642,1.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4630, 4670, 4490, 4520, 39750,0) , 
(20210513, 4405, 4530, 4385, 4425, 45169,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9900, 9980, 9690, 9840, 49618,0) , 
(20210513, 9820, 10300, 9620, 10050, 106176,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 276, 282, 270, 279, 286529,0) , 
(20210513, 280, 294, 275, 277, 620090,0.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27200, 27450, 26450, 26600, 146364,0) , 
(20210513, 25850, 27050, 25500, 26400, 203769,2.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_173940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5880, 5890, 5750, 5840, 26289,0) , 
(20210513, 5720, 5830, 5720, 5780, 18062,0.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11850, 11850, 11000, 11400, 147244,0) , 
(20210513, 11100, 11200, 10050, 10350, 458868,0.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2000, 2025, 1955, 1980, 1511201,0) , 
(20210513, 1955, 1955, 1830, 1860, 1739928,0.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27600, 27700, 25350, 25700, 1992398,0) , 
(20210513, 25900, 30150, 25250, 26700, 6831149,1.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_205100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5010, 5090, 4830, 4970, 496148,0) , 
(20210513, 4750, 5020, 4745, 4865, 348865,1.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_070300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4055, 4065, 3980, 3980, 61393,0) , 
(20210513, 3900, 3980, 3680, 3905, 81385,17.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14300, 14450, 13600, 13900, 203962,0) , 
(20210513, 13400, 13750, 13300, 13400, 108348,1.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11950, 13800, 11600, 12250, 590993,0) , 
(20210513, 11800, 12650, 11800, 12600, 138467,2.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4910, 5030, 4875, 4920, 301906,0) , 
(20210513, 4860, 4930, 4780, 4815, 255363,0.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_236810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26300, 26350, 24550, 24900, 296568,0) , 
(20210513, 24450, 25250, 23000, 24450, 165607,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17400, 17400, 16350, 16850, 14312,0) , 
(20210513, 16950, 16950, 16400, 16650, 8380,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_333620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20300, 20950, 20100, 20400, 206662,0) , 
(20210513, 20400, 21300, 20000, 20200, 374585,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1010, 1010, 960, 964, 290070,0) , 
(20210513, 1025, 1025, 972, 974, 231216,0.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 848000, 851000, 838000, 847000, 82939,0) , 
(20210513, 846000, 847000, 835000, 841000, 105943,52.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12300, 12650, 11900, 12200, 210620,0) , 
(20210513, 11950, 12550, 11750, 12450, 186183,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14600, 14650, 13800, 14050, 92569,0) , 
(20210513, 13750, 14200, 13450, 13600, 90848,8.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1355, 1400, 1325, 1350, 527473,0) , 
(20210513, 1330, 1350, 1300, 1305, 406180,2.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_238170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1435, 1435, 1300, 1370, 27513,0) , 
(20210513, 1370, 1370, 1310, 1360, 11889,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_224760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 4745, 0,0) , 
(20210513, 0, 0, 0, 4745, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_310840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2220, 2220, 2175, 2210, 37720,0) , 
(20210513, 2195, 2220, 2165, 2210, 10232,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_353190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2950, 2950, 2800, 2880, 39106,0) , 
(20210513, 2910, 2910, 2750, 2765, 97575,0.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_359090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2140, 2140, 2115, 2135, 16499,0) , 
(20210513, 2150, 2150, 2140, 2140, 1979,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_365590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2145, 2145, 2140, 2140, 84,0) , 
(20210513, 2120, 2140, 2120, 2135, 2921,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6380, 6380, 6190, 6250, 10852,0) , 
(20210513, 6150, 6180, 6060, 6130, 18669,1.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 51100, 51100, 50000, 50700, 84798,0) , 
(20210513, 50200, 50500, 49000, 49000, 128281,32.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005945" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11950, 12000, 11600, 11950, 182344,0) , 
(20210513, 11750, 11950, 11500, 11850, 140998,7.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13300, 13300, 12750, 13050, 2163181,0) , 
(20210513, 12750, 13150, 12700, 13000, 1369640,16.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_265740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16700, 16800, 16150, 16300, 53050,0) , 
(20210513, 16000, 16350, 15900, 16150, 27333,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20700, 20950, 19750, 20200, 1224684,0) , 
(20210513, 19750, 21950, 19500, 20400, 3964726,0.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_354200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20950, 20950, 19700, 20050, 112315,0) , 
(20210513, 19650, 19850, 18850, 19200, 85963,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 540, 540, 450, 519, 403,0) , 
(20210513, 575, 575, 555, 559, 2001,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2205, 0,0) , 
(20210513, 0, 0, 0, 2205, 0,1.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_183490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 108800, 108800, 101600, 103000, 301893,0) , 
(20210513, 100100, 104500, 98900, 102000, 172231,12.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_085310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1365, 1400, 1350, 1395, 1059329,0) , 
(20210513, 1365, 1395, 1350, 1370, 585778,2.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_182400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14900, 15200, 14350, 14600, 261336,0) , 
(20210513, 14250, 14850, 14050, 14500, 151990,6.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 614, 623, 600, 608, 869077,0) , 
(20210513, 600, 615, 592, 605, 713815,4.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7890, 7900, 7670, 7770, 89274,0) , 
(20210513, 7550, 7700, 7480, 7690, 132425,2.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_227950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2510, 2705, 2375, 2700, 7180543,0) , 
(20210513, 2760, 2775, 2610, 2640, 5022748,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_198080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4185, 4200, 4100, 4185, 138921,0) , 
(20210513, 4115, 4175, 4075, 4140, 99320,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2150, 2150, 2055, 2065, 224354,0) , 
(20210513, 2030, 2110, 2010, 2075, 177205,40.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5200, 5380, 4860, 4970, 145530,0) , 
(20210513, 4810, 4995, 4460, 4770, 212012,4.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_276240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 648, 648, 648, 648, 10,0) , 
(20210513, 669, 669, 560, 639, 4227,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3555, 3580, 3475, 3475, 549309,0) , 
(20210513, 3395, 3560, 3320, 3525, 611201,16.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_061970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13700, 13750, 12900, 13050, 929875,0) , 
(20210513, 12650, 12950, 12500, 12600, 838532,1.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5390, 5450, 5290, 5350, 39120,0) , 
(20210513, 5350, 5350, 5230, 5290, 41361,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29850, 30200, 29500, 29900, 98390,0) , 
(20210513, 29450, 29500, 28550, 29400, 137217,6.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 86500, 88100, 86100, 86500, 301269,0) , 
(20210513, 84300, 85500, 83500, 84000, 408212,15.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_156100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38200, 38750, 36300, 36650, 162842,0) , 
(20210513, 36000, 36200, 32450, 33000, 386331,4.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_229640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8550, 8560, 8120, 8400, 699277,0) , 
(20210513, 8200, 8480, 8160, 8220, 323465,2.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_311060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2800, 2800, 2800, 2800, 1,0) , 
(20210513, 3220, 3220, 3220, 3220, 1945,2.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10700, 10750, 10400, 10600, 43645,0) , 
(20210513, 10300, 10800, 10300, 10550, 47335,1.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16800, 16850, 16400, 16800, 136391,0) , 
(20210513, 16300, 16950, 16050, 16200, 264019,1.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_297890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19750, 20100, 18900, 19400, 52253,0) , 
(20210513, 18750, 19600, 18000, 18400, 90992,1.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_108670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 106500, 109500, 104000, 106500, 369576,0) , 
(20210513, 103000, 107500, 102000, 104000, 212838,24.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_108675" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52600, 52600, 50000, 51500, 47726,0) , 
(20210513, 49500, 51600, 49000, 50200, 28340,15.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5270, 5270, 5090, 5170, 1272755,0) , 
(20210513, 5110, 5220, 5050, 5090, 904275,4.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1490, 1495, 1435, 1455, 1238867,0) , 
(20210513, 1455, 1615, 1450, 1540, 22828227,1.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_170920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13700, 13800, 13100, 13200, 216402,0) , 
(20210513, 12900, 13300, 12850, 13100, 105958,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7810, 8000, 7650, 7690, 676748,0) , 
(20210513, 7500, 7790, 7430, 7700, 361317,1.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27800, 27800, 27000, 27450, 3548,0) , 
(20210513, 27400, 27700, 27000, 27500, 4272,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1135, 1150, 1100, 1130, 1136284,0) , 
(20210513, 1115, 1125, 1085, 1100, 957313,4.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_097520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46750, 47050, 45400, 46050, 209863,0) , 
(20210513, 44900, 46300, 44550, 45250, 156083,8.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_179290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4860, 5730, 4745, 4840, 3399849,0) , 
(20210513, 4780, 4830, 4650, 4680, 553245,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 75, 0,0) , 
(20210513, 0, 0, 0, 75, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5370, 5440, 5220, 5360, 63265,0) , 
(20210513, 5230, 5440, 5190, 5220, 91252,0.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7860, 7970, 7540, 7800, 850830,0) , 
(20210513, 7650, 7720, 7300, 7440, 792270,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_323230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3545, 3960, 3420, 3550, 1569545,0) , 
(20210513, 3525, 3600, 3415, 3590, 179809,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 4075, 0,0) , 
(20210513, 0, 0, 0, 4075, 0,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11650, 11700, 11100, 11250, 413332,0) , 
(20210513, 11000, 11350, 10900, 11100, 228502,3.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_347890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10050, 10050, 9800, 9800, 124312,0) , 
(20210513, 9610, 9790, 9520, 9750, 87335,1.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28100, 28600, 27400, 28000, 215908,0) , 
(20210513, 27750, 28900, 27550, 28450, 241794,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_259630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13400, 13550, 13100, 13300, 81675,0) , 
(20210513, 13100, 13150, 12750, 13150, 80579,1.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 843, 844, 824, 825, 642505,0) , 
(20210513, 824, 824, 797, 798, 615063,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30100, 30400, 28800, 29200, 88927,0) , 
(20210513, 28300, 29500, 27850, 28000, 65726,18.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4105, 4250, 4100, 4125, 233318,0) , 
(20210513, 4100, 4190, 3750, 3895, 443729,0.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13100, 13150, 12850, 12950, 55390,0) , 
(20210513, 12900, 13100, 12700, 12900, 37050,10.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5280, 5330, 5090, 5180, 696028,0) , 
(20210513, 5150, 5170, 4895, 4945, 382999,52.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5560, 5680, 5470, 5600, 129908,0) , 
(20210513, 5490, 5590, 5430, 5480, 89934,2.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_143540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2730, 2765, 2620, 2685, 557096,0) , 
(20210513, 2600, 2680, 2575, 2600, 548385,2.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_111770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46300, 48200, 44850, 48200, 303290,0) , 
(20210513, 47500, 48200, 46150, 46250, 261571,26.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 54300, 54900, 52200, 54800, 35775,0) , 
(20210513, 53900, 54700, 52200, 53000, 27354,20.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6280, 6400, 6160, 6250, 1069245,0) , 
(20210513, 6170, 6380, 6170, 6260, 820354,4.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 763000, 763000, 734000, 745000, 4311,0) , 
(20210513, 738000, 740000, 699000, 705000, 4929,4.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9540, 9580, 9090, 9140, 236873,0) , 
(20210513, 8980, 9250, 8910, 9020, 141103,5.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6960, 6990, 6720, 6770, 129925,0) , 
(20210513, 6730, 6730, 6600, 6690, 103876,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2070, 2120, 2010, 2050, 2305774,0) , 
(20210513, 1995, 2055, 1985, 1985, 1543638,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_265560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19300, 19350, 18600, 18700, 31787,0) , 
(20210513, 18250, 19050, 18250, 18750, 25308,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1350, 1355, 1275, 1290, 2465965,0) , 
(20210513, 1255, 1290, 1230, 1245, 1409474,2.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3295, 3315, 3180, 3255, 155218,0) , 
(20210513, 3175, 3300, 3120, 3220, 160435,2.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_250930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2645, 2660, 2565, 2585, 322854,0) , 
(20210513, 2545, 2605, 2515, 2555, 298586,0.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18450, 18800, 17700, 18500, 755481,0) , 
(20210513, 18450, 18800, 17400, 17700, 1248957,0.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36550, 37050, 36300, 36700, 2549,0) , 
(20210513, 36050, 36700, 35850, 36250, 1727,14.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14350, 14650, 13850, 14050, 342690,0) , 
(20210513, 13650, 14500, 13650, 14000, 327484,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 729, 734, 709, 718, 1207128,0) , 
(20210513, 705, 717, 699, 701, 1987071,3.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5040, 5130, 4990, 5030, 284648,0) , 
(20210513, 4925, 5050, 4885, 4945, 157734,3.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7470, 7570, 7340, 7440, 112123,0) , 
(20210513, 7300, 7510, 7270, 7420, 127369,4.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 554000, 555000, 540000, 548000, 10408,0) , 
(20210513, 540000, 558000, 538000, 550000, 11254,15.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10300, 10350, 9980, 10000, 185569,0) , 
(20210513, 9870, 10050, 9830, 9900, 149113,2.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_322310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38000, 39150, 37800, 38850, 75605,0) , 
(20210513, 37350, 38300, 36850, 37500, 89932,0.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10800, 11000, 8750, 9000, 8099105,0) , 
(20210513, 8990, 8990, 8520, 8550, 1327516,0.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6480, 6690, 6200, 6330, 1667320,0) , 
(20210513, 6150, 6520, 6110, 6360, 1243766,1.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1560, 1575, 1515, 1535, 1040866,0) , 
(20210513, 1495, 1550, 1485, 1520, 625474,2.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 988, 1010, 966, 1000, 2925817,0) , 
(20210513, 1000, 1005, 965, 971, 1488390,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_271560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 123500, 123500, 120000, 121000, 125784,0) , 
(20210513, 120000, 122500, 118500, 122000, 126350,40.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18400, 18650, 17400, 17800, 601833,0) , 
(20210513, 17400, 18400, 17250, 17900, 497255,5.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6090, 6100, 5910, 6050, 79779,0) , 
(20210513, 5950, 6000, 5840, 5900, 76621,1.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7460, 7470, 7180, 7230, 95524,0) , 
(20210513, 7230, 7530, 7100, 7270, 82013,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4070, 4080, 3985, 3985, 1567411,0) , 
(20210513, 3930, 3970, 3780, 3840, 1282597,0.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18100, 18400, 17800, 18200, 106883,0) , 
(20210513, 17600, 18050, 17250, 17300, 139080,1.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_329020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5800, 5800, 5800, 5800, 1,0) , 
(20210513, 5400, 5600, 5400, 5600, 6,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36550, 37950, 36150, 37500, 271564,0) , 
(20210513, 37050, 37300, 36100, 36400, 198694,7.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3845, 4205, 3820, 3910, 11262441,0) , 
(20210513, 3795, 3900, 3620, 3700, 1336660,1.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 86000, 87300, 85000, 85900, 165636,0) , 
(20210513, 84000, 84800, 81200, 81400, 290319,36.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40600, 41250, 39950, 40450, 71349,0) , 
(20210513, 39500, 40450, 39400, 39650, 51673,5.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26000, 26300, 25000, 25400, 76879,0) , 
(20210513, 24800, 25200, 23900, 24700, 92086,5.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13400, 13500, 12900, 13050, 292165,0) , 
(20210513, 12800, 13200, 12750, 12950, 150143,8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_173130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5310, 5340, 5030, 5170, 133809,0) , 
(20210513, 5090, 5240, 4995, 5180, 120454,4.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2950, 3000, 2920, 2965, 304207,0) , 
(20210513, 2945, 2970, 2920, 2935, 154059,1.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_309930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4510, 4510, 4310, 4375, 165660,0) , 
(20210513, 4300, 4400, 4160, 4220, 126784,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 3890, 0,0) , 
(20210513, 0, 0, 0, 3890, 0,2.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_244460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8630, 9080, 8550, 8730, 367534,0) , 
(20210513, 8610, 8900, 8530, 8640, 206937,1.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42800, 44200, 41800, 42550, 149650,0) , 
(20210513, 41850, 41950, 40000, 40100, 184175,4.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_057540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2240, 2240, 2155, 2160, 335155,0) , 
(20210513, 2150, 2180, 2110, 2135, 203690,1.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8560, 8580, 8290, 8580, 195894,0) , 
(20210513, 8460, 8890, 8360, 8570, 539670,3.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_109080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10950, 10950, 10500, 10800, 45485,0) , 
(20210513, 10500, 10600, 9920, 9990, 101860,2.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_153710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11350, 11350, 11000, 11150, 38702,0) , 
(20210513, 10950, 11250, 10700, 10900, 72747,0.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4600, 4615, 4520, 4520, 21052,0) , 
(20210513, 4490, 4520, 4455, 4495, 22923,0.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_321820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20800, 20800, 20100, 20300, 38367,0) , 
(20210513, 19750, 20800, 19700, 19950, 57058,0.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_057030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7430, 7580, 7200, 7290, 124117,0) , 
(20210513, 7190, 7320, 7070, 7100, 158253,0.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12600, 12650, 12050, 12150, 281109,0) , 
(20210513, 11900, 12200, 11800, 12050, 168632,6.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_232140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6690, 6690, 6450, 6490, 538736,0) , 
(20210513, 6340, 6490, 6220, 6290, 778746,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4420, 4425, 4315, 4330, 212422,0) , 
(20210513, 4235, 4320, 4205, 4220, 312634,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16800, 16800, 16350, 16600, 141338,0) , 
(20210513, 16300, 16650, 16250, 16400, 110410,2.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_155650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8400, 8490, 8280, 8400, 72807,0) , 
(20210513, 8200, 8340, 8110, 8180, 126576,4.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_251370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22200, 22650, 22050, 22400, 110053,0) , 
(20210513, 22200, 22450, 21800, 22300, 90265,0.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3405, 3405, 3200, 3295, 375488,0) , 
(20210513, 3145, 3345, 3120, 3165, 240871,9.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_193250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2070, 2135, 2045, 2080, 671159,0) , 
(20210513, 2050, 2080, 2000, 2025, 348013,0.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_273060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2005, 2020, 1980, 2005, 145673,0) , 
(20210513, 1990, 2020, 1960, 2000, 132441,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9700, 9700, 8810, 9050, 464886,0) , 
(20210513, 8850, 9160, 8730, 8860, 289100,11.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41500, 45000, 41350, 44500, 866475,0) , 
(20210513, 43100, 45050, 43000, 44900, 487363,10.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5880, 5990, 5710, 5990, 900212,0) , 
(20210513, 5840, 6210, 5770, 5860, 2488562,0.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_040300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3825, 3915, 3755, 3910, 49773,0) , 
(20210513, 3840, 3945, 3790, 3915, 18925,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_332570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10350, 10350, 10150, 10250, 115230,0) , 
(20210513, 10100, 10350, 10000, 10050, 160852,0.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9460, 9540, 9200, 9400, 42056,0) , 
(20210513, 9020, 9350, 8900, 9050, 58394,3.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6200, 6230, 6100, 6190, 79446,0) , 
(20210513, 6110, 6210, 6100, 6130, 62909,11.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_316140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11200, 11300, 10850, 11050, 3495281,0) , 
(20210513, 10900, 11250, 10850, 11050, 3472136,26.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11900, 11950, 11600, 11750, 60876,0) , 
(20210513, 11700, 12000, 11550, 11850, 107522,1.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1330, 1350, 1290, 1305, 1521483,0) , 
(20210513, 1290, 1325, 1265, 1295, 1782132,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10050, 11900, 9890, 11350, 41956178,0) , 
(20210513, 10550, 10800, 10100, 10100, 10670309,4.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8680, 8780, 8590, 8750, 32113,0) , 
(20210513, 8590, 8710, 8570, 8580, 26894,0.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_118000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2185, 2200, 2160, 2175, 619091,0) , 
(20210513, 2150, 2180, 2140, 2160, 425461,0.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1910, 0,0) , 
(20210513, 0, 0, 0, 1910, 0,2.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5530, 5560, 5080, 5180, 1871892,0) , 
(20210513, 5030, 5300, 4985, 5180, 1062387,0.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25700, 26950, 25700, 26300, 206623,0) , 
(20210513, 25750, 26900, 25750, 26300, 100825,4.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5900, 6040, 5870, 5980, 135553,0) , 
(20210513, 5890, 6110, 5850, 6060, 185350,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2495, 2630, 2495, 2605, 9297856,0) , 
(20210513, 2520, 2610, 2500, 2555, 2680415,2.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_153490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1600, 1625, 1540, 1560, 404994,0) , 
(20210513, 1560, 1580, 1505, 1540, 359426,1.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3640, 3715, 3570, 3630, 277215,0) , 
(20210513, 3545, 3625, 3400, 3515, 320160,0.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 879, 886, 855, 856, 9886173,0) , 
(20210513, 846, 891, 837, 871, 18431168,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5210, 5250, 4935, 4935, 328305,0) , 
(20210513, 4810, 4975, 4725, 4725, 245108,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39600, 41000, 38650, 40500, 327343,0) , 
(20210513, 39700, 40950, 38550, 38900, 123951,1.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6080, 6080, 5860, 5910, 336001,0) , 
(20210513, 5820, 6010, 5680, 5790, 321252,1.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5150, 5270, 4805, 5040, 121703,0) , 
(20210513, 5010, 5200, 4905, 5140, 36111,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_103840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6340, 6420, 6240, 6280, 269457,0) , 
(20210513, 6180, 6550, 6150, 6430, 662395,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7810, 7820, 7330, 7440, 745529,0) , 
(20210513, 7280, 7530, 7210, 7270, 475103,3.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7050, 7050, 6960, 7040, 56133,0) , 
(20210513, 6960, 7150, 6910, 7130, 73130,0.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28000, 28450, 26800, 27000, 45799,0) , 
(20210513, 26400, 27100, 25800, 26350, 48961,6.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_105840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5290, 5310, 5030, 5130, 292015,0) , 
(20210513, 5040, 5290, 4950, 5210, 364275,1.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2835, 2855, 2800, 2820, 311558,0) , 
(20210513, 2785, 2830, 2750, 2780, 323281,2.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9610, 9650, 9230, 9270, 34019,0) , 
(20210513, 9270, 9380, 9050, 9140, 39119,1.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6020, 6090, 5580, 5580, 183581,0) , 
(20210513, 5410, 5530, 5100, 5400, 102664,1.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2430, 2475, 2340, 2370, 799337,0) , 
(20210513, 2310, 2415, 2305, 2360, 766327,1.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4245, 4345, 4145, 4230, 2210659,0) , 
(20210513, 4205, 4315, 4060, 4160, 1783886,2.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27500, 27500, 24950, 25550, 23557,0) , 
(20210513, 24500, 25300, 24300, 24550, 5371,1.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2425, 2495, 2385, 2430, 319588,0) , 
(20210513, 2400, 2435, 2345, 2390, 392811,0.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46250, 46450, 45400, 45600, 25762,0) , 
(20210513, 45000, 45400, 44500, 45150, 24902,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5180, 5180, 4980, 5050, 104435,0) , 
(20210513, 4990, 5040, 4875, 4940, 108381,4.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36200, 36600, 35600, 35850, 78841,0) , 
(20210513, 35300, 35550, 34050, 34500, 106966,17.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_240810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 50100, 50700, 49150, 50300, 418872,0) , 
(20210513, 48800, 49800, 47900, 47900, 656964,25.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5250, 5390, 5110, 5110, 1057893,0) , 
(20210513, 5090, 5270, 4970, 5110, 1261909,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_074600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28200, 28950, 27650, 28600, 759524,0) , 
(20210513, 27600, 28150, 26000, 26300, 1276423,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19800, 20000, 19100, 19300, 223647,0) , 
(20210513, 18600, 19200, 18500, 18800, 143458,2.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6610, 6690, 6490, 6530, 527609,0) , 
(20210513, 6400, 6540, 6370, 6410, 585792,9.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13900, 14400, 12700, 13350, 68142,0) , 
(20210513, 12850, 13350, 12700, 12800, 32189,2.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_216280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18900, 19000, 18100, 18600, 6160,0) , 
(20210513, 18000, 18700, 18000, 18700, 9227,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2060, 2100, 1865, 2020, 12430,0) , 
(20210513, 2290, 2290, 1900, 2025, 3448,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6540, 6730, 6460, 6590, 260678,0) , 
(20210513, 6470, 6640, 6360, 6440, 210648,1.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1990, 2055, 1960, 1990, 220408,0) , 
(20210513, 1945, 2015, 1940, 1990, 87557,3.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25350, 26000, 24550, 25300, 429125,0) , 
(20210513, 24550, 24850, 23700, 24300, 643271,3.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6040, 6200, 6000, 6040, 68074,0) , 
(20210513, 5980, 6180, 5980, 6060, 80050,0.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3700, 3880, 3570, 3775, 1191999,0) , 
(20210513, 3680, 3980, 3675, 3840, 1166573,0.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4930, 5070, 4865, 4875, 887401,0) , 
(20210513, 4840, 4925, 4805, 4830, 194103,1.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_076080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3870, 4830, 3810, 4345, 34788809,0) , 
(20210513, 4165, 4185, 3900, 3900, 3183709,0.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_196700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2480, 2525, 2325, 2375, 253958,0) , 
(20210513, 2310, 2390, 2250, 2330, 217043,5.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32100, 32400, 31400, 31800, 348940,0) , 
(20210513, 31250, 32350, 30950, 31300, 316149,30.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39150, 39200, 38150, 38550, 20505,0) , 
(20210513, 38400, 38400, 37550, 37550, 18849,24.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5680, 5680, 5280, 5570, 877919,0) , 
(20210513, 5330, 5880, 5330, 5510, 1025448,1.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23000, 23250, 22600, 22900, 152899,0) , 
(20210513, 22500, 22950, 22300, 22500, 158605,2.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_330350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18800, 19500, 18600, 19350, 71971,0) , 
(20210513, 19100, 19300, 18900, 18900, 27261,0.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_348350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27200, 27200, 25500, 25900, 26153,0) , 
(20210513, 25700, 25800, 24000, 25200, 28298,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_112040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 57400, 57500, 52000, 52400, 463361,0) , 
(20210513, 51500, 55700, 51300, 53600, 436037,7.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5930, 6060, 5600, 5760, 156224,0) , 
(20210513, 5570, 5790, 5510, 5710, 109590,0.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13450, 13450, 12900, 13100, 21113,0) , 
(20210513, 12950, 13350, 12550, 13050, 21030,7.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1495, 1495, 1495, 1495, 0,0) , 
(20210513, 1495, 1495, 1495, 1495, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5960, 7440, 5930, 6840, 32128448,0) , 
(20210513, 7040, 7180, 6120, 6360, 11005575,0.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_299900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11250, 11600, 10750, 10850, 894723,0) , 
(20210513, 10450, 10750, 10300, 10350, 609427,1.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1645, 1735, 1605, 1685, 4380700,0) , 
(20210513, 1585, 1630, 1580, 1590, 2470563,1.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_136540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16950, 17050, 16550, 16600, 53500,0) , 
(20210513, 16450, 16800, 16250, 16600, 84921,7.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_320000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2925, 2930, 2795, 2850, 79220,0) , 
(20210513, 2790, 2840, 2755, 2820, 65213,0.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_097800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2470, 2480, 2345, 2375, 453921,0) , 
(20210513, 2360, 2360, 2275, 2295, 498323,3.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4095, 4125, 3900, 3950, 87745,0) , 
(20210513, 3900, 3945, 3765, 3785, 128178,4.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_313760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14550, 14600, 14150, 14550, 12010,0) , 
(20210513, 14200, 14450, 13900, 14100, 16777,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2375, 2460, 2265, 2305, 6390222,0) , 
(20210513, 2260, 2295, 2190, 2225, 3236312,2.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1340, 1345, 1300, 1320, 256851,0) , 
(20210513, 1315, 1345, 1305, 1325, 284805,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 83800, 84000, 79300, 80000, 97089,0) , 
(20210513, 79000, 79500, 76400, 78100, 68333,15.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14350, 14550, 14050, 14500, 469909,0) , 
(20210513, 14100, 14700, 14000, 14600, 664473,5.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4230, 4320, 4090, 4100, 1335703,0) , 
(20210513, 3990, 4070, 3980, 4000, 931146,6.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3925, 4475, 3900, 4045, 16316934,0) , 
(20210513, 4040, 4045, 3885, 3895, 1248725,0.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_203450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4830, 4920, 4690, 4870, 153248,0) , 
(20210513, 4780, 4955, 4745, 4860, 113906,6.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1740, 1750, 1660, 1705, 1547593,0) , 
(20210513, 1665, 1690, 1635, 1645, 1010181,4.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_077500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10700, 10800, 10400, 10550, 124925,0) , 
(20210513, 10300, 10800, 10300, 10800, 192110,47.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7670, 7670, 7400, 7430, 105147,0) , 
(20210513, 7390, 7430, 7130, 7240, 138108,1.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21900, 22000, 21150, 21150, 224537,0) , 
(20210513, 20600, 21150, 20300, 20550, 252322,6.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7010, 7010, 6850, 6870, 49132,0) , 
(20210513, 6800, 6860, 6680, 6700, 51774,2.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_142210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7050, 7050, 6870, 6940, 96797,0) , 
(20210513, 6830, 7350, 6710, 6820, 118551,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_121060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1495, 1495, 1495, 1495, 1,0) , 
(20210513, 1600, 1600, 1595, 1595, 2,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11500, 11550, 10850, 11050, 173523,0) , 
(20210513, 10750, 11100, 10450, 10700, 119668,0.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_206650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46200, 59300, 45900, 55500, 10861770,0) , 
(20210513, 56000, 61500, 53200, 55300, 5234670,3.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12000, 12200, 11850, 11950, 29397,0) , 
(20210513, 11950, 11950, 11550, 11550, 26875,2.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7970, 7980, 7730, 7840, 94890,0) , 
(20210513, 7660, 7820, 7650, 7800, 108401,1.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_264450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20250, 20700, 20150, 20350, 36764,0) , 
(20210513, 20000, 20600, 19950, 20300, 47009,1.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19800, 20450, 19800, 20200, 49215,0) , 
(20210513, 19750, 20250, 19750, 19900, 37065,4.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3600, 3600, 3435, 3490, 151200,0) , 
(20210513, 3430, 3490, 3360, 3470, 77021,15.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4200, 4310, 4090, 4105, 789651,0) , 
(20210513, 4055, 4130, 3960, 4090, 443609,1.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8110, 8150, 7980, 8080, 68642,0) , 
(20210513, 8050, 8250, 7960, 8150, 87306,7.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21800, 22000, 20500, 20700, 77982,0) , 
(20210513, 20350, 20850, 20000, 20450, 32696,2.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 445, 0,0) , 
(20210513, 0, 0, 0, 445, 0,2.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1055, 0,0) , 
(20210513, 0, 0, 0, 1055, 0,1.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4095, 4095, 4000, 4030, 74308,0) , 
(20210513, 4015, 4025, 3955, 3990, 50388,5.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_313750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2110, 2130, 2105, 2125, 9718,0) , 
(20210513, 2100, 2120, 2095, 2105, 20198,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_336060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2145, 2145, 2140, 2145, 634,0) , 
(20210513, 2140, 2140, 2140, 2140, 12,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_340360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2830, 2870, 2770, 2815, 112143,0) , 
(20210513, 2730, 2825, 2715, 2775, 248663,0.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_367460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2085, 2085, 2075, 2080, 8252,0) , 
(20210513, 2080, 2080, 2075, 2080, 2208,0.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_367480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2080, 2090, 2075, 2090, 7076,0) , 
(20210513, 2090, 2090, 2080, 2085, 9830,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003475" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5070, 5100, 4855, 4995, 203377,0) , 
(20210513, 4900, 5110, 4860, 5020, 205361,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4570, 4585, 4380, 4465, 1568249,0) , 
(20210513, 4325, 4530, 4285, 4425, 1191416,63.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_056090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5140, 5490, 5110, 5390, 183509,0) , 
(20210513, 5220, 5830, 5220, 5420, 354381,2.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2440, 0,0) , 
(20210513, 0, 0, 0, 2440, 0,1.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7080, 7230, 6940, 6980, 483465,0) , 
(20210513, 6820, 6950, 6520, 6570, 360899,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_337840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27500, 29700, 27450, 28450, 6325,0) , 
(20210513, 29000, 29000, 27000, 28400, 1537,0.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4360, 4370, 4210, 4215, 103507,0) , 
(20210513, 4095, 4200, 4040, 4105, 97636,3.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000225" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20350, 24300, 18200, 19050, 3588817,0) , 
(20210513, 18200, 18650, 15750, 16350, 683838,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000227" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41900, 48500, 35100, 35750, 115448,0) , 
(20210513, 33600, 34250, 31050, 31850, 30272,0.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10700, 10900, 10050, 10200, 1406840,0) , 
(20210513, 10000, 10150, 9770, 9800, 579725,0.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_340930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21150, 21200, 20300, 20500, 61156,0) , 
(20210513, 20050, 20950, 20000, 20650, 70261,0.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6060, 6100, 5790, 5860, 990919,0) , 
(20210513, 5720, 5910, 5660, 5760, 1087505,9.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_321260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2310, 0,0) , 
(20210513, 0, 0, 0, 2310, 0,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_331380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2170, 0,0) , 
(20210513, 0, 0, 0, 2170, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_373340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2210, 2250, 2175, 2180, 204186,0) , 
(20210513, 2170, 2240, 2165, 2215, 194332,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_056080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4030, 4045, 3930, 3940, 219007,0) , 
(20210513, 3895, 3970, 3860, 3885, 145881,12.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46600, 47300, 45600, 46800, 348998,0) , 
(20210513, 45250, 46250, 43650, 44450, 359999,20.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4825, 4825, 4555, 4605, 1504550,0) , 
(20210513, 4495, 4660, 4430, 4535, 950919,7.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_178780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1730, 0,0) , 
(20210513, 0, 0, 0, 1730, 0,0.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_221800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10950, 10950, 10950, 10950, 0,0) , 
(20210513, 11900, 11900, 11900, 11900, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_179900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18300, 18300, 17450, 17600, 57296,0) , 
(20210513, 17600, 18100, 17300, 17700, 72337,7.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35550, 35550, 33800, 34000, 69425,0) , 
(20210513, 33200, 35250, 33200, 34200, 71252,30.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000105" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 62000, 62000, 61000, 61000, 3166,0) , 
(20210513, 61000, 61000, 60600, 60600, 1718,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 64000, 64400, 62400, 62900, 229183,0) , 
(20210513, 62100, 63200, 61800, 62400, 233735,18.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003465" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2860, 2890, 2850, 2860, 2515,0) , 
(20210513, 2760, 2850, 2760, 2800, 5541,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2780, 2780, 2675, 2720, 155443,0) , 
(20210513, 2660, 2710, 2630, 2690, 87551,3.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_191410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3430, 3575, 3315, 3565, 105834,0) , 
(20210513, 3485, 3485, 3250, 3250, 170163,2.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25100, 25700, 24200, 24550, 673934,0) , 
(20210513, 24000, 24250, 23200, 23300, 182606,5.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2430, 2465, 2295, 2390, 503384,0) , 
(20210513, 2390, 2435, 2345, 2390, 486658,0.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14650, 14800, 13800, 14100, 568122,0) , 
(20210513, 13550, 13850, 13050, 13250, 466982,4.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5290, 5340, 5090, 5150, 414046,0) , 
(20210513, 5000, 5190, 4860, 4935, 318757,0.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5120, 5160, 4880, 4925, 2628798,0) , 
(20210513, 4760, 4890, 4410, 4480, 3246270,0.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1560, 1585, 1515, 1530, 565901,0) , 
(20210513, 1510, 1535, 1480, 1505, 587798,0.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7770, 7860, 7620, 7640, 128616,0) , 
(20210513, 7610, 7950, 7610, 7620, 177999,2.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8010, 8060, 7830, 7940, 206606,0) , 
(20210513, 7830, 8020, 7770, 7840, 147656,1.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_302430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18600, 18900, 18100, 18150, 29897,0) , 
(20210513, 17450, 18050, 17400, 17950, 40748,0.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_279060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2080, 2080, 1930, 1950, 33802,0) , 
(20210513, 2070, 2240, 1955, 2065, 23043,0.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 61000, 61100, 59200, 59500, 73668,0) , 
(20210513, 58800, 59400, 58100, 58800, 54494,30.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44600, 45000, 43600, 43800, 31375,0) , 
(20210513, 42500, 43750, 42450, 42850, 33401,1.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1405, 0,0) , 
(20210513, 0, 0, 0, 1405, 0,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2395, 2420, 2325, 2365, 547954,0) , 
(20210513, 2295, 2345, 2270, 2295, 679644,16.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_344860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3300, 3300, 3300, 3300, 1,0) , 
(20210513, 3500, 3795, 2880, 2900, 458,10.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_246960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14550, 14550, 14100, 14250, 16163,0) , 
(20210513, 14050, 14200, 13850, 14000, 16470,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18000, 18400, 17300, 17950, 87163,0) , 
(20210513, 17750, 18550, 17700, 18200, 70723,2.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_272290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 54000, 54700, 52400, 53300, 147265,0) , 
(20210513, 51900, 52900, 51000, 51600, 136649,13.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5590, 5610, 5430, 5510, 91510,0) , 
(20210513, 5420, 5480, 5330, 5330, 69413,1.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_258610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7790, 8350, 7790, 8150, 247901,0) , 
(20210513, 8240, 8280, 7980, 8080, 141315,1.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_336040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22400, 22650, 22000, 22650, 1953,0) , 
(20210513, 21050, 22950, 21050, 22050, 115,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1020, 1090, 995, 1035, 3221152,0) , 
(20210513, 1000, 1035, 989, 1000, 2238024,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12300, 12400, 11700, 11850, 70338,0) , 
(20210513, 11700, 11850, 11000, 11300, 133355,3.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_264850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2885, 2930, 2835, 2890, 387633,0) , 
(20210513, 2815, 3045, 2805, 2950, 860683,1.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7500, 7530, 7030, 7160, 479768,0) , 
(20210513, 7030, 7120, 6670, 6700, 565223,0.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_164060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11800, 12000, 11700, 12000, 89384,0) , 
(20210513, 11900, 12600, 11650, 12600, 477276,0.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2360, 2390, 2145, 2205, 13933559,0) , 
(20210513, 2190, 2290, 2030, 2075, 12834038,3.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6280, 6280, 6160, 6180, 75983,0) , 
(20210513, 6120, 6160, 6010, 6120, 95878,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_139480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 160000, 160500, 155000, 156500, 274816,0) , 
(20210513, 154000, 157500, 153500, 154500, 241040,31.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2735, 2765, 2615, 2690, 96013,0) , 
(20210513, 2690, 2740, 2580, 2640, 64706,2.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_349720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2090, 2100, 2070, 2100, 24607,0) , 
(20210513, 2105, 2105, 2080, 2105, 19067,1.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_323210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2110, 2130, 2110, 2130, 3628,0) , 
(20210513, 2140, 2140, 2105, 2125, 2152,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8890, 8960, 8660, 8800, 343255,0) , 
(20210513, 8600, 8760, 8500, 8540, 389714,3.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6100, 6860, 6100, 6860, 10,0) , 
(20210513, 6870, 6870, 6870, 6870, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_351330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18300, 18550, 17850, 18050, 81679,0) , 
(20210513, 17800, 17800, 17000, 17250, 100068,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7520, 7620, 7180, 7200, 175791,0) , 
(20210513, 7130, 7470, 7130, 7400, 38754,7.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16000, 17450, 15900, 16300, 3583705,0) , 
(20210513, 16000, 17450, 15650, 16650, 3213972,2.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3965, 3995, 3825, 3880, 348904,0) , 
(20210513, 3810, 3830, 3730, 3735, 409892,2.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13850, 13950, 13000, 13350, 949631,0) , 
(20210513, 12900, 13150, 12800, 13000, 641674,2.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2340, 2720, 2305, 2430, 12800481,0) , 
(20210513, 2435, 2835, 2400, 2660, 9917506,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10000, 10850, 9920, 10700, 601900,0) , 
(20210513, 10500, 11400, 10100, 10100, 499517,3.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 218, 219, 211, 215, 3346464,0) , 
(20210513, 211, 215, 210, 212, 1884184,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_270020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2040, 0,0) , 
(20210513, 0, 0, 0, 2040, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6220, 6280, 6080, 6120, 198505,0) , 
(20210513, 6040, 6260, 5970, 6110, 197792,2.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 430, 490, 413, 454, 162099488,0) , 
(20210513, 456, 474, 448, 456, 62517851,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_341310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7130, 7130, 6900, 7130, 51314,0) , 
(20210513, 7500, 7500, 7000, 7200, 11312,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 8850, 0,0) , 
(20210513, 0, 0, 0, 8850, 0,8.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30600, 30600, 29100, 29800, 215664,0) , 
(20210513, 28850, 29350, 28500, 28800, 170308,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_102710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38050, 38200, 36650, 36900, 206298,0) , 
(20210513, 35900, 37250, 35800, 36350, 155956,8.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11600, 12000, 11300, 11500, 169135,0) , 
(20210513, 11450, 11650, 11200, 11250, 155751,2.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_074610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3480, 3495, 3380, 3430, 373467,0) , 
(20210513, 3385, 3480, 3305, 3430, 307949,0.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_063760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7050, 7190, 6870, 7000, 102385,0) , 
(20210513, 6780, 6950, 6780, 6840, 91123,3.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_087730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 8160, 0,0) , 
(20210513, 0, 0, 0, 8160, 0,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6080, 6080, 5950, 5970, 82925,0) , 
(20210513, 5900, 6010, 5820, 5980, 38578,25.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2780, 0,0) , 
(20210513, 0, 0, 0, 2780, 0,1.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_278990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6170, 6170, 6170, 6170, 0,0) , 
(20210513, 6170, 6170, 6170, 6170, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1585, 0,0) , 
(20210513, 0, 0, 0, 1585, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5010, 5040, 4900, 4915, 257894,0) , 
(20210513, 4845, 4960, 4765, 4870, 236606,0.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19000, 20550, 18400, 20200, 515088,0) , 
(20210513, 19600, 20850, 19150, 19800, 419009,2.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_232530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4100, 4400, 4100, 4390, 1601,0) , 
(20210513, 4390, 4500, 4390, 4500, 6510,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_102460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21800, 23250, 21600, 22300, 743279,0) , 
(20210513, 22150, 23550, 21850, 23000, 849122,0.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 110800, 112200, 109400, 110400, 74026,0) , 
(20210513, 107500, 109200, 104900, 105500, 115195,15.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_294090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 55400, 56700, 53100, 53500, 150313,0) , 
(20210513, 52500, 54200, 51200, 52200, 133050,10.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_245620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4815, 4815, 4720, 4775, 507569,0) , 
(20210513, 4685, 4825, 4665, 4785, 556687,8.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7950, 7960, 7740, 7790, 185145,0) , 
(20210513, 7720, 8030, 7710, 7750, 162567,21.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3680, 3710, 3530, 3585, 1072747,0) , 
(20210513, 3500, 3595, 3480, 3500, 516083,1.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_181340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33800, 35300, 32500, 34350, 357555,0) , 
(20210513, 34400, 38450, 32950, 38200, 422679,2.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11400, 11400, 11050, 11200, 52182,0) , 
(20210513, 11000, 11250, 10900, 11050, 44233,2.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_353810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7450, 7890, 7450, 7670, 2452300,0) , 
(20210513, 7670, 7800, 7430, 7450, 1426145,2.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_350520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5040, 5060, 5030, 5040, 66413,0) , 
(20210513, 5040, 5060, 5010, 5040, 43378,0.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_334890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4985, 4995, 4970, 4980, 199976,0) , 
(20210513, 4980, 5020, 4975, 4995, 452459,2.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_099750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24000, 24400, 23050, 23600, 79289,0) , 
(20210513, 22850, 23850, 22400, 23500, 46905,1.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4925, 5030, 4910, 4935, 1222334,0) , 
(20210513, 4870, 4880, 4745, 4790, 1153555,3.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_160600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 310, 0,0) , 
(20210513, 0, 0, 0, 310, 0,3.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21950, 21950, 21500, 21750, 9126,0) , 
(20210513, 21800, 21850, 21100, 21700, 10278,14.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 841, 962, 815, 881, 319753828,0) , 
(20210513, 884, 913, 865, 875, 99918756,1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_134060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10600, 10800, 10400, 10550, 33855,0) , 
(20210513, 10200, 10400, 10000, 10200, 41409,1.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7980, 8160, 7750, 7820, 1190538,0) , 
(20210513, 7580, 7940, 7400, 7550, 1216596,1.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20000, 20000, 19400, 19750, 1396,0) , 
(20210513, 19300, 19600, 19300, 19600, 757,0.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 253, 0,0) , 
(20210513, 0, 0, 0, 253, 0,2.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1510, 1525, 1455, 1480, 357737,0) , 
(20210513, 1485, 1540, 1455, 1500, 489514,0.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22000, 26000, 21550, 26000, 743843,0) , 
(20210513, 24950, 26600, 24200, 25350, 991236,22.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_352940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12050, 12400, 11900, 12100, 364812,0) , 
(20210513, 11800, 12400, 11700, 12050, 305664,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3160, 3230, 3105, 3180, 535241,0) , 
(20210513, 3125, 3245, 3070, 3105, 552777,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_216400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13100, 13200, 13000, 13100, 3559,0) , 
(20210513, 12800, 13150, 12800, 13000, 1806,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2895, 2895, 2780, 2800, 230577,0) , 
(20210513, 2755, 2815, 2710, 2710, 198252,3.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_277410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2585, 3195, 2480, 2660, 38952853,0) , 
(20210513, 2590, 2835, 2530, 2535, 7719196,1.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13950, 13950, 13550, 13700, 478675,0) , 
(20210513, 13400, 13650, 13300, 13400, 478316,5.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2150, 2170, 2080, 2095, 131719,0) , 
(20210513, 2050, 2100, 2050, 2090, 102130,1.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3290, 3295, 2825, 2990, 4877534,0) , 
(20210513, 2970, 3290, 2895, 3185, 4003004,3.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3550, 3560, 3420, 3475, 259935,0) , 
(20210513, 3410, 3465, 3395, 3435, 186737,4.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21700, 22150, 20600, 21250, 360895,0) , 
(20210513, 20500, 22000, 20500, 21750, 365828,2.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28050, 28100, 27600, 27800, 4131,0) , 
(20210513, 27500, 27800, 27200, 27350, 2655,1.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_211050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11350, 11400, 10650, 11350, 131,0) , 
(20210513, 11300, 11350, 10500, 11350, 1845,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2560, 2565, 2465, 2495, 793083,0) , 
(20210513, 2440, 2455, 2390, 2415, 893581,1.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_216050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 54800, 58900, 54800, 58500, 244874,0) , 
(20210513, 57600, 57900, 56100, 56800, 61574,17.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30200, 30200, 29150, 29450, 64866,0) , 
(20210513, 28950, 29650, 28650, 29450, 48310,22.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_119610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23450, 23850, 23100, 23500, 66016,0) , 
(20210513, 23050, 23350, 22800, 23200, 84334,6.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1710, 1720, 1690, 1710, 73872,0) , 
(20210513, 1650, 1730, 1650, 1710, 46978,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_129260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4850, 4885, 4545, 4730, 1264665,0) , 
(20210513, 4605, 4740, 4500, 4555, 554824,0.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_240340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 999, 0,0) , 
(20210513, 0, 0, 0, 999, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4685, 4720, 4550, 4635, 1849172,0) , 
(20210513, 4545, 4705, 4480, 4700, 2040076,7.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12100, 12100, 11600, 11750, 139987,0) , 
(20210513, 11500, 11750, 11300, 11500, 90127,2.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23700, 23900, 22500, 22800, 182660,0) , 
(20210513, 22000, 22650, 21900, 22450, 145197,5.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_189300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 61200, 61400, 59000, 59000, 98630,0) , 
(20210513, 57200, 59000, 56500, 56700, 104156,1.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_150840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2405, 2405, 2290, 2345, 401133,0) , 
(20210513, 2270, 2355, 2250, 2345, 395341,0.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23950, 24050, 22650, 22900, 278448,0) , 
(20210513, 22450, 23800, 22150, 23000, 177027,10.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11950, 12850, 11950, 12350, 293120,0) , 
(20210513, 12000, 12700, 11800, 12400, 98579,10.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_175140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8050, 8360, 7910, 8330, 156361,0) , 
(20210513, 8320, 8550, 8200, 8300, 128422,1.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21450, 21550, 20650, 21150, 4644,0) , 
(20210513, 20950, 20950, 20750, 20750, 2690,16.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13600, 14150, 12700, 13050, 764530,0) , 
(20210513, 12700, 13150, 12300, 12550, 256198,0.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7590, 7590, 7270, 7490, 125999,0) , 
(20210513, 7400, 7570, 7330, 7480, 71396,1.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 973, 0,0) , 
(20210513, 0, 0, 0, 973, 0,1.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13000, 13250, 12350, 12450, 175603,0) , 
(20210513, 12300, 12700, 11850, 12450, 117811,0.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_249420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15700, 15750, 15400, 15700, 69703,0) , 
(20210513, 15550, 15650, 15400, 15400, 53096,4.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14450, 14500, 14000, 14200, 19850,0) , 
(20210513, 14000, 14500, 13800, 14100, 15005,2.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2470, 2520, 2300, 2325, 1607082,0) , 
(20210513, 2260, 2360, 2180, 2300, 906105,63.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 88100, 88500, 86600, 88100, 9022,0) , 
(20210513, 87200, 87600, 86500, 87400, 2692,2.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6110, 6280, 5690, 5690, 5302983,0) , 
(20210513, 5800, 7090, 5780, 6550, 47069761,0.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 112000, 112000, 107500, 109000, 5763,0) , 
(20210513, 106000, 110000, 104000, 108500, 6085,8.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2200, 2280, 2140, 2210, 4225014,0) , 
(20210513, 2170, 2215, 2130, 2150, 1828380,1.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 685, 0,0) , 
(20210513, 0, 0, 0, 685, 0,2.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007575" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44500, 44550, 42800, 43900, 16576,0) , 
(20210513, 43000, 44000, 42100, 42100, 10811,0.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39600, 39700, 38200, 38400, 358939,0) , 
(20210513, 38000, 39500, 36900, 38400, 447960,8.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15800, 16050, 15600, 16050, 3007,0) , 
(20210513, 15750, 16100, 15750, 16100, 6892,1.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4135, 4140, 4000, 4095, 103935,0) , 
(20210513, 4005, 4125, 3960, 4015, 80335,1.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_081000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41950, 42600, 40850, 41150, 45296,0) , 
(20210513, 40250, 40950, 39900, 40100, 91626,1.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4815, 4815, 4630, 4740, 192615,0) , 
(20210513, 4690, 4730, 4545, 4560, 172565,3.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 67300, 67500, 65300, 65900, 211622,0) , 
(20210513, 63700, 66200, 63100, 64200, 420100,9.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_103590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4140, 4140, 3980, 4030, 295255,0) , 
(20210513, 3970, 4075, 3935, 4000, 227294,2.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6260, 6340, 6110, 6260, 251846,0) , 
(20210513, 6200, 6460, 6120, 6340, 234080,7.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5500, 5570, 5390, 5400, 273687,0) , 
(20210513, 5350, 5370, 5260, 5320, 243318,1.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27350, 27700, 26700, 27050, 76198,0) , 
(20210513, 26600, 27550, 26500, 27250, 65845,0.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7550, 7630, 7130, 7340, 324442,0) , 
(20210513, 7130, 7520, 6780, 6840, 664212,12.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8780, 8820, 8570, 8570, 42832,0) , 
(20210513, 8450, 8780, 8380, 8600, 26300,0.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_254120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2175, 2200, 2115, 2145, 139537,0) , 
(20210513, 2120, 2170, 2100, 2155, 92428,9.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_221610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 339, 0,0) , 
(20210513, 0, 0, 0, 339, 0,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_219550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 835, 0,0) , 
(20210513, 0, 0, 0, 835, 0,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1650, 1655, 1580, 1600, 1815387,0) , 
(20210513, 1570, 1600, 1550, 1575, 947281,4.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_234920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4450, 4740, 4445, 4605, 244619,0) , 
(20210513, 4500, 4585, 4400, 4425, 65112,1.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_289220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41500, 44400, 40100, 40750, 684167,0) , 
(20210513, 38750, 40150, 38700, 38800, 179813,0.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10800, 10900, 10350, 10500, 389860,0) , 
(20210513, 10150, 10850, 10050, 10600, 546116,1.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19400, 19400, 18300, 18950, 194113,0) , 
(20210513, 18400, 18800, 18250, 18300, 130934,10.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_174880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4135, 4260, 4135, 4150, 108201,0) , 
(20210513, 4130, 4130, 3980, 4025, 113628,0.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1045, 1050, 1005, 1020, 700526,0) , 
(20210513, 1015, 1035, 995, 1015, 641849,2.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40450, 41350, 39900, 40600, 5233,0) , 
(20210513, 39900, 40750, 39850, 40450, 3371,0.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_110020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10600, 10700, 10450, 10650, 30631,0) , 
(20210513, 10500, 10700, 10500, 10650, 42401,2.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3460, 3500, 3340, 3385, 297055,0) , 
(20210513, 3310, 3490, 3310, 3410, 385415,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_022220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2365, 2365, 2265, 2300, 792376,0) , 
(20210513, 2280, 2510, 2200, 2375, 4208391,5.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_040420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7180, 7420, 7150, 7300, 315579,0) , 
(20210513, 7210, 7340, 7150, 7260, 117807,2.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2035, 2065, 1955, 1955, 93705,0) , 
(20210513, 1925, 1950, 1910, 1930, 43734,0.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 15950, 0,0) , 
(20210513, 0, 0, 0, 15950, 0,1.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7800, 8090, 7680, 8000, 80182,0) , 
(20210513, 7720, 8060, 7720, 7900, 54756,4.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 98700, 100000, 97000, 97500, 364601,0) , 
(20210513, 95600, 103500, 95500, 96700, 438030,6.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1985, 1985, 1835, 1890, 3318359,0) , 
(20210513, 1815, 1925, 1745, 1775, 3828891,0.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10650, 10750, 10400, 10500, 137794,0) , 
(20210513, 10500, 10650, 10350, 10450, 91468,7.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_361390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46200, 47100, 43000, 45250, 69931,0) , 
(20210513, 44450, 47400, 44000, 45000, 35207,0.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3350, 3350, 3140, 3295, 557,0) , 
(20210513, 3335, 3335, 3335, 3335, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16300, 16300, 15250, 15400, 274195,0) , 
(20210513, 15300, 15300, 14500, 14850, 338237,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9200, 9420, 8990, 9300, 71336,0) , 
(20210513, 9200, 9440, 8940, 9180, 107664,8.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_159580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13750, 14350, 13600, 13750, 341404,0) , 
(20210513, 13500, 14800, 13400, 13850, 925606,0.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_147830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7910, 7950, 7670, 7740, 86708,0) , 
(20210513, 7730, 7980, 7640, 7740, 163071,2.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6870, 6870, 6560, 6650, 209420,0) , 
(20210513, 6770, 7300, 6650, 6650, 1778816,2.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28050, 28250, 27100, 27600, 127145,0) , 
(20210513, 26850, 27250, 26000, 26300, 313403,4.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5140, 5230, 5050, 5070, 137760,0) , 
(20210513, 5010, 5090, 4950, 5030, 136420,1.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18000, 18000, 17300, 17400, 104557,0) , 
(20210513, 17150, 17700, 16800, 17050, 84321,3.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7310, 7350, 7220, 7280, 14201,0) , 
(20210513, 7120, 7280, 7120, 7240, 14258,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_287410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4680, 4750, 4495, 4560, 612634,0) , 
(20210513, 4530, 4735, 4475, 4570, 715447,0.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_137950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8550, 8560, 7700, 8120, 720196,0) , 
(20210513, 7980, 8490, 7880, 8310, 917565,2.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8360, 8380, 8160, 8220, 165966,0) , 
(20210513, 8020, 8180, 8010, 8110, 145470,2.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_348950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5100, 5140, 5080, 5140, 377766,0) , 
(20210513, 5140, 5150, 5100, 5150, 622716,4.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_204270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10150, 10200, 9960, 10050, 206713,0) , 
(20210513, 10000, 10000, 9850, 9910, 179237,1.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_194370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22750, 24250, 21400, 23550, 241536,0) , 
(20210513, 22900, 23750, 21400, 21750, 191230,0.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_026040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3060, 3365, 2920, 3180, 1523095,0) , 
(20210513, 3070, 3190, 3035, 3070, 443972,1.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_126880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7050, 7100, 6900, 6980, 209145,0) , 
(20210513, 6810, 6950, 6750, 6770, 260853,0.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_322510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7820, 7820, 7600, 7680, 55619,0) , 
(20210513, 7600, 7780, 7530, 7600, 55023,0.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1255, 1405, 1255, 1385, 3278876,0) , 
(20210513, 1380, 1435, 1350, 1380, 1421633,2.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3810, 3825, 3625, 3715, 196194,0) , 
(20210513, 3635, 3700, 3555, 3590, 188444,2.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33250, 34000, 32750, 33900, 602064,0) , 
(20210513, 33150, 34100, 32850, 33450, 470089,20.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2160, 0,0) , 
(20210513, 0, 0, 0, 2160, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2340, 2385, 2250, 2305, 549874,0) , 
(20210513, 2280, 2350, 2210, 2295, 571232,2.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 47200, 47900, 44850, 45800, 153486,0) , 
(20210513, 45000, 45700, 44150, 44900, 118042,9.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7900, 8000, 7540, 7710, 170237,0) , 
(20210513, 7500, 7940, 7460, 7720, 316673,1.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5090, 5100, 4970, 5020, 94182,0) , 
(20210513, 4995, 5100, 4900, 5030, 86779,9.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23450, 23450, 22650, 23100, 416685,0) , 
(20210513, 22750, 23150, 22700, 22700, 361933,32.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3320, 3340, 3280, 3290, 427090,0) , 
(20210513, 3265, 3330, 3235, 3260, 235244,0.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_271980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44300, 44350, 42750, 42950, 77381,0) , 
(20210513, 41750, 42800, 41750, 42300, 57228,2.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9190, 9390, 8660, 8810, 78878,0) , 
(20210513, 8800, 8800, 8580, 8680, 29496,4.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_199820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26000, 26250, 25550, 26250, 68187,0) , 
(20210513, 25600, 26300, 25600, 26300, 87445,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3610, 3680, 3510, 3570, 451758,0) , 
(20210513, 3445, 3550, 3400, 3460, 527743,1.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8600, 8650, 8180, 8370, 72631,0) , 
(20210513, 8130, 8370, 8110, 8200, 73789,2.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25100, 25300, 24700, 24900, 26881,0) , 
(20210513, 23950, 25100, 23700, 24900, 39415,9.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6730, 6840, 6480, 6790, 1162539,0) , 
(20210513, 6610, 6950, 6550, 6700, 1392133,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7050, 7060, 6830, 6930, 202512,0) , 
(20210513, 6810, 7970, 6780, 7210, 10487230,1.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25050, 25050, 24300, 24400, 271903,0) , 
(20210513, 24000, 25200, 23700, 25050, 362483,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_216080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39100, 39750, 37850, 38400, 215519,0) , 
(20210513, 37500, 38100, 35800, 36800, 294717,2.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_229000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23550, 24100, 22450, 23350, 220544,0) , 
(20210513, 22650, 23650, 21950, 22300, 119839,1.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21850, 21850, 20650, 21400, 266300,0) , 
(20210513, 20700, 21700, 20700, 21100, 171204,6.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1625, 1655, 1595, 1620, 1661855,0) , 
(20210513, 1595, 1630, 1570, 1600, 1077626,1.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 909, 916, 890, 912, 387223,0) , 
(20210513, 894, 907, 887, 889, 493543,2.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9160, 9270, 9110, 9120, 92681,0) , 
(20210513, 9100, 9350, 9050, 9110, 73353,1.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004910" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9750, 9870, 8980, 9170, 2658925,0) , 
(20210513, 8900, 9050, 8590, 8700, 764795,1.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 57300, 57500, 55600, 55800, 4447,0) , 
(20210513, 55600, 56100, 54600, 55500, 4885,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24200, 24400, 22900, 23250, 124546,0) , 
(20210513, 22750, 23550, 22600, 23100, 97137,1.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 94200, 94400, 90500, 92100, 6763,0) , 
(20210513, 91700, 91700, 88300, 91100, 6713,2.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_120030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 160000, 161000, 153500, 159000, 37341,0) , 
(20210513, 157500, 163500, 153500, 156500, 68183,3.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4325, 4365, 4205, 4240, 158333,0) , 
(20210513, 4240, 4270, 4180, 4210, 132841,1.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10050, 10750, 10000, 10150, 1530152,0) , 
(20210513, 9900, 10200, 9800, 9900, 555527,7.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1200, 1215, 1025, 1085, 40881449,0) , 
(20210513, 1040, 1110, 998, 1000, 12759354,1.98)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 192000, 192000, 184000, 186000, 396,0) , 
(20210513, 185500, 190000, 182000, 187500, 479,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_063160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 66400, 68900, 65000, 66100, 287021,0) , 
(20210513, 64800, 65600, 62200, 62400, 221837,2.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_185750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 133000, 134000, 130000, 131000, 62434,0) , 
(20210513, 128500, 131000, 128000, 129000, 61190,8.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 111500, 111500, 108000, 110000, 21224,0) , 
(20210513, 108500, 110500, 107500, 110500, 15947,10.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1055, 0,0) , 
(20210513, 0, 0, 0, 1055, 0,3.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12900, 13150, 12800, 13050, 523980,0) , 
(20210513, 12750, 13200, 12500, 12650, 882930,11.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_185190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2605, 2950, 2605, 2950, 2166,0) , 
(20210513, 2955, 2955, 2955, 2955, 1092,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_158300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 11900, 0,0) , 
(20210513, 0, 0, 0, 11900, 0,2.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5200, 5200, 5200, 5200, 0,0) , 
(20210513, 5200, 5200, 5200, 5200, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4405, 4440, 4235, 4435, 154386,0) , 
(20210513, 4305, 4460, 4240, 4395, 98014,2.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_070960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5520, 5530, 5160, 5300, 857948,0) , 
(20210513, 5170, 5340, 5120, 5210, 517731,2.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11000, 12000, 10500, 12000, 50,0) , 
(20210513, 11600, 12500, 11600, 11900, 723,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_187420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9410, 9470, 9080, 9240, 222313,0) , 
(20210513, 9000, 9440, 8980, 9150, 222029,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_189350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3395, 3395, 2580, 3375, 3,0) , 
(20210513, 2870, 3340, 2870, 2870, 1019,23.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 51900, 51900, 51600, 51700, 1835,0) , 
(20210513, 51700, 52400, 51700, 52000, 2076,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 368500, 377000, 344500, 353500, 99693,0) , 
(20210513, 343000, 358500, 334500, 335500, 97161,11.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1130, 1155, 1070, 1105, 843515,0) , 
(20210513, 1075, 1115, 1075, 1100, 930602,2.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_239340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5860, 5860, 5700, 5720, 169265,0) , 
(20210513, 5680, 5900, 5600, 5770, 162594,0.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10400, 10400, 10000, 10250, 2614280,0) , 
(20210513, 10100, 10900, 10050, 10650, 6823106,13.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_072020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18250, 18250, 17800, 17850, 122058,0) , 
(20210513, 17600, 18200, 17500, 18050, 164679,1.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17500, 21850, 16850, 18900, 5967878,0) , 
(20210513, 18800, 22100, 18750, 18900, 3978262,0.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_228760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14300, 14450, 13900, 14150, 138743,0) , 
(20210513, 13700, 14000, 13550, 13850, 117640,0.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_314130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42350, 42350, 40000, 40200, 145872,0) , 
(20210513, 39200, 40000, 38550, 38800, 94288,0.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 90200, 97900, 89300, 95200, 642413,0) , 
(20210513, 93900, 97300, 92500, 95100, 211549,23.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6380, 6760, 6360, 6450, 5221365,0) , 
(20210513, 6310, 6360, 6190, 6310, 710731,0.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7750, 7750, 7380, 7530, 66458,0) , 
(20210513, 7380, 7510, 7210, 7480, 49294,7.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_303030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3755, 3780, 3665, 3695, 1335069,0) , 
(20210513, 3690, 3770, 3670, 3710, 1756392,0.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1205, 0,0) , 
(20210513, 0, 0, 0, 1205, 0,5.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7320, 7400, 7040, 7120, 47747,0) , 
(20210513, 7020, 7330, 6910, 7170, 56099,2.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 620, 0,0) , 
(20210513, 0, 0, 0, 620, 0,9.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_299480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1330, 1370, 1330, 1370, 804,0) , 
(20210513, 1300, 1560, 1300, 1520, 118,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21150, 21150, 20000, 20250, 252137,0) , 
(20210513, 19800, 20700, 19650, 20350, 179955,17.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2975, 2975, 2790, 2870, 1469248,0) , 
(20210513, 2790, 2865, 2775, 2810, 767937,3.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 37350, 37350, 36100, 36700, 712055,0) , 
(20210513, 35950, 36900, 35800, 36850, 483445,14.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1910, 1975, 1885, 1905, 591898,0) , 
(20210513, 1865, 1895, 1845, 1870, 181199,3.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_028150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 151000, 151200, 147300, 148700, 20148,0) , 
(20210513, 146200, 147900, 145400, 146300, 25087,24.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_130500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6280, 6350, 6180, 6220, 112283,0) , 
(20210513, 6150, 6220, 6040, 6150, 77813,0.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_119850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5820, 5820, 5650, 5740, 70992,0) , 
(20210513, 5620, 5720, 5580, 5630, 90997,0.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_270520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4605, 4640, 4400, 4470, 842966,0) , 
(20210513, 4370, 4515, 4270, 4390, 380201,3.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 934, 937, 903, 920, 289982,0) , 
(20210513, 919, 932, 900, 923, 364290,2.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_204840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1620, 1670, 1570, 1600, 710006,0) , 
(20210513, 1545, 1615, 1545, 1570, 472898,0.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7930, 7930, 7520, 7640, 260724,0) , 
(20210513, 7550, 7670, 7460, 7480, 126769,55.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42900, 43600, 42550, 42800, 20769,0) , 
(20210513, 42400, 43000, 42050, 42500, 14202,1.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_135160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2430, 2515, 2425, 2510, 9982,0) , 
(20210513, 2490, 2490, 2400, 2450, 3169,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_111820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2470, 0,0) , 
(20210513, 0, 0, 0, 2470, 0,15.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 306, 0,0) , 
(20210513, 0, 0, 0, 306, 0,0.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6840, 6860, 6500, 6620, 102230,0) , 
(20210513, 6470, 6720, 6450, 6630, 67721,33.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13100, 13250, 12700, 12800, 286850,0) , 
(20210513, 12450, 12800, 12350, 12550, 270926,9.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_219750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5930, 6160, 5650, 5760, 383617,0) , 
(20210513, 5600, 6150, 5450, 5950, 297926,2.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5380, 5410, 5130, 5210, 151987,0) , 
(20210513, 5160, 5330, 5050, 5140, 134497,3.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32450, 32800, 32300, 32700, 4610,0) , 
(20210513, 32150, 32850, 32150, 32500, 4644,10.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_109820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13500, 14200, 13250, 13450, 1126467,0) , 
(20210513, 13450, 13750, 13150, 13550, 440852,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6540, 6590, 6320, 6510, 146462,0) , 
(20210513, 6370, 6570, 6350, 6470, 95271,3.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15850, 15950, 15100, 15350, 279529,0) , 
(20210513, 14850, 15500, 14850, 14850, 310533,4.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5790, 5790, 5530, 5630, 202213,0) , 
(20210513, 5510, 5640, 5440, 5530, 196124,4.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6250, 6250, 6090, 6130, 35717,0) , 
(20210513, 5950, 6070, 5950, 6050, 38843,1.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3760, 3760, 3660, 3685, 77305,0) , 
(20210513, 3585, 3705, 3585, 3685, 87064,2.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_100250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3185, 3185, 3080, 3130, 273999,0) , 
(20210513, 3060, 3165, 3055, 3095, 174915,3.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4365, 4380, 4210, 4240, 102535,0) , 
(20210513, 4140, 4255, 4130, 4155, 73597,2.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_272450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23100, 23650, 22500, 23450, 699097,0) , 
(20210513, 22850, 24500, 22800, 24100, 835109,1.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18300, 20450, 17450, 19050, 9706781,0) , 
(20210513, 19250, 19700, 18250, 19100, 2778019,11.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_250030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11950, 11950, 11150, 11550, 482,0) , 
(20210513, 11250, 11600, 11000, 11500, 724,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002785" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7500, 9500, 7500, 7800, 247633,0) , 
(20210513, 7300, 7600, 7300, 7370, 53345,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002787" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15550, 19550, 15550, 16150, 180442,0) , 
(20210513, 15100, 15900, 15100, 15400, 58036,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2465, 2500, 2450, 2455, 1647195,0) , 
(20210513, 2420, 2545, 2395, 2400, 2042024,0.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_233990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 880, 920, 832, 895, 34635,0) , 
(20210513, 978, 978, 790, 964, 72,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_085660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18450, 18500, 18000, 18200, 320791,0) , 
(20210513, 17900, 18200, 17800, 17900, 296679,7.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1670, 1685, 1660, 1675, 676475,0) , 
(20210513, 1655, 1670, 1635, 1635, 681691,21.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1625, 1630, 1535, 1545, 756134,0) , 
(20210513, 1525, 1555, 1495, 1525, 408419,4.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11800, 11850, 11400, 11550, 308667,0) , 
(20210513, 11200, 11650, 11100, 11300, 259589,1.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14250, 14250, 13800, 14150, 95758,0) , 
(20210513, 13900, 14200, 13800, 14050, 93066,4.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_311690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31800, 31800, 30600, 31200, 13258,0) , 
(20210513, 30450, 31000, 30200, 30500, 13091,0.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_278280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 167900, 169000, 164700, 165600, 80220,0) , 
(20210513, 161200, 163800, 159000, 159500, 85767,6.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 70600, 71400, 70200, 70400, 1603,0) , 
(20210513, 70300, 71500, 69500, 70800, 1747,0.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 641, 641, 514, 533, 522,0) , 
(20210513, 533, 535, 533, 535, 300,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28900, 29900, 27900, 28200, 247795,0) , 
(20210513, 27600, 29250, 27500, 28700, 166171,8.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25750, 26300, 24950, 26200, 115705,0) , 
(20210513, 25500, 26750, 25100, 25850, 93206,5.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2260, 2320, 2240, 2260, 49898,0) , 
(20210513, 2230, 2295, 2230, 2270, 39840,0.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1645, 1660, 1610, 1630, 248231,0) , 
(20210513, 1600, 1635, 1600, 1600, 261583,1.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2395, 2415, 2360, 2385, 1930081,0) , 
(20210513, 2325, 2375, 2320, 2340, 1678309,2.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 322, 0,0) , 
(20210513, 0, 0, 0, 322, 0,1.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15600, 15950, 15300, 15800, 299764,0) , 
(20210513, 15500, 15900, 15350, 15400, 184174,0.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2600, 2610, 2480, 2510, 375558,0) , 
(20210513, 2500, 2690, 2425, 2550, 968079,1.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_284620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3975, 3975, 3845, 3900, 176396,0) , 
(20210513, 3840, 3890, 3835, 3885, 324219,4.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_293490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52400, 52400, 50900, 50900, 1153117,0) , 
(20210513, 49900, 50800, 49350, 49850, 721638,7.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 115000, 115500, 112000, 113000, 2558482,0) , 
(20210513, 109000, 111000, 108000, 109500, 4175889,33.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29400, 30150, 29150, 29900, 180105,0) , 
(20210513, 29300, 30250, 29300, 29400, 82802,23.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5390, 5400, 4900, 5080, 1432476,0) , 
(20210513, 4880, 5140, 4880, 5050, 587763,4.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15400, 15900, 14800, 15600, 475885,0) , 
(20210513, 15650, 19600, 15650, 19400, 2134285,0.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3690, 3710, 3600, 3600, 45981,0) , 
(20210513, 3595, 3780, 3530, 3615, 139601,15.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_180400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 7740, 0,0) , 
(20210513, 0, 0, 0, 7740, 0,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2490, 2495, 2415, 2440, 841995,0) , 
(20210513, 2400, 2445, 2395, 2410, 517831,1.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_109070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 4100, 0,0) , 
(20210513, 0, 0, 0, 4100, 0,0.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2200, 2200, 2095, 2115, 357233,0) , 
(20210513, 2095, 2160, 2080, 2115, 242742,72.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 133000, 138200, 132500, 137500, 586067,0) , 
(20210513, 136000, 144500, 136000, 140400, 620036,19.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10750, 11300, 10600, 10800, 310604,0) , 
(20210513, 10650, 11050, 10450, 10800, 141018,1.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9660, 9700, 9250, 9400, 261113,0) , 
(20210513, 9190, 9530, 9070, 9200, 231373,0.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_327970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31450, 31450, 31450, 31450, 100,0) , 
(20210513, 30550, 30550, 30550, 30550, 100,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 63000, 63800, 62700, 63200, 16290,0) , 
(20210513, 62600, 64200, 62300, 63300, 15190,4.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_221980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17750, 18200, 17150, 17500, 26285,0) , 
(20210513, 17050, 17450, 16650, 16850, 32762,1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 454, 457, 442, 448, 3435815,0) , 
(20210513, 439, 447, 427, 435, 3300360,30.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3750, 3750, 3460, 3655, 557039,0) , 
(20210513, 3500, 3620, 3365, 3415, 303550,0.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 876, 894, 866, 876, 320059,0) , 
(20210513, 864, 876, 860, 865, 311394,1.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2615, 2690, 2510, 2530, 1340103,0) , 
(20210513, 2460, 2510, 2410, 2420, 685867,1.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2085, 2095, 2085, 2085, 5135,0) , 
(20210513, 2105, 2105, 2085, 2100, 3495,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_323940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2075, 2075, 2060, 2070, 9476,0) , 
(20210513, 2080, 2080, 2065, 2065, 5886,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_330990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2080, 2080, 2080, 2080, 2078,0) , 
(20210513, 2115, 2115, 2085, 2115, 165,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_342550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2065, 2100, 2065, 2100, 284,0) , 
(20210513, 2095, 2095, 2095, 2095, 1000,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1950, 1955, 1900, 1920, 916491,0) , 
(20210513, 1880, 1970, 1850, 1880, 1701942,1.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4670, 4700, 4535, 4570, 59860,0) , 
(20210513, 4525, 4600, 4480, 4490, 49197,2.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_029460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29600, 29900, 28600, 29250, 115745,0) , 
(20210513, 28800, 28850, 27850, 28100, 137465,8.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_112190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3900, 3900, 3775, 3780, 10587,0) , 
(20210513, 3705, 3800, 3700, 3700, 20103,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11550, 11600, 10850, 10950, 90662,0) , 
(20210513, 10700, 11100, 10550, 10850, 73384,4.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_344820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 66200, 68000, 63700, 65200, 274981,0) , 
(20210513, 63400, 65200, 61800, 62500, 193998,7.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9920, 9920, 9670, 9760, 50673,0) , 
(20210513, 9650, 9770, 9580, 9710, 47535,1.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7300, 7330, 7030, 7170, 126260,0) , 
(20210513, 7060, 7290, 7030, 7110, 79455,1.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_119650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7780, 7810, 7590, 7700, 103377,0) , 
(20210513, 7530, 7720, 7520, 7530, 74065,1.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_281820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28650, 29050, 28150, 28600, 132282,0) , 
(20210513, 28050, 28350, 27350, 27700, 144380,11.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7500, 7520, 7250, 7250, 199574,0) , 
(20210513, 7210, 7330, 7050, 7200, 180828,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4105, 4320, 4090, 4195, 418419,0) , 
(20210513, 4190, 4310, 4040, 4230, 336126,14.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 70000, 70000, 66300, 66500, 39271,0) , 
(20210513, 66000, 66800, 64900, 65500, 15736,33.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12850, 12900, 12300, 12400, 264162,0) , 
(20210513, 12200, 16100, 12100, 13450, 16453097,8.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2750, 3290, 2740, 2995, 11051682,0) , 
(20210513, 2940, 3030, 2855, 2890, 1139087,2.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19950, 20000, 19400, 19750, 226541,0) , 
(20210513, 19150, 19450, 18900, 19000, 246828,10.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1990, 1990, 1850, 1880, 784825,0) , 
(20210513, 1855, 1880, 1810, 1835, 461807,5.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_111870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1185, 1210, 1160, 1170, 343657,0) , 
(20210513, 1160, 1175, 1135, 1145, 434196,1.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_105330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7600, 7670, 7380, 7480, 24119,0) , 
(20210513, 7460, 7460, 7060, 7260, 28461,0.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1945, 1950, 1895, 1920, 724505,0) , 
(20210513, 1875, 1915, 1845, 1880, 767608,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_272110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15300, 15850, 15000, 15750, 162059,0) , 
(20210513, 15350, 16150, 15150, 15400, 80956,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3490, 3500, 3400, 3450, 196798,0) , 
(20210513, 3385, 3445, 3335, 3400, 194390,1.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11350, 11450, 11200, 11300, 54644,0) , 
(20210513, 11050, 11200, 10900, 11000, 58200,2.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 52700, 53800, 52300, 53700, 359981,0) , 
(20210513, 52600, 52800, 51200, 51200, 356875,10.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_122450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11400, 11500, 11150, 11300, 231460,0) , 
(20210513, 11050, 11300, 11000, 11150, 207293,0.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1990, 1995, 1950, 1955, 550576,0) , 
(20210513, 1935, 1955, 1905, 1910, 602705,1.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2840, 2890, 2805, 2830, 237535,0) , 
(20210513, 2785, 2825, 2765, 2765, 174415,2.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2050, 2065, 2010, 2020, 720492,0) , 
(20210513, 1965, 2120, 1965, 2045, 2802460,3.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10400, 10550, 10350, 10500, 269468,0) , 
(20210513, 10350, 10500, 10200, 10200, 262169,2.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20150, 20350, 19500, 19700, 150824,0) , 
(20210513, 19400, 19600, 19050, 19300, 168879,17.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_151860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7200, 7650, 7000, 7650, 3112436,0) , 
(20210513, 7610, 7900, 7210, 7310, 3924588,2.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_145270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1995, 2065, 1965, 2005, 998564,0) , 
(20210513, 1980, 2125, 1900, 1955, 1679517,12.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30650, 31900, 30450, 31350, 4255825,0) , 
(20210513, 31100, 31800, 30850, 31550, 2419186,43.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6030, 6030, 5790, 5890, 501753,0) , 
(20210513, 5690, 5870, 5480, 5540, 1118242,17.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8410, 8450, 7930, 8130, 2193168,0) , 
(20210513, 7810, 8100, 7790, 7810, 1056993,1.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9350, 9410, 9140, 9230, 165775,0) , 
(20210513, 9160, 9510, 9050, 9360, 227661,15.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3175, 3180, 3025, 3095, 908146,0) , 
(20210513, 3015, 3140, 2980, 3055, 664007,9.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3100, 3160, 3040, 3055, 681067,0) , 
(20210513, 3010, 3150, 2980, 3065, 729353,7.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 84400, 84500, 82300, 82600, 873616,0) , 
(20210513, 82000, 82800, 81400, 82000, 903183,40)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11050, 11150, 10450, 10750, 604250,0) , 
(20210513, 10450, 10550, 10000, 10100, 497140,1.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6090, 6490, 5700, 5730, 4508943,0) , 
(20210513, 5570, 5890, 5400, 5670, 934658,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_347140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2250, 2250, 2200, 2225, 133399,0) , 
(20210513, 2200, 2490, 2200, 2260, 970269,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_256940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14200, 14400, 13900, 14100, 60057,0) , 
(20210513, 13900, 14550, 13750, 14300, 49461,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4885, 4950, 4605, 4755, 408734,0) , 
(20210513, 4645, 4740, 4600, 4610, 114985,1.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10950, 11200, 10500, 10600, 802370,0) , 
(20210513, 10300, 10800, 10100, 10750, 458274,0.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2970, 2990, 2870, 2910, 2669234,0) , 
(20210513, 2850, 2980, 2805, 2860, 5879601,1.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12850, 13100, 11500, 11800, 288797,0) , 
(20210513, 11450, 11700, 10950, 11100, 91139,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_274090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13800, 13950, 13100, 13400, 174576,0) , 
(20210513, 13000, 13300, 12950, 12950, 133554,30.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4120, 4385, 4020, 4060, 5754433,0) , 
(20210513, 3940, 4280, 3935, 4000, 3597410,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25700, 26450, 25500, 26400, 155058,0) , 
(20210513, 25550, 26250, 25350, 25650, 160964,5.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_220260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6080, 6150, 6000, 6070, 195471,0) , 
(20210513, 5980, 6020, 5920, 5930, 182500,0.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42000, 42050, 40100, 40900, 114771,0) , 
(20210513, 39650, 41750, 39650, 40700, 85605,2.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 204, 0,0) , 
(20210513, 0, 0, 0, 204, 0,1.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1190, 1265, 1175, 1245, 381374,0) , 
(20210513, 1215, 1300, 1205, 1270, 440424,2.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2800, 2835, 2680, 2695, 616648,0) , 
(20210513, 2645, 2720, 2630, 2700, 345767,0.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1970, 2055, 1965, 2020, 33207,0) , 
(20210513, 2040, 2040, 2000, 2015, 14202,0.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2120, 2125, 2040, 2060, 176045,0) , 
(20210513, 2040, 2060, 2015, 2040, 47603,2.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_224060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 295, 307, 289, 296, 16692223,0) , 
(20210513, 296, 299, 291, 296, 5960453,0.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_357120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6190, 6190, 6030, 6080, 275971,0) , 
(20210513, 6010, 6170, 5970, 6090, 288429,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1150, 1260, 1130, 1245, 4209237,0) , 
(20210513, 1220, 1305, 1200, 1290, 3221697,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18000, 18250, 17050, 17500, 105475,0) , 
(20210513, 17200, 17450, 16550, 16850, 141351,1.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4880, 4890, 4795, 4830, 591781,0) , 
(20210513, 4800, 4840, 4715, 4775, 309075,4.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8120, 8140, 8020, 8130, 579401,0) , 
(20210513, 8040, 8270, 8030, 8070, 612390,0.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007815" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8170, 8450, 7620, 7820, 114754,0) , 
(20210513, 7630, 7890, 7520, 7540, 27983,0.99)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_00781K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9250, 10300, 9250, 9890, 95630,0) , 
(20210513, 9470, 9750, 9300, 9340, 22918,0.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13000, 13050, 12400, 12500, 175523,0) , 
(20210513, 12200, 12500, 12200, 12300, 87399,2.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_190650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12100, 12200, 11500, 11950, 118727,0) , 
(20210513, 11800, 11950, 11300, 11550, 63321,2.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1610, 1625, 1560, 1590, 429107,0) , 
(20210513, 1530, 1600, 1530, 1570, 204654,20.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3585, 3590, 3440, 3505, 492064,0) , 
(20210513, 3410, 3510, 3385, 3450, 318238,35.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9620, 9720, 9550, 9680, 364616,0) , 
(20210513, 9670, 10200, 9550, 9950, 1564541,31.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6240, 6660, 6130, 6230, 999834,0) , 
(20210513, 6190, 6380, 6100, 6260, 171109,4.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12200, 12400, 11700, 12100, 61963,0) , 
(20210513, 11850, 12050, 11500, 11750, 59679,15.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_183300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 64800, 66400, 62300, 63700, 112941,0) , 
(20210513, 62200, 63400, 61400, 62000, 61720,38.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10450, 10450, 10200, 10300, 219265,0) , 
(20210513, 10150, 10300, 10100, 10150, 159480,3.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8170, 8180, 7940, 8000, 184918,0) , 
(20210513, 7860, 7980, 7710, 7830, 180634,5.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 905, 0,0) , 
(20210513, 0, 0, 0, 905, 0,0.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_082660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1345, 1350, 1310, 1320, 125953,0) , 
(20210513, 1320, 1320, 1275, 1290, 106900,1.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 124490, 125960, 120569, 124000, 192083,0) , 
(20210513, 120500, 125000, 120500, 123000, 117362,21.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18300, 18300, 17300, 17850, 61210,0) , 
(20210513, 17750, 18500, 17350, 18400, 77849,5.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11000, 11050, 10200, 10800, 647030,0) , 
(20210513, 10500, 10800, 10250, 10500, 406836,3.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17900, 17900, 16650, 17050, 215514,0) , 
(20210513, 16550, 17450, 16550, 17000, 138368,2.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25850, 26200, 24800, 25650, 979433,0) , 
(20210513, 25050, 25500, 23800, 24100, 846997,5.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11850, 11900, 11300, 11500, 370883,0) , 
(20210513, 11250, 11400, 11100, 11100, 275618,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2630, 0,0) , 
(20210513, 0, 0, 0, 2630, 0,0.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1330, 1360, 1275, 1295, 977776,0) , 
(20210513, 1265, 1315, 1250, 1290, 553476,4.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_166480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16850, 16850, 16450, 16600, 41639,0) , 
(20210513, 16350, 16600, 16050, 16150, 62204,1.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10800, 10800, 10150, 10300, 270273,0) , 
(20210513, 10100, 10350, 9980, 10000, 293850,0.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_196450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2055, 0,0) , 
(20210513, 0, 0, 0, 2055, 0,1.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_029960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9260, 9280, 9060, 9150, 343540,0) , 
(20210513, 9010, 9070, 8960, 9020, 398268,9.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002025" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25850, 25850, 23300, 24250, 160652,0) , 
(20210513, 23550, 24200, 23300, 23300, 52338,6.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003075" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38950, 38950, 37250, 38000, 18402,0) , 
(20210513, 36000, 36500, 35000, 35500, 15691,0.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27300, 27350, 25650, 25800, 219346,0) , 
(20210513, 25100, 26350, 24500, 25850, 152664,2.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_144620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3080, 3085, 3000, 3030, 161817,0) , 
(20210513, 2970, 3020, 2920, 2960, 146737,0.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34300, 34300, 32450, 32650, 119139,0) , 
(20210513, 31900, 32700, 31550, 32150, 72974,12.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_102940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25250, 26000, 24950, 25800, 90920,0) , 
(20210513, 25150, 25750, 24750, 24900, 60569,1.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_120115" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31450, 31450, 29800, 30750, 35814,0) , 
(20210513, 29850, 30350, 29650, 29900, 33840,12.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_120110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 63500, 64200, 60900, 61900, 264886,0) , 
(20210513, 60200, 61300, 58800, 59400, 392115,19.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 8010, 0,0) , 
(20210513, 0, 0, 0, 8010, 0,7.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_138490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6840, 6860, 6540, 6590, 320125,0) , 
(20210513, 6410, 6550, 6270, 6330, 360186,1.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 69900, 70600, 68500, 69900, 318236,0) , 
(20210513, 70000, 77500, 69900, 76600, 1748318,58.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6850, 6930, 6610, 6670, 590452,0) , 
(20210513, 6520, 6730, 6470, 6600, 421962,7.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_056360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9230, 9240, 9050, 9060, 42613,0) , 
(20210513, 8930, 9050, 8850, 8970, 54765,1.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_282880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24050, 24150, 23250, 23350, 38552,0) , 
(20210513, 23150, 23450, 22650, 23000, 38931,1.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_121850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5160, 5370, 4850, 5120, 321374,0) , 
(20210513, 5230, 5250, 4890, 5170, 279652,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8450, 8470, 7750, 7830, 676934,0) , 
(20210513, 7700, 7960, 7510, 7650, 225264,2.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11750, 11950, 11300, 11500, 154039,0) , 
(20210513, 11200, 11750, 11150, 11650, 85111,24.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_322780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2980, 2995, 2870, 2930, 220668,0) , 
(20210513, 2855, 2930, 2850, 2900, 167311,0.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_126600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5850, 5870, 5650, 5690, 234302,0) , 
(20210513, 5550, 5870, 5520, 5770, 171509,2.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 51500, 51700, 50000, 50400, 141834,0) , 
(20210513, 49500, 53000, 49500, 52500, 511659,2.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1305, 1310, 1265, 1285, 778898,0) , 
(20210513, 1265, 1290, 1245, 1265, 747319,1.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_294570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 61800, 63600, 60000, 62400, 112945,0) , 
(20210513, 60500, 62000, 59800, 60500, 98058,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_192400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 134500, 136000, 131000, 135500, 6905,0) , 
(20210513, 136000, 137000, 132000, 133500, 7970,5.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_284740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42350, 42400, 40800, 41300, 63833,0) , 
(20210513, 40850, 46500, 40200, 45300, 348260,5.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16100, 16100, 14950, 15100, 575594,0) , 
(20210513, 14700, 14900, 14200, 14400, 201175,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10400, 10450, 10000, 10200, 127456,0) , 
(20210513, 10000, 10250, 9910, 10150, 189839,1.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 614, 617, 597, 600, 2275649,0) , 
(20210513, 591, 607, 591, 594, 2178538,1.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_040350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1290, 1290, 1245, 1260, 728357,0) , 
(20210513, 1300, 1350, 1275, 1295, 1391985,3.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 539, 539, 529, 534, 166802,0) , 
(20210513, 534, 548, 530, 539, 305135,0.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31000, 31400, 30550, 30850, 66643,0) , 
(20210513, 30700, 30800, 30250, 30250, 32873,1.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2050, 2065, 1970, 2005, 424122,0) , 
(20210513, 2000, 2005, 1920, 1940, 308130,0.97)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_182360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4150, 4300, 4075, 4200, 731352,0) , 
(20210513, 4170, 4180, 4070, 4150, 483149,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15650, 16000, 15500, 15750, 32598,0) , 
(20210513, 15750, 15750, 15450, 15700, 9583,2.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_136660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3875, 3875, 3530, 3795, 4927,0) , 
(20210513, 3795, 3795, 3605, 3695, 3789,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 665, 665, 647, 652, 1253259,0) , 
(20210513, 643, 668, 640, 656, 1163284,2.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_26490K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35850, 36100, 32600, 33550, 171752,0) , 
(20210513, 32050, 36500, 31150, 31900, 208692,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_264900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14150, 14250, 13750, 13900, 165680,0) , 
(20210513, 13500, 14450, 13500, 14100, 179278,1.62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005745" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25800, 27600, 25700, 27500, 61943,0) , 
(20210513, 26100, 27850, 25550, 25550, 36043,1.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12250, 12300, 11800, 12200, 86779,0) , 
(20210513, 12050, 12500, 11900, 12200, 104882,2.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3290, 3290, 3015, 3280, 737,0) , 
(20210513, 3295, 3295, 3000, 3250, 1208,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2485, 0,0) , 
(20210513, 0, 0, 0, 2485, 0,0.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_114120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1370, 1375, 1305, 1345, 232331,0) , 
(20210513, 1310, 1350, 1300, 1340, 183197,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_110790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36500, 40100, 36500, 39050, 185656,0) , 
(20210513, 38850, 40850, 36100, 39650, 111575,1.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_083790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8280, 8350, 8020, 8290, 522184,0) , 
(20210513, 8130, 8310, 7990, 8100, 550952,7.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25400, 25650, 24950, 24950, 31217,0) , 
(20210513, 24450, 25050, 24350, 24650, 29721,2.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1635, 1650, 1585, 1615, 633640,0) , 
(20210513, 1595, 1625, 1575, 1575, 605555,1.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14150, 14200, 13900, 13950, 281223,0) , 
(20210513, 13850, 14200, 13750, 13950, 235487,8.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_352770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15900, 17650, 15900, 17000, 2054471,0) , 
(20210513, 16700, 18000, 16700, 17400, 1142194,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_237880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23100, 23100, 22200, 22350, 166549,0) , 
(20210513, 21800, 22150, 21500, 21600, 151586,1.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_139670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44150, 45400, 41500, 41900, 299954,0) , 
(20210513, 41900, 50600, 41600, 42500, 613258,1.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14500, 14750, 14200, 14350, 118728,0) , 
(20210513, 14200, 14400, 13650, 13750, 199083,0.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_311270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2120, 2240, 2115, 2150, 28283,0) , 
(20210513, 2120, 2190, 2120, 2190, 2682,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 136000, 138500, 128000, 132500, 260472,0) , 
(20210513, 129000, 130000, 125000, 126000, 360923,23.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054780" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13900, 14100, 13800, 14000, 193131,0) , 
(20210513, 13700, 13800, 13350, 13450, 269843,8.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_219130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15450, 16100, 15350, 16000, 62760,0) , 
(20210513, 15750, 15950, 15150, 15900, 50781,15.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_180060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11850, 11850, 11700, 11750, 631,0) , 
(20210513, 11850, 11850, 11400, 11750, 649,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9180, 9210, 9000, 9010, 148334,0) , 
(20210513, 8900, 9050, 8860, 8880, 153059,5.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4700, 4830, 4690, 4755, 803194,0) , 
(20210513, 4690, 4855, 4650, 4770, 603538,2.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7240, 7240, 7020, 7120, 120347,0) , 
(20210513, 6990, 7150, 6940, 7020, 120600,4.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14150, 14350, 13750, 13850, 133555,0) , 
(20210513, 13550, 15200, 13550, 14350, 1148560,0.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12600, 12700, 11850, 12050, 538430,0) , 
(20210513, 11600, 12050, 11350, 11400, 608256,12.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1186000, 1186000, 1149000, 1165000, 1445,0) , 
(20210513, 1158000, 1203000, 1142000, 1200000, 3257,7.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5170, 5180, 5010, 5070, 242038,0) , 
(20210513, 5060, 5120, 4980, 5040, 184217,1.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11300, 11450, 11100, 11250, 29791,0) , 
(20210513, 11100, 11400, 11000, 11250, 19358,2.37)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004105" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3500, 3500, 3355, 3460, 226331,0) , 
(20210513, 3960, 4495, 3700, 3700, 1930147,0.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1650, 1655, 1560, 1600, 1332842,0) , 
(20210513, 1870, 2055, 1625, 1650, 31138079,2.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_116100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 700, 700, 700, 700, 246,0) , 
(20210513, 700, 700, 621, 690, 3371,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14150, 14250, 13500, 13650, 527100,0) , 
(20210513, 13400, 13850, 13200, 13350, 224913,11.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009415" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19400, 22650, 19300, 20650, 1311694,0) , 
(20210513, 19250, 19500, 18550, 19200, 104486,1.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_044490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 12500, 0,0) , 
(20210513, 0, 0, 0, 12500, 0,1.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_124560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10500, 10750, 9890, 9910, 4221134,0) , 
(20210513, 9520, 11450, 9440, 10050, 11022806,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4905, 4985, 4795, 4865, 301965,0) , 
(20210513, 4715, 4985, 4705, 4870, 199012,2.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3120, 3120, 2975, 3070, 1561970,0) , 
(20210513, 2975, 3030, 2840, 2870, 1307825,2.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_191420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27750, 28200, 26900, 27300, 39925,0) , 
(20210513, 26750, 27350, 26450, 27000, 19260,0.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_073640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2370, 2370, 2215, 2215, 211174,0) , 
(20210513, 2250, 2250, 2130, 2135, 198474,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_182690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1440, 0,0) , 
(20210513, 0, 0, 0, 1440, 0,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8600, 8640, 8370, 8410, 258929,0) , 
(20210513, 8300, 8490, 8220, 8280, 170574,3.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_095610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32150, 32450, 31250, 31650, 331945,0) , 
(20210513, 31400, 32150, 30150, 30700, 688093,9.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 45600, 46000, 43950, 44350, 263670,0) , 
(20210513, 43100, 45500, 43050, 44050, 166481,6.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_055490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 59000, 59400, 56000, 58400, 72076,0) , 
(20210513, 57500, 57900, 52500, 55200, 121269,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_308700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1345, 1345, 1345, 1345, 1,0) , 
(20210513, 1345, 1345, 1280, 1280, 6,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_089030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23800, 24250, 23400, 23850, 410240,0) , 
(20210513, 23250, 23650, 22950, 23350, 403700,3.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_258050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1430, 1430, 1255, 1430, 1201,0) , 
(20210513, 1400, 1400, 1400, 1400, 100,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18500, 19350, 18300, 19350, 2363613,0) , 
(20210513, 18750, 19500, 18600, 18800, 1707325,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3970, 4050, 3900, 4000, 93734,0) , 
(20210513, 3920, 4080, 3730, 3975, 104792,2.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12400, 12550, 12100, 12250, 20486,0) , 
(20210513, 12000, 12250, 12000, 12150, 11445,1.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4670, 4700, 4540, 4565, 1025169,0) , 
(20210513, 4505, 4535, 4450, 4460, 603417,6.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8040, 8140, 7890, 8070, 65108,0) , 
(20210513, 8030, 8290, 7940, 8200, 94226,0.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_215480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1615, 1650, 1595, 1625, 1871116,0) , 
(20210513, 1590, 1655, 1570, 1600, 1440116,12.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8210, 8290, 8060, 8140, 220638,0) , 
(20210513, 8080, 8290, 8010, 8150, 177512,6.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20050, 20100, 19100, 19300, 73466,0) , 
(20210513, 18850, 19550, 18500, 19200, 123434,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_108230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12000, 12000, 11700, 11750, 219312,0) , 
(20210513, 11550, 11600, 11400, 11500, 206997,4.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2120, 2120, 2025, 2050, 212254,0) , 
(20210513, 2040, 2060, 1990, 2005, 133468,1.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_199800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 90900, 93200, 90000, 91400, 4013,0) , 
(20210513, 90200, 91000, 89600, 90200, 6548,1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_105550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6520, 6540, 6280, 6350, 337450,0) , 
(20210513, 6110, 6430, 6110, 6340, 264542,1.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_026150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13300, 14250, 12900, 13250, 4666270,0) , 
(20210513, 13100, 14850, 11950, 12200, 9974354,1.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_322180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16400, 16650, 15950, 16200, 73955,0) , 
(20210513, 15900, 16200, 15800, 16050, 58978,0.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_117730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9970, 9970, 9520, 9640, 245548,0) , 
(20210513, 9450, 9600, 9290, 9410, 232456,3.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1480, 1485, 1410, 1430, 853452,0) , 
(20210513, 1400, 1420, 1360, 1375, 1079197,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_057680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3295, 3350, 3020, 3350, 773796,0) , 
(20210513, 3255, 3360, 3190, 3340, 417535,0.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 173000, 175700, 168500, 172600, 46866,0) , 
(20210513, 167200, 170700, 166800, 167100, 37777,73.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_246710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36550, 37500, 34800, 35050, 80396,0) , 
(20210513, 34000, 38200, 33900, 36050, 181114,5.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_340570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60200, 60500, 57400, 57700, 93777,0) , 
(20210513, 56300, 58700, 54000, 54700, 88289,1.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_277880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11000, 11050, 10000, 10300, 821108,0) , 
(20210513, 10150, 10300, 9920, 10050, 238437,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 66000, 66500, 63500, 65000, 63365,0) , 
(20210513, 63100, 64000, 61400, 63200, 88523,8.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_246690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3900, 4285, 3750, 4170, 7108704,0) , 
(20210513, 4000, 4070, 3800, 3850, 2152246,3.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1340, 1340, 1305, 1325, 197212,0) , 
(20210513, 1315, 1320, 1290, 1295, 225875,0.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3290, 3370, 3225, 3340, 209587,0) , 
(20210513, 3255, 3325, 3210, 3245, 193968,1.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_356860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43000, 43000, 41800, 42600, 15446,0) , 
(20210513, 41800, 42400, 41300, 41600, 18739,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_062860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10300, 10400, 9750, 9930, 55712,0) , 
(20210513, 9900, 9900, 9600, 9600, 31460,0.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1780, 1825, 1740, 1755, 6374191,0) , 
(20210513, 1735, 1770, 1715, 1745, 2596104,3.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_36328K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28850, 29800, 27350, 27900, 66380,0) , 
(20210513, 27300, 27800, 26850, 27450, 40543,0.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_363280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26650, 26700, 25550, 25850, 291267,0) , 
(20210513, 25700, 25750, 25100, 25350, 123199,6.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_321550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17500, 17500, 17000, 17300, 128401,0) , 
(20210513, 16950, 17350, 16950, 17200, 71679,0.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2915, 2915, 2815, 2905, 1191076,0) , 
(20210513, 2845, 3160, 2815, 3105, 5261631,0.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1405, 1410, 1370, 1400, 225717,0) , 
(20210513, 1375, 1445, 1360, 1390, 399166,1.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3930, 3930, 3815, 3900, 29495,0) , 
(20210513, 3865, 3900, 3830, 3860, 17063,0.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7050, 7070, 6500, 6610, 4466823,0) , 
(20210513, 6400, 6930, 6140, 6450, 4491740,7.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_309900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1950, 0,0) , 
(20210513, 0, 0, 0, 1950, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_081150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4185, 4250, 4025, 4040, 2976486,0) , 
(20210513, 3905, 4055, 3865, 3865, 865095,3.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_130740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4585, 4620, 4380, 4410, 81604,0) , 
(20210513, 4400, 4540, 4305, 4420, 82324,1.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4285, 4325, 4190, 4230, 58739,0) , 
(20210513, 4100, 4210, 4090, 4115, 98390,2.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11200, 11800, 10200, 11350, 15651,0) , 
(20210513, 11350, 11350, 10900, 11200, 1998,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15950, 16200, 15600, 15700, 95228,0) , 
(20210513, 15500, 15800, 14800, 15150, 110278,2.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6280, 6400, 6050, 6180, 423357,0) , 
(20210513, 6030, 6400, 5920, 6230, 338869,0.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18400, 18600, 17850, 18250, 1165128,0) , 
(20210513, 17900, 19150, 17800, 18600, 2393495,6.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3570, 3570, 3430, 3515, 483793,0) , 
(20210513, 3480, 3550, 3390, 3450, 440221,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1285, 1295, 1255, 1265, 182811,0) , 
(20210513, 1250, 1250, 1160, 1220, 407811,4.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 71400, 72200, 69300, 70400, 69101,0) , 
(20210513, 69000, 71100, 68500, 69700, 61004,8.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_217950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19150, 19150, 18300, 18350, 3479,0) , 
(20210513, 18350, 18500, 17450, 18150, 819,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_208340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15950, 16500, 15650, 16150, 79031,0) , 
(20210513, 15750, 16100, 15400, 15500, 117767,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16750, 17450, 16650, 17150, 1246075,0) , 
(20210513, 17200, 18000, 16550, 16700, 2051494,8.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_177830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5930, 6100, 5750, 5900, 1051106,0) , 
(20210513, 5800, 6030, 5700, 6030, 461699,2.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24800, 24900, 23750, 24200, 133249,0) , 
(20210513, 23550, 24800, 23300, 24100, 145381,1.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_150900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8310, 8310, 8060, 8160, 44265,0) , 
(20210513, 7950, 8540, 7850, 8170, 112564,2.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5670, 5670, 5410, 5490, 334950,0) , 
(20210513, 5390, 5510, 5350, 5360, 113703,0.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8110, 8170, 7930, 7980, 325481,0) , 
(20210513, 7840, 7960, 7770, 7780, 317054,3.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_266870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1005, 1005, 999, 999, 263,0) , 
(20210513, 996, 999, 931, 965, 7744,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_170790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12950, 13000, 12700, 12750, 41175,0) , 
(20210513, 12650, 12850, 12500, 12800, 38248,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_049120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2225, 2225, 2150, 2190, 448560,0) , 
(20210513, 2140, 2215, 2115, 2175, 362964,0.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6800, 6860, 6630, 6690, 54692,0) , 
(20210513, 6540, 6700, 6500, 6610, 40785,1.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_106240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6000, 6100, 5860, 5910, 987900,0) , 
(20210513, 5700, 5980, 5680, 5800, 772380,3.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_131760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1420, 1485, 1410, 1480, 1301884,0) , 
(20210513, 1455, 1540, 1435, 1495, 1130164,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3315, 3360, 3230, 3280, 36572,0) , 
(20210513, 3250, 3290, 3230, 3290, 42780,1.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_140860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 141700, 142700, 138900, 139800, 21679,0) , 
(20210513, 138000, 140000, 133000, 135000, 41481,20.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_091700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10300, 10350, 10000, 10150, 580110,0) , 
(20210513, 10000, 10200, 9970, 10050, 502673,13.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_038160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 862, 0,0) , 
(20210513, 0, 0, 0, 862, 0,5.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_202960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1200, 1285, 1160, 1250, 5808,0) , 
(20210513, 1300, 1300, 1135, 1180, 1339,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 145, 146, 131, 134, 46335273,0) , 
(20210513, 134, 155, 128, 141, 137707391,0.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_318010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10350, 10450, 10050, 10250, 22582,0) , 
(20210513, 10100, 10550, 10050, 10400, 46377,0.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8470, 8940, 8440, 8730, 809605,0) , 
(20210513, 8620, 8830, 8460, 8780, 460996,4.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_027710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2350, 2540, 2345, 2360, 22822257,0) , 
(20210513, 2360, 2425, 2275, 2330, 4995268,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12750, 12900, 12050, 12150, 653624,0) , 
(20210513, 12050, 13200, 11800, 12250, 1628656,1.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_225590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1625, 1630, 1565, 1590, 444930,0) , 
(20210513, 1560, 1610, 1555, 1590, 420750,1.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1015, 1035, 981, 1015, 2180242,0) , 
(20210513, 987, 1035, 983, 1000, 1424991,2.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_068050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6720, 6930, 6670, 6670, 400078,0) , 
(20210513, 6540, 6660, 6280, 6320, 683414,1.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_028670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7450, 7730, 7260, 7430, 14127683,0) , 
(20210513, 7270, 7650, 7030, 7200, 18458885,10.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9800, 9940, 9730, 9850, 59624,0) , 
(20210513, 9700, 9810, 9560, 9700, 32051,10.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2625, 2650, 2505, 2525, 602793,0) , 
(20210513, 2480, 2530, 2440, 2455, 462210,2.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43050, 44750, 42900, 44100, 25324,0) , 
(20210513, 44500, 46750, 43400, 44000, 60954,20.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_263750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 58900, 60300, 57000, 57200, 245669,0) , 
(20210513, 56600, 59100, 56100, 58100, 222345,23.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_251970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22550, 22850, 21750, 22150, 52139,0) , 
(20210513, 21700, 22150, 21050, 21750, 57105,1.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2300, 2320, 2120, 2210, 117503,0) , 
(20210513, 2150, 2200, 2145, 2185, 77107,0.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_327610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13800, 13800, 13100, 13250, 4919,0) , 
(20210513, 13550, 13550, 13200, 13400, 1008,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_087010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13600, 13650, 13050, 13200, 204722,0) , 
(20210513, 13000, 13250, 13000, 13050, 125473,2.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1200, 1220, 1190, 1205, 218479,0) , 
(20210513, 1185, 1205, 1180, 1190, 166790,1.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4305, 4380, 4120, 4150, 106752,0) , 
(20210513, 4085, 4250, 4005, 4135, 59124,14.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_119500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5510, 5780, 5230, 5270, 969892,0) , 
(20210513, 5170, 5360, 4900, 4965, 581145,4.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_058430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 73900, 84300, 72400, 77000, 2643393,0) , 
(20210513, 75500, 80900, 71400, 73400, 769208,1.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 407500, 409000, 390500, 399000, 631639,0) , 
(20210513, 384500, 399000, 380000, 383500, 752742,54.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_022100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7400, 8360, 7280, 7560, 29528828,0) , 
(20210513, 7390, 7530, 7320, 7370, 2799632,2.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23050, 23450, 21950, 21950, 1879688,0) , 
(20210513, 21500, 22200, 21250, 21250, 1097857,12.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 146000, 150000, 144000, 146500, 336547,0) , 
(20210513, 143000, 145000, 141000, 145000, 570469,7.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_189690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8000, 8000, 7680, 7740, 58744,0) , 
(20210513, 7630, 7700, 7550, 7590, 55725,1.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_318020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22900, 23050, 21850, 22150, 109542,0) , 
(20210513, 21600, 22000, 21350, 21500, 69252,0.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_256630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3770, 3785, 3610, 3610, 1797876,0) , 
(20210513, 3585, 3735, 3530, 3610, 1134329,2.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_141020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 108, 0,0) , 
(20210513, 0, 0, 0, 108, 0,2.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_354230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23200, 23200, 23200, 23200, 0,0) , 
(20210513, 19750, 26650, 19750, 26650, 104,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2140, 2145, 2060, 2100, 218718,0) , 
(20210513, 2090, 2090, 2020, 2035, 275981,1.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2080, 2080, 2015, 2035, 265787,0) , 
(20210513, 2020, 2090, 1995, 2030, 330259,1.41)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1225, 0,0) , 
(20210513, 0, 0, 0, 1225, 0,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27600, 27900, 26250, 26900, 67040,0) , 
(20210513, 26250, 28000, 26250, 26650, 62710,6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7710, 7930, 7650, 7780, 236974,0) , 
(20210513, 7750, 8200, 7630, 8060, 902432,1.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12600, 12700, 12050, 12250, 456376,0) , 
(20210513, 11950, 12400, 11700, 11900, 277089,0.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18200, 18550, 17400, 17800, 123925,0) , 
(20210513, 18050, 22150, 17800, 20100, 7454876,0.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21250, 21900, 20900, 21150, 726196,0) , 
(20210513, 20900, 25000, 20500, 23000, 2695438,1.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5400, 5410, 5030, 5100, 1412815,0) , 
(20210513, 4980, 5050, 4875, 4900, 662609,3.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023900" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19550, 19600, 19250, 19350, 23677,0) , 
(20210513, 18950, 19350, 18750, 19200, 30074,1.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_103140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 48100, 49950, 45950, 46950, 2012315,0) , 
(20210513, 45850, 48700, 43900, 44900, 1558508,13.53)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30650, 31700, 29850, 30300, 162566,0) , 
(20210513, 29200, 30500, 29200, 29400, 108653,7.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_195440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 2075, 0,0) , 
(20210513, 0, 0, 0, 2075, 0,0.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_214270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1450, 1570, 1425, 1540, 14478004,0) , 
(20210513, 1450, 1490, 1415, 1425, 7473907,0.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_220100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14500, 14700, 14100, 14450, 140513,0) , 
(20210513, 14100, 14350, 13750, 14000, 123479,1.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_035200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6480, 6500, 6190, 6300, 553617,0) , 
(20210513, 6120, 6390, 6110, 6180, 239092,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_334970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17050, 17400, 16300, 16500, 880578,0) , 
(20210513, 16300, 16950, 15950, 16250, 816892,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_950210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29600, 30900, 29150, 29250, 323263,0) , 
(20210513, 28650, 30900, 28350, 29800, 459551,63.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_203690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3335, 3370, 3190, 3235, 320861,0) , 
(20210513, 3175, 3240, 3170, 3205, 158104,1.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_303360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7970, 8000, 7870, 8000, 3560,0) , 
(20210513, 8000, 8000, 7800, 7950, 5818,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27000, 27400, 26900, 27050, 54032,0) , 
(20210513, 26350, 27450, 26350, 26600, 58089,2.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_335810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17400, 17600, 16400, 16400, 173287,0) , 
(20210513, 16050, 17050, 15900, 16400, 118143,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 29950, 29950, 28700, 28800, 194122,0) , 
(20210513, 28100, 30800, 28000, 28400, 400960,0.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_075130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6820, 6840, 6540, 6710, 99472,0) , 
(20210513, 6600, 6750, 6510, 6750, 82808,3.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6950, 7000, 6700, 7000, 828,0) , 
(20210513, 7000, 7000, 6620, 6980, 6,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_237820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10250, 10600, 10100, 10450, 127688,0) , 
(20210513, 10150, 10400, 9770, 9830, 146280,0.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9740, 9930, 9500, 9740, 51199,0) , 
(20210513, 9670, 9890, 9550, 9840, 57475,1.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_300080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23000, 23000, 22000, 22550, 101501,0) , 
(20210513, 21700, 22300, 21400, 21400, 83333,7.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_150440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3700, 4000, 3700, 3800, 112234,0) , 
(20210513, 3945, 3945, 3700, 3880, 8775,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1570, 1590, 1520, 1520, 268829,0) , 
(20210513, 1500, 1535, 1475, 1495, 290086,31.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11100, 11250, 10700, 11000, 24667,0) , 
(20210513, 10700, 11000, 10700, 10950, 12576,0.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 75200, 76800, 73000, 73000, 139459,0) , 
(20210513, 71000, 73000, 64000, 64000, 512088,1.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_178920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 47400, 47750, 46500, 46900, 166736,0) , 
(20210513, 45700, 46500, 45650, 46000, 213806,13.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_237750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7470, 7470, 7160, 7250, 54809,0) , 
(20210513, 7140, 7230, 6990, 7020, 37866,3.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2440, 2840, 2415, 2830, 9644388,0) , 
(20210513, 2810, 2950, 2350, 2500, 9877543,6.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_319660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 42250, 42400, 40550, 41600, 213947,0) , 
(20210513, 41200, 41950, 39800, 40350, 366135,6.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_031980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11050, 11300, 10750, 11300, 193483,0) , 
(20210513, 11100, 11400, 10600, 10600, 320993,0.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5750, 5750, 5590, 5650, 43003,0) , 
(20210513, 5540, 5630, 5510, 5570, 35479,5.36)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_057880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1645, 1660, 1580, 1600, 1146705,0) , 
(20210513, 1585, 1600, 1560, 1595, 694074,0.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_043370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10300, 10600, 10200, 10350, 161741,0) , 
(20210513, 10150, 10450, 10100, 10400, 112356,9.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_242350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 700, 700, 601, 628, 259,0) , 
(20210513, 602, 677, 602, 677, 1257,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_239890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 27450, 27450, 25800, 26250, 116958,0) , 
(20210513, 25800, 26850, 25400, 25800, 118176,1.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_347740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23200, 23200, 22600, 23200, 67572,0) , 
(20210513, 22750, 23000, 22500, 22900, 31639,0.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_137400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22650, 22750, 21850, 22250, 275906,0) , 
(20210513, 21500, 22000, 21050, 21100, 324107,2.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8270, 8500, 7980, 8140, 499870,0) , 
(20210513, 7990, 8140, 7710, 7970, 316157,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_128660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5000, 5030, 4420, 4570, 8206378,0) , 
(20210513, 4350, 4470, 4225, 4250, 2242544,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8160, 8290, 8070, 8130, 26173,0) , 
(20210513, 7930, 8250, 7900, 7920, 46214,0.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_304840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 49250, 52500, 48700, 50600, 317835,0) , 
(20210513, 49700, 50500, 47050, 47450, 227641,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_062970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6280, 7300, 5790, 6100, 3569941,0) , 
(20210513, 5900, 6130, 5790, 5790, 341850,0.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_087600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8500, 8500, 7910, 8180, 35615,0) , 
(20210513, 8030, 8150, 7870, 8070, 22204,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_161580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12100, 12100, 11700, 11900, 104330,0) , 
(20210513, 11500, 11700, 11450, 11500, 106291,0.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_347770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19000, 20250, 18650, 20150, 237985,0) , 
(20210513, 19750, 20150, 18950, 19350, 163516,2.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_163730" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20200, 20450, 19850, 19950, 108731,0) , 
(20210513, 19800, 19950, 19550, 19600, 63843,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_332710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2115, 2095, 2105, 34578,0) , 
(20210513, 2105, 2115, 2085, 2110, 33206,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_341160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2105, 2115, 2105, 2115, 7777,0) , 
(20210513, 2120, 2120, 2105, 2115, 578,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_343510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2105, 2145, 2105, 2115, 755,0) , 
(20210513, 2105, 2120, 2105, 2120, 11,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_363260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2090, 2100, 2085, 2095, 34589,0) , 
(20210513, 2095, 2100, 2090, 2100, 16127,5.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46600, 46800, 45200, 45700, 1019120,0) , 
(20210513, 45200, 47250, 45200, 46850, 1832346,69.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_299030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 60800, 60800, 57500, 58400, 144592,0) , 
(20210513, 57500, 60800, 56600, 59200, 91213,0.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_067310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14000, 14100, 13250, 13600, 1227016,0) , 
(20210513, 13150, 13750, 13050, 13250, 885421,3.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_372290" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2110, 2115, 2110, 2115, 156,0) , 
(20210513, 2100, 2105, 2090, 2105, 16410,0.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2150, 2150, 2100, 2115, 56378,0) , 
(20210513, 2115, 2130, 2105, 2110, 17779,0.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_166090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43500, 44200, 42800, 43750, 168783,0) , 
(20210513, 42600, 43750, 41850, 41850, 200227,24.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_293480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23300, 23350, 22900, 23000, 41245,0) , 
(20210513, 22900, 23500, 22800, 23200, 31900,0.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 68600, 70500, 68000, 69100, 327967,0) , 
(20210513, 68400, 69800, 67300, 68700, 196075,8.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_136480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3350, 3350, 3230, 3255, 1352186,0) , 
(20210513, 3210, 3355, 3180, 3290, 1942940,2.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12750, 12800, 11950, 12050, 1344865,0) , 
(20210513, 11800, 12350, 11550, 11900, 856463,6.94)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_172580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2375, 2380, 2355, 2380, 216679,0) , 
(20210513, 2350, 2380, 2350, 2370, 38050,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_153360" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1690, 1690, 1665, 1685, 12362,0) , 
(20210513, 1645, 1685, 1645, 1680, 8812,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_149980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6100, 6140, 5880, 5940, 73382,0) , 
(20210513, 5850, 5890, 5740, 5800, 70838,2.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21000, 21000, 19650, 20500, 197770,0) , 
(20210513, 19800, 20000, 19400, 19600, 185899,17.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_352820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 259000, 264000, 244500, 246000, 382142,0) , 
(20210513, 242000, 246000, 238000, 240500, 247075,8.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_126700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13400, 13550, 13050, 13200, 277668,0) , 
(20210513, 12700, 13200, 12700, 13000, 192800,3.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_106080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 3110, 0,0) , 
(20210513, 0, 0, 0, 3110, 0,1.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4380, 4465, 4025, 4250, 2282931,0) , 
(20210513, 4080, 4175, 3935, 4020, 1073324,0.21)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_340120" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2100, 2105, 2095, 2105, 954,0) , 
(20210513, 2155, 2155, 2100, 2150, 245,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_377400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2075, 2085, 2070, 2075, 34650,0) , 
(20210513, 2070, 2085, 2065, 2075, 23019,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_221840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5390, 5390, 5250, 5390, 78194,0) , 
(20210513, 5350, 5600, 5240, 5490, 259126,2.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_106190" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17000, 17300, 16750, 16900, 25291,0) , 
(20210513, 16500, 16650, 15950, 16150, 60314,42.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_019490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7050, 7490, 6810, 7260, 379094,0) , 
(20210513, 7010, 7720, 7000, 7660, 714739,1.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000087" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 23600, 23600, 22000, 22850, 9990,0) , 
(20210513, 22750, 22900, 22250, 22850, 4875,3.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36100, 36300, 34750, 35000, 617603,0) , 
(20210513, 34250, 35800, 34200, 35350, 518835,7.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000145" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20000, 20400, 19200, 19600, 8774,0) , 
(20210513, 19350, 19800, 19350, 19450, 5892,2.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000140" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16850, 17200, 16650, 16750, 65540,0) , 
(20210513, 16300, 17050, 16300, 16750, 70265,5.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11600, 11600, 10950, 11000, 252345,0) , 
(20210513, 10800, 11300, 10700, 10750, 282595,0.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6750, 7270, 6710, 7090, 2964761,0) , 
(20210513, 6930, 7460, 6840, 7120, 1780090,1.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_036460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33050, 33100, 31900, 32100, 535779,0) , 
(20210513, 31500, 32700, 31500, 32100, 504748,9.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039340" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6800, 6800, 6550, 6630, 55925,0) , 
(20210513, 6610, 6750, 6510, 6720, 70877,4.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 43800, 44100, 43100, 43650, 17475,0) , 
(20210513, 43550, 44650, 42550, 43350, 25678,6.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 86200, 86600, 85400, 85700, 9334,0) , 
(20210513, 85500, 86200, 84800, 85700, 4925,76.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5070, 5080, 4865, 4905, 704319,0) , 
(20210513, 4750, 4880, 4635, 4675, 592762,0.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 78800, 81000, 77800, 79800, 88353,0) , 
(20210513, 78800, 81300, 77900, 80200, 57187,25.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_222980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9700, 10100, 9640, 9780, 346932,0) , 
(20210513, 9540, 9860, 9510, 9670, 115734,1.46)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_331660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18350, 18350, 18350, 18350, 0,0) , 
(20210513, 18350, 18350, 18350, 18350, 0,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_318000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9090, 9140, 8680, 8800, 91897,0) , 
(20210513, 8650, 8750, 8380, 8500, 121549,3.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_096300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 235, 237, 234, 237, 236018,0) , 
(20210513, 236, 238, 233, 237, 252900,0.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_256840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7760, 7950, 7680, 7850, 892947,0) , 
(20210513, 8010, 8490, 7800, 7850, 5120812,0.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16850, 18400, 16600, 17000, 2378768,0) , 
(20210513, 17300, 18750, 17200, 17400, 2000238,0.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5320, 5520, 5320, 5400, 2547936,0) , 
(20210513, 5570, 6200, 4850, 4850, 28892050,2.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26300, 26300, 25850, 26250, 10372,0) , 
(20210513, 26050, 26600, 25700, 26250, 20797,5.9)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 278000, 279000, 270000, 275500, 7153,0) , 
(20210513, 275000, 287500, 273500, 284500, 20166,64.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14750, 14800, 14200, 14300, 208250,0) , 
(20210513, 14000, 14700, 13850, 14250, 333722,6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19400, 19550, 18750, 19050, 393114,0) , 
(20210513, 18700, 19100, 18500, 18650, 208242,9.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_033270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 58300, 58500, 56200, 56400, 364161,0) , 
(20210513, 55000, 57700, 54100, 57200, 254061,7.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_080720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16700, 16700, 15900, 16000, 191993,0) , 
(20210513, 15850, 15850, 15200, 15250, 179596,0.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4865, 4865, 4720, 4785, 325997,0) , 
(20210513, 4700, 4905, 4685, 4825, 764895,11.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_015760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24500, 24550, 23700, 23900, 4011373,0) , 
(20210513, 23550, 24100, 23500, 23750, 2830025,16.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 37700, 39400, 36650, 38800, 737981,0) , 
(20210513, 38300, 44150, 37800, 40850, 2339491,2.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_063570" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7270, 7280, 6890, 7040, 991976,0) , 
(20210513, 6900, 7030, 6810, 7000, 592244,5.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7790, 7800, 7560, 7600, 263688,0) , 
(20210513, 7450, 7700, 7300, 7330, 304665,1.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006200" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1285, 1305, 1245, 1255, 656272,0) , 
(20210513, 1245, 1250, 1210, 1230, 518732,2.54)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1440, 0,0) , 
(20210513, 0, 0, 0, 1440, 0,0.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4035, 4035, 3965, 3990, 180240,0) , 
(20210513, 3920, 3960, 3850, 3850, 143767,2.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6860, 6910, 6730, 6750, 154837,0) , 
(20210513, 6580, 6840, 6580, 6730, 128198,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9030, 9180, 8830, 8910, 32743,0) , 
(20210513, 8750, 8900, 8750, 8800, 19632,64.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_310870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2180, 2180, 2130, 2155, 48213,0) , 
(20210513, 2140, 2155, 2090, 2120, 190699,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_368770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2110, 2110, 2090, 2100, 3297,0) , 
(20210513, 2100, 2100, 2090, 2100, 12298,0.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 159000, 159500, 152000, 153500, 750161,0) , 
(20210513, 149500, 155500, 148500, 149000, 685438,18.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8260, 8440, 8090, 8310, 188652,0) , 
(20210513, 8230, 8420, 8100, 8370, 112998,1.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2965, 3050, 2790, 2830, 419685,0) , 
(20210513, 2780, 2805, 2650, 2735, 253298,1.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000970" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11400, 11550, 10400, 10700, 913303,0) , 
(20210513, 10300, 10500, 10100, 10150, 470660,3.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_104700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12250, 12450, 11500, 11900, 582856,0) , 
(20210513, 11550, 11800, 11100, 11350, 377041,12.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12400, 12450, 11850, 12000, 1393125,0) , 
(20210513, 11650, 12000, 11600, 11750, 680733,8.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_023760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 786, 786, 761, 774, 618798,0) , 
(20210513, 750, 786, 750, 766, 1416128,0.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5010, 5120, 4860, 4950, 401301,0) , 
(20210513, 4820, 4960, 4780, 4850, 255630,0.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9710, 9780, 9490, 9580, 333811,0) , 
(20210513, 9380, 9580, 9360, 9400, 289459,10.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 282, 0,0) , 
(20210513, 0, 0, 0, 282, 0,1.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_161890" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 58000, 58200, 56600, 56900, 164136,0) , 
(20210513, 56000, 57500, 55600, 57000, 171882,28.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 32150, 32200, 30700, 31300, 144353,0) , 
(20210513, 30700, 31750, 30350, 31200, 92932,16.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_021650" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4885, 4920, 4705, 4800, 103198,0) , 
(20210513, 4735, 4780, 4640, 4695, 122187,5.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_161390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 49250, 50000, 47550, 49150, 303430,0) , 
(20210513, 48850, 49450, 47800, 48050, 402553,41.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1815, 1830, 1755, 1765, 1795745,0) , 
(20210513, 1715, 1780, 1680, 1745, 1547035,0.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2390, 2410, 2310, 2345, 1058563,0) , 
(20210513, 2320, 2365, 2280, 2335, 743146,15.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_152550" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1690, 1690, 1670, 1670, 25940,0) , 
(20210513, 1675, 1675, 1665, 1670, 110411,0.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_168490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2000, 2000, 1965, 1965, 8052,0) , 
(20210513, 1965, 1990, 1960, 1980, 28285,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071055" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 88700, 88700, 85800, 87100, 67575,0) , 
(20210513, 85000, 87300, 84400, 86300, 42768,16.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_071050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 109000, 109500, 102000, 105500, 573857,0) , 
(20210513, 102000, 105500, 101000, 104000, 716572,32.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4080, 4220, 3950, 4020, 802104,0) , 
(20210513, 3850, 3970, 3750, 3855, 797054,0.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 51600, 53400, 50800, 51000, 383123,0) , 
(20210513, 49200, 54100, 48800, 52000, 468849,0.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5170, 5200, 5020, 5040, 120298,0) , 
(20210513, 4940, 5060, 4860, 4910, 91672,0.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3250, 3270, 3130, 3165, 332796,0) , 
(20210513, 3070, 3145, 3070, 3085, 256963,4.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31900, 32100, 30950, 31200, 706366,0) , 
(20210513, 30700, 31550, 30450, 30900, 726948,13.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12150, 12200, 11800, 11900, 94538,0) , 
(20210513, 11750, 11850, 11650, 11750, 86530,0.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 36900, 36900, 35200, 35800, 34611,0) , 
(20210513, 35650, 36000, 34950, 35700, 20286,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_030520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18950, 18950, 18350, 18600, 194651,0) , 
(20210513, 18200, 18600, 18200, 18300, 169234,8.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9230, 9260, 8980, 9030, 186926,0) , 
(20210513, 8770, 9080, 8730, 8950, 172477,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15800, 15850, 15150, 15350, 264388,0) , 
(20210513, 14900, 15350, 14800, 14900, 222824,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28950, 29150, 28350, 28700, 57890,0) , 
(20210513, 28400, 29150, 28250, 28750, 69427,2.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_256150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20000, 20000, 19500, 19650, 18933,0) , 
(20210513, 19400, 21400, 19300, 20200, 80533,0.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6150, 6160, 5880, 5960, 548170,0) , 
(20210513, 5820, 5960, 5710, 5750, 526309,3.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9930, 10100, 9410, 9630, 1028429,0) , 
(20210513, 9420, 9660, 9190, 9270, 399697,0.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44950, 45300, 43900, 44400, 116889,0) , 
(20210513, 43400, 44400, 42300, 43500, 103135,12.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12150, 12150, 11550, 11800, 170483,0) , 
(20210513, 11600, 11850, 11400, 11550, 73941,4.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31250, 32200, 31000, 31700, 1085797,0) , 
(20210513, 30700, 30950, 29600, 30000, 1248513,6.05)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008930" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 70900, 71600, 69900, 70500, 194927,0) , 
(20210513, 69400, 74500, 69400, 74500, 585757,1.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_128940" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 346000, 351000, 338000, 343000, 56109,0) , 
(20210513, 342000, 350000, 336000, 347500, 67816,13.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_047080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5820, 6030, 5570, 5730, 798394,0) , 
(20210513, 5600, 5650, 5460, 5500, 256426,1.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 112000, 112500, 107000, 108000, 78702,0) , 
(20210513, 105500, 109000, 105500, 106500, 55976,23.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_020000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 50300, 50900, 48700, 49700, 187113,0) , 
(20210513, 48800, 50400, 47950, 48850, 150943,28.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8420, 8490, 8220, 8490, 74085,0) , 
(20210513, 8300, 8600, 8210, 8330, 153375,3.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_105630" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26900, 27400, 25700, 27100, 504342,0) , 
(20210513, 26300, 27650, 24650, 25650, 678801,7.03)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4775, 4775, 4580, 4695, 71298,0) , 
(20210513, 4600, 4645, 4400, 4605, 63773,1.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9460, 9460, 9090, 9250, 207844,0) , 
(20210513, 9250, 9580, 9030, 9090, 282628,3.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2270, 2315, 2180, 2210, 409519,0) , 
(20210513, 2180, 2220, 2135, 2145, 395989,1.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3525, 3650, 3470, 3500, 3628672,0) , 
(20210513, 3420, 3470, 3340, 3355, 1096507,1.96)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_070590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3475, 3510, 3410, 3475, 123162,0) , 
(20210513, 3380, 3400, 3310, 3310, 204567,2.26)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_213500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17100, 17100, 16500, 16850, 282950,0) , 
(20210513, 16500, 17000, 16400, 16650, 224026,15.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 241500, 242000, 229000, 231500, 87759,0) , 
(20210513, 229500, 239000, 229500, 232000, 62444,40.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004150" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4625, 4635, 4355, 4500, 519445,0) , 
(20210513, 4380, 4540, 4200, 4415, 283475,13.64)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_025750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2435, 2495, 2375, 2410, 21522775,0) , 
(20210513, 2360, 2365, 2270, 2285, 6811686,3.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_226440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1655, 1660, 1590, 1600, 881199,0) , 
(20210513, 1560, 1600, 1545, 1590, 671513,0.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_042520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15000, 15100, 14600, 14900, 132338,0) , 
(20210513, 14800, 14800, 14350, 14450, 97695,4.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 28700, 28700, 27300, 27500, 130756,0) , 
(20210513, 26700, 28000, 26300, 26900, 143587,15.2)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011700" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2365, 2365, 2270, 2310, 437825,0) , 
(20210513, 2260, 2410, 2250, 2350, 695239,6.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_078350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6280, 6340, 5950, 6080, 119970,0) , 
(20210513, 5900, 6060, 5860, 6000, 85572,2.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_045100" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18550, 19150, 18200, 18650, 362542,0) , 
(20210513, 18200, 18950, 18200, 18650, 200740,3.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001755" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 26500, 26500, 25650, 26350, 8174,0) , 
(20210513, 25700, 25700, 25250, 25250, 2911,0.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001750" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15500, 15600, 14750, 15200, 95346,0) , 
(20210513, 14900, 15050, 14500, 14900, 73053,7.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_018880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16700, 16800, 16000, 16300, 1395786,0) , 
(20210513, 15950, 16350, 15800, 15950, 1378470,19.22)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21400, 21600, 20750, 20950, 615865,0) , 
(20210513, 20500, 21000, 20500, 20600, 407213,6.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_014130" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7060, 7330, 6760, 6880, 828474,0) , 
(20210513, 6750, 7190, 6750, 6920, 380003,1.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_046110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6030, 6030, 5770, 5840, 87996,0) , 
(20210513, 5750, 5810, 5570, 5650, 106087,3.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024740" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2260, 2265, 2160, 2175, 1399342,0) , 
(20210513, 2125, 2215, 2100, 2195, 1286694,3.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2280, 2710, 2280, 2430, 48512925,0) , 
(20210513, 2390, 2565, 2325, 2405, 7624301,0.82)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_300720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 174000, 179000, 160500, 166500, 27907,0) , 
(20210513, 163500, 166000, 159500, 160500, 15648,2.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_123840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1255, 1275, 1210, 1230, 1213045,0) , 
(20210513, 1200, 1235, 1180, 1200, 975106,1.23)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002220" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3730, 3765, 3580, 3580, 943094,0) , 
(20210513, 3505, 3570, 3330, 3395, 443245,0.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006390" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 44600, 44700, 41900, 42400, 110520,0) , 
(20210513, 41250, 43000, 41250, 41750, 45361,0.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15250, 15550, 14700, 15050, 51658,0) , 
(20210513, 14700, 15000, 14350, 14650, 40591,3.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_007770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18200, 18350, 17050, 17400, 41025,0) , 
(20210513, 16950, 17550, 16800, 17250, 33310,4.49)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_051600" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35250, 35350, 34300, 34800, 302415,0) , 
(20210513, 34000, 38700, 34000, 38000, 1241824,9.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_130660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5190, 5200, 4990, 5070, 329476,0) , 
(20210513, 5040, 5190, 4970, 5120, 332161,1.27)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_107640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6200, 6200, 6200, 6200, 1,0) , 
(20210513, 6200, 6200, 6200, 6200, 1,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 40350, 40350, 39450, 39850, 82051,0) , 
(20210513, 39200, 40000, 39050, 39500, 60036,10.95)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_097230" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8960, 8960, 8500, 8590, 342425,0) , 
(20210513, 8400, 8540, 8140, 8240, 253023,21.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003480" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4510, 4510, 4190, 4310, 142825,0) , 
(20210513, 4310, 4400, 4210, 4300, 95982,1.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_18064K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 47800, 47800, 45000, 46200, 21902,0) , 
(20210513, 46250, 46300, 44800, 45050, 9666,1.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_180640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 58400, 60800, 57600, 59300, 395056,0) , 
(20210513, 59300, 60900, 58300, 60000, 242451,15.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1295, 1295, 1250, 1265, 1211889,0) , 
(20210513, 1255, 1285, 1220, 1265, 982866,2.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079170" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8690, 9080, 8660, 8800, 149791,0) , 
(20210513, 8800, 8800, 8540, 8630, 70317,10.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2530, 2535, 2400, 2460, 1729947,0) , 
(20210513, 2410, 2460, 2360, 2380, 1408858,1.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16050, 16400, 15950, 16000, 240635,0) , 
(20210513, 15750, 16250, 15600, 16250, 101790,14.32)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_054920" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11050, 11350, 10700, 11150, 357828,0) , 
(20210513, 10800, 11100, 10700, 10700, 183875,2.13)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002680" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1670, 2155, 1660, 2155, 25442063,0) , 
(20210513, 1970, 1975, 1785, 1785, 5475735,1.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_066110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 480, 0,0) , 
(20210513, 0, 0, 0, 480, 0,2.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000885" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 47950, 47950, 47000, 47150, 4255,0) , 
(20210513, 47000, 48000, 46650, 47350, 4751,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_00088K" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 16000, 16100, 15350, 15600, 158093,0) , 
(20210513, 15500, 16000, 15300, 15550, 108937,9.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000880" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 34100, 34500, 31950, 32050, 1713437,0) , 
(20210513, 31550, 33500, 30900, 32850, 1558367,20.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_088350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3735, 3900, 3715, 3840, 13782912,0) , 
(20210513, 3800, 4590, 3785, 4215, 95501647,8.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5210, 5250, 4960, 5020, 1579343,0) , 
(20210513, 4900, 5520, 4890, 5310, 7798767,9.16)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009835" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 57500, 58800, 54900, 55800, 16902,0) , 
(20210513, 53500, 56000, 53500, 54900, 7397,2.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_009830" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 46250, 47100, 44250, 44700, 2338039,0) , 
(20210513, 43900, 44650, 43500, 43900, 1663057,17.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_272210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 17350, 17600, 17050, 17150, 490324,0) , 
(20210513, 16900, 17400, 16700, 16900, 750989,2.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_317320" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3675, 4100, 3585, 3685, 3004795,0) , 
(20210513, 3540, 3730, 3505, 3640, 349442,0.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 41000, 41750, 39650, 40750, 1201996,0) , 
(20210513, 39950, 43000, 39700, 42250, 1905818,18.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003535" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 30300, 36100, 29200, 32300, 5709081,0) , 
(20210513, 30000, 31900, 29550, 30150, 964764,0.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5500, 5910, 5310, 5720, 31724892,0) , 
(20210513, 5400, 5550, 5130, 5200, 10473034,5.43)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_340440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2125, 2145, 2105, 2135, 8627,0) , 
(20210513, 2125, 2150, 2125, 2145, 21062,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_195870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33600, 33850, 32650, 33150, 185875,0) , 
(20210513, 32450, 32650, 31700, 32050, 218448,1.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_034810" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15400, 15600, 14900, 15100, 81140,0) , 
(20210513, 14900, 15250, 14750, 15000, 59685,0.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_076610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1015, 1025, 1000, 1005, 254271,0) , 
(20210513, 1005, 1015, 996, 1000, 282459,0.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_059270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22750, 22950, 21350, 21500, 48164,0) , 
(20210513, 21100, 21400, 20600, 20850, 44079,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_101530" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10500, 10650, 10150, 10400, 179744,0) , 
(20210513, 10100, 10950, 10100, 10550, 277633,0.88)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_220180" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5300, 5380, 5150, 5310, 102068,0) , 
(20210513, 5270, 5340, 5020, 5100, 134838,0.47)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_143210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6690, 6690, 6530, 6600, 31822,0) , 
(20210513, 6550, 6620, 6400, 6510, 28106,0.69)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 1770, 0,0) , 
(20210513, 0, 0, 0, 1770, 0,0.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_900270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 603, 603, 592, 594, 304459,0) , 
(20210513, 590, 591, 583, 586, 205969,28.79)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084990" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 31050, 31200, 29850, 30350, 272109,0) , 
(20210513, 29700, 30950, 29400, 30250, 201414,8.93)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000725" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 241500, 241500, 235000, 239500, 2695,0) , 
(20210513, 230000, 232500, 227000, 229000, 4000,6.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 66500, 67300, 62900, 63600, 403321,0) , 
(20210513, 61200, 62800, 59900, 60900, 445699,20.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000720" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 54100, 54300, 51500, 52100, 1205327,0) , 
(20210513, 50500, 53000, 50200, 51500, 1094385,21.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_170030" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9110, 9400, 9080, 9330, 425415,0) , 
(20210513, 9200, 9510, 9170, 9380, 579353,1.6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10550, 11250, 10500, 10850, 3947916,0) , 
(20210513, 10700, 11500, 10500, 11300, 3930704,10.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_086280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 197000, 198500, 192500, 196000, 165665,0) , 
(20210513, 191000, 196000, 187000, 189000, 372092,34.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064350" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21350, 21650, 20200, 20250, 3478199,0) , 
(20210513, 19800, 20550, 19800, 20100, 1668984,5.89)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079430" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 18700, 19100, 18200, 18500, 416679,0) , 
(20210513, 18200, 18550, 17900, 18200, 191047,5.92)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_012330" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 277500, 284500, 274000, 278500, 447873,0) , 
(20210513, 272500, 278000, 272000, 277000, 405687,37.33)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_319400" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5400, 5580, 5350, 5460, 433024,0) , 
(20210513, 5290, 5790, 5290, 5520, 833457,0.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010620" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 93200, 94600, 90400, 92300, 678745,0) , 
(20210513, 90000, 94400, 88600, 89600, 739762,11.58)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_052260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22000, 22350, 21750, 21800, 117742,0) , 
(20210513, 21550, 21950, 21450, 21500, 77982,4.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_048410" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 38150, 38150, 35200, 35450, 2018505,0) , 
(20210513, 34500, 45000, 34400, 38550, 13048622,6)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069960" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 96400, 96400, 92600, 93300, 255627,0) , 
(20210513, 91000, 93100, 90800, 91100, 273617,19.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004565" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 114000, 116000, 108000, 109000, 6814,0) , 
(20210513, 105500, 108000, 101000, 101500, 6644,0.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24050, 26150, 23000, 23900, 2409801,0) , 
(20210513, 23000, 23450, 21650, 22050, 808910,4.73)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016790" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19400, 21200, 18700, 18850, 1748046,0) , 
(20210513, 18400, 19500, 18200, 19100, 206151,0.25)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7070, 7080, 6900, 6910, 263774,0) , 
(20210513, 6790, 7010, 6780, 6840, 215710,0.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_322000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33600, 34150, 31950, 33000, 86867,0) , 
(20210513, 32300, 32700, 32100, 32150, 49191,1.61)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_041440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6020, 6030, 5810, 5900, 129265,0) , 
(20210513, 5770, 5970, 5750, 5760, 83161,2.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10650, 10650, 10200, 10300, 34777,0) , 
(20210513, 10000, 10350, 10000, 10100, 46207,4.77)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_017800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 50800, 51800, 49000, 49800, 597762,0) , 
(20210513, 48800, 50200, 48400, 48700, 414576,29.48)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_307950" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 109500, 112500, 107000, 109000, 56082,0) , 
(20210513, 106000, 109500, 105000, 107000, 47787,1.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011210" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 74600, 78300, 74500, 77800, 1559659,0) , 
(20210513, 76300, 81000, 75700, 79400, 1330617,7.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10350, 10800, 10050, 10800, 496108,0) , 
(20210513, 10450, 11000, 10450, 11000, 343613,28.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 24250, 25000, 23900, 24850, 709647,0) , 
(20210513, 24300, 24750, 22550, 22650, 990365,11.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005385" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 113000, 116000, 111500, 112000, 108790,0) , 
(20210513, 110000, 112500, 108500, 111000, 94565,58.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005387" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 113000, 117000, 111500, 112500, 106909,0) , 
(20210513, 110500, 114000, 109500, 113000, 190007,62)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005389" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 105000, 108000, 103500, 105000, 28202,0) , 
(20210513, 102000, 105500, 100000, 105000, 22438,30.67)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005380" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 226500, 233000, 223000, 227500, 1649500,0) , 
(20210513, 224000, 232000, 221500, 229500, 1583094,30.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 61900, 62200, 59100, 60600, 1869292,0) , 
(20210513, 59000, 60400, 56200, 57000, 2133174,20.3)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_267250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 78000, 79000, 75100, 76000, 418393,0) , 
(20210513, 74700, 76500, 72200, 75000, 457162,17.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001500" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14900, 15050, 14400, 14750, 271555,0) , 
(20210513, 14250, 14750, 14200, 14300, 313046,4.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011760" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22100, 22300, 21300, 21600, 210108,0) , 
(20210513, 21200, 21550, 20750, 21100, 148246,7.29)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_227840" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15350, 15450, 14700, 14900, 124443,0) , 
(20210513, 14500, 15200, 14450, 15000, 147412,4.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_126560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4385, 4445, 4325, 4355, 319489,0) , 
(20210513, 4365, 4420, 4255, 4305, 355653,14.24)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_001450" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 25300, 25300, 23600, 23900, 2022900,0) , 
(20210513, 23500, 25500, 23400, 24950, 1722507,36.39)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_057050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 88500, 89300, 85700, 86700, 44613,0) , 
(20210513, 84700, 89300, 84400, 88800, 72825,31.1)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_092300" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 5460, 5460, 5250, 5400, 288368,0) , 
(20210513, 5340, 5480, 5250, 5370, 222305,1.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_053660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 400, 0,0) , 
(20210513, 0, 0, 0, 400, 0,0.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_011080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1750, 1765, 1685, 1695, 296050,0) , 
(20210513, 1675, 1750, 1645, 1685, 279936,2.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4730, 4770, 4585, 4625, 222661,0) , 
(20210513, 4530, 4675, 4515, 4540, 203912,0.18)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 7850, 7990, 7570, 7650, 532150,0) , 
(20210513, 7400, 7760, 7400, 7480, 223736,4.57)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_111110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 13750, 14550, 13550, 14450, 205943,0) , 
(20210513, 14300, 15000, 13950, 14000, 155244,4.63)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008775" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 91700, 92400, 89200, 89800, 44573,0) , 
(20210513, 89000, 92100, 88000, 90100, 35531,1.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_008770" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 94100, 94200, 91300, 93200, 791575,0) , 
(20210513, 91800, 95700, 91800, 93700, 1237125,20.81)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_060560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1205, 1215, 1155, 1160, 1924834,0) , 
(20210513, 1135, 1190, 1130, 1155, 1211625,1.66)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_064240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2995, 3030, 2910, 3020, 108385,0) , 
(20210513, 2970, 3020, 2900, 2940, 59249,4.56)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_039610" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9150, 9490, 8990, 9260, 1255184,0) , 
(20210513, 9050, 9310, 8640, 8650, 440609,2.78)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_002460" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 14000, 14250, 13550, 14050, 199099,0) , 
(20210513, 13700, 14050, 13600, 13750, 145624,11.55)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_378850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6560, 6670, 6350, 6520, 458757,0) , 
(20210513, 6280, 6520, 6280, 6380, 159646,1.74)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_241590" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 21200, 21850, 20550, 21500, 412063,0) , 
(20210513, 20850, 21600, 20250, 20650, 293535,3.5)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_006060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9430, 9430, 8830, 9060, 1265970,0) , 
(20210513, 8850, 9050, 8670, 8720, 708233,18.07)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_013520" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2610, 2625, 2255, 2405, 5664526,0) , 
(20210513, 2315, 2360, 2165, 2335, 1578317,1.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010690" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4910, 5190, 4865, 5140, 511094,0) , 
(20210513, 5050, 5450, 5000, 5360, 1373505,1.68)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_126640" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2010, 2060, 1990, 2020, 967305,0) , 
(20210513, 1960, 2020, 1960, 1980, 558466,1.42)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_133820" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3125, 3125, 2990, 3045, 1160254,0) , 
(20210513, 2925, 3040, 2885, 2970, 591377,0.86)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_061250" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4250, 4260, 4120, 4145, 892843,0) , 
(20210513, 4125, 4235, 4060, 4070, 690521,0.84)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 2775, 2795, 2685, 2745, 207451,0) , 
(20210513, 2680, 2735, 2635, 2685, 159726,3.75)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000850" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 39550, 39750, 38050, 38350, 14050,0) , 
(20210513, 37700, 38550, 37350, 38000, 15684,8.31)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_016580" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20950, 21050, 20500, 20600, 134706,0) , 
(20210513, 20400, 20750, 20100, 20600, 110618,13.06)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032560" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11150, 11400, 10450, 10700, 940372,0) , 
(20210513, 10350, 10950, 9980, 10050, 821664,2.35)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_004800" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 106500, 107500, 102500, 104000, 141306,0) , 
(20210513, 100500, 105000, 100500, 102500, 94038,9.87)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_094280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20250, 20250, 19400, 19600, 44964,0) , 
(20210513, 19500, 19800, 19250, 19500, 20674,0.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_097870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12150, 12900, 11400, 11800, 1692422,0) , 
(20210513, 11450, 12150, 11450, 11700, 675882,1.09)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298040" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 66100, 67100, 65600, 66400, 54941,0) , 
(20210513, 64700, 66000, 64000, 64500, 54445,7.28)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298050" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 377000, 381000, 355000, 366000, 116997,0) , 
(20210513, 351500, 370000, 351500, 361500, 65582,9.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 763000, 763000, 715000, 726000, 87189,0) , 
(20210513, 703000, 721000, 695000, 699000, 84838,20.02)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_298000" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 407000, 409500, 376500, 382500, 128584,0) , 
(20210513, 371000, 389500, 363500, 382500, 74656,9.83)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_093370" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 10200, 10300, 9960, 10000, 831168,0) , 
(20210513, 9910, 9950, 9750, 9830, 670286,5.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_050090" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1205, 1265, 1185, 1190, 3646921,0) , 
(20210513, 1160, 1205, 1150, 1170, 980944,0.72)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_081660" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 55800, 57100, 53500, 54900, 1256604,0) , 
(20210513, 53600, 57700, 53500, 55100, 1168821,44.08)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_290270" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 6290, 6290, 6050, 6100, 88473,0) , 
(20210513, 6030, 6100, 5920, 6010, 78459,4.51)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005870" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8290, 8290, 7990, 8110, 191351,0) , 
(20210513, 7900, 8250, 7850, 8060, 152295,22.19)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_284420" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 15000, 15000, 14850, 14900, 1033,0) , 
(20210513, 15600, 15600, 15000, 15000, 324,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_090710" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 1225, 1280, 1220, 1250, 5738976,0) , 
(20210513, 1225, 1260, 1210, 1215, 2545537,10.38)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_205470" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 19350, 19950, 17600, 17900, 4645943,0) , 
(20210513, 17450, 19900, 17150, 18550, 9385452,0.76)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_115160" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4555, 4555, 4300, 4425, 191307,0) , 
(20210513, 4310, 4475, 4310, 4400, 84179,6.71)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_028080" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4270, 4280, 4120, 4160, 29292,0) , 
(20210513, 4040, 4140, 4020, 4050, 28758,0.15)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_032860" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12600, 12900, 11950, 12650, 548313,0) , 
(20210513, 12350, 12550, 12100, 12250, 299897,0.85)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_200670" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 35550, 36350, 33550, 34050, 303866,0) , 
(20210513, 33050, 35600, 32900, 34000, 615587,5.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_212310" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 3025, 3250, 3025, 3050, 202,0) , 
(20210513, 3350, 3350, 2985, 3245, 430,0)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_079980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 11200, 11750, 11100, 11650, 749933,0) , 
(20210513, 11400, 11950, 11200, 11250, 588927,4.91)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_065510" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8960, 8970, 8660, 8740, 102656,0) , 
(20210513, 8620, 8890, 8560, 8700, 83139,6.17)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_005010" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 20400, 20800, 18250, 19750, 830752,0) , 
(20210513, 18950, 19450, 18050, 18350, 409651,2.34)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_243070" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 65900, 66400, 62500, 63300, 262594,0) , 
(20210513, 61900, 67200, 61100, 62900, 538162,18.8)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_084110" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 70800, 74000, 67500, 68600, 781320,0) , 
(20210513, 67000, 81100, 66500, 75000, 3211437,9.65)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_145020" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 200300, 209900, 198700, 209400, 223062,0) , 
(20210513, 206300, 210500, 200800, 203200, 108273,75.59)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_069260" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 22150, 22250, 21800, 22150, 267768,0) , 
(20210513, 21950, 22150, 21750, 21900, 178412,8.7)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_024060" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8690, 9900, 8210, 8490, 18372402,0) , 
(20210513, 8940, 10250, 8920, 9420, 26150788,0.45)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_010240" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 8720, 8810, 8420, 8620, 144613,0) , 
(20210513, 8410, 8650, 8360, 8630, 131043,2.01)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_189980" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4125, 4225, 3950, 4050, 708029,0) , 
(20210513, 4000, 4060, 3930, 3950, 501582,0.4)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000545" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12850, 13200, 12550, 13000, 29554,0) , 
(20210513, 12550, 12900, 11950, 12150, 24819,1.12)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000547" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 33950, 36600, 33350, 36600, 19371,0) , 
(20210513, 35000, 36150, 33550, 33650, 12838,1.11)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_000540" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 4935, 4935, 4770, 4875, 500608,0) , 
(20210513, 4830, 5150, 4695, 4850, 2180569,2.44)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_003280" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 0, 0, 0, 258, 0,0) , 
(20210513, 0, 0, 0, 258, 0,23.04)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_037440" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 9240, 10500, 8650, 8940, 4354293,0) , 
(20210513, 8770, 9300, 8410, 8910, 624997,0.14)  
ON CONFLICT ("Date")  DO NOTHING  ; 

INSERT INTO "price_day"."tb_238490" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES(20210512, 12900, 12950, 12450, 12550, 116772,0) , 
(20210513, 12350, 12500, 12300, 12300, 105758,0.52)  
ON CONFLICT ("Date")  DO NOTHING  ; 

