SELECT AREA
, RESOURCE_NAME
, RESOURCE_TYPE
, PRIORITY
, SUM(NVL(to_number(CC6011_Non_Contract),0) + NVL(to_number(CC6011_Contract),0) + NVL(to_number(CC6460),0) + NVL(to_number(CC6470),0) + NVL(to_number(CC6475),0) + NVL(to_number(CC6482),0) + NVL(to_number(CC6488),0) + NVL(to_number(CC6630),0) + NVL(to_number(CC6620),0)) AS Total_Energy_Amount
, SUM(NVL(to_number(CC6100),0) + NVL(to_number(CC6124),0) + NVL(to_number(CC6170),0) + NVL(to_number(CC6200),0) + NVL(to_number(CC6224),0) + NVL(to_number(CC6270),0) + NVL(to_number(CC6500),0) + NVL(to_number(CC6524),0) + NVL(to_number(CC6570),0) + NVL(to_number(CC6600),0) + NVL(to_number(CC6624),0) + NVL(to_number(CC6670),0) + NVL(to_number(CC7251),0) + NVL(to_number(CC7261),0) + NVL(to_number(CC7070_Total_Settlement),0)
	+ NVL(to_number(CC7071_Total_Settlement),0) + NVL(to_number(CC7081_Total_Settlement),0) + NVL(to_number(CC7077),0) + ((-1*NVL(to_number(CC7077),0))+ NVL(to_number(CC7078_Off_Peak),0) + NVL(to_number(CC7078_Peak),0)) + NVL(to_number(CC7087),0) + ((-1*NVL(to_number(CC7087),0))+ NVL(to_number(CC7088_Off_Peak),0) 
	+ NVL(to_number(CC7088_Peak),0)) + NVL(to_number(CC8831),0) + NVL(to_number(CC8830),0)) AS Total_Capacity_Amount
, SUM(NVL(to_number(Total_Output_MWh),0)) AS Total_Output_MWh
, SUM(NVL(to_number(Uninstructed_MWh_Gross),0)) AS Uninstructed_MWh_Gross
, SUM(NVL(to_number(CC6011_Non_Contract),0)) AS CC6011_Non_Contract
, SUM(NVL(to_number(CC6011_Contract),0)) AS CC6011_Contract
, SUM(NVL(to_number(CC6460),0)) AS CC6460
, SUM(NVL(to_number(CC6470),0)) AS CC6470
, SUM(NVL(to_number(CC6475),0)) AS CC6475
, SUM(NVL(to_number(CC6482),0)) AS CC6482
, SUM(NVL(to_number(CC6488),0)) AS CC6488
, SUM(NVL(to_number(CC6630),0)) AS CC6630
, SUM(NVL(to_number(CC6620),0)) AS CC6620
, SUM(NVL(to_number(CC6100),0)+NVL(to_number(CC6170),0)) AS CC6100_6170
, SUM(NVL(to_number(CC6124),0)) AS CC6124
, SUM(NVL(to_number(CC6200),0)+NVL(to_number(CC6270),0)) AS CC6200_6270
, SUM(NVL(to_number(CC6224),0)) AS CC6224
, SUM(NVL(to_number(CC6500),0)+NVL(to_number(CC6570),0)) AS CC6500_6570
, SUM(NVL(to_number(CC6524),0)) AS CC6524
, SUM(NVL(to_number(CC6600),0)+NVL(to_number(CC6670),0)) AS CC6600_6670
, SUM(NVL(to_number(CC6624),0)) AS CC6624
, SUM(NVL(to_number(CC7070_Total_Settlement),0)) AS CC7070
, SUM(NVL(to_number(CC7071_Total_Settlement),0)) AS CC7071	
, SUM(((-1*NVL(to_number(CC7077),0))+ NVL(to_number(CC7078_Off_Peak),0) + NVL(to_number(CC7078_Peak),0))) AS CC7078 
, SUM(NVL(to_number(CC7081_Total_Settlement),0)) AS CC7081
, SUM(((-1*NVL(to_number(CC7087),0))+ NVL(to_number(CC7088_Off_Peak),0) + NVL(to_number(CC7088_Peak),0))) AS CC7088
, SUM(NVL(to_number(CC8831),0)+NVL(to_number(CC8830),0)) AS RAAIM
FROM 
 (SELECT CASE WHEN resource_name = 'HATCR1_7_UNIT' THEN 'Shasta - Hydro'
		WHEN resource_name = 'HATCR2_7_UNIT' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT1_7_UNIT 1' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT1_7_UNIT 2' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT3_7_PL1X3' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT4_7_PL1X2' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT5_7_PL1X2' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT5_7_PL3X4' THEN 'Shasta - Hydro'
		WHEN resource_name = 'BLACK_7_UNIT 1' THEN 'Shasta - Hydro'
		WHEN resource_name = 'BLACK_7_UNIT 2' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT6_7_UNIT 1' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT6_7_UNIT 2' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT7_7_UNIT 1' THEN 'Shasta - Hydro'
		WHEN resource_name = 'PIT7_7_UNIT 2' THEN 'Shasta - Hydro'
		WHEN resource_name = 'COLEMN_2_UNIT' THEN 'Shasta - Hydro'
		WHEN resource_name = 'COWCRK_2_UNIT' THEN 'Shasta - Hydro'
		WHEN resource_name = 'INSKIP_2_UNIT' THEN 'Shasta - Hydro'
		WHEN resource_name = 'KILARC_2_UNIT 1' THEN 'Shasta - Hydro'
		WHEN resource_name = 'SOUTH_2_UNIT' THEN 'Shasta - Hydro'
		WHEN resource_name = 'VOLTA_2_UNIT 1' THEN 'Shasta - Hydro'
		WHEN resource_name = 'VOLTA_2_UNIT 2' THEN 'Shasta - Hydro'
		WHEN resource_name = 'HMLTBR_6_UNITS' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'BUTTVL_7_UNIT 1' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'CARBOU_7_UNIT 1' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'CARBOU_7_PL2X3' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'CARBOU_7_PL4X5' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'BUCKCK_7_OAKFLT' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'BELDEN_7_UNIT 1' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'RCKCRK_7_UNIT 1' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'RCKCRK_7_UNIT 2' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'BUCKCK_7_PL1X2' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'CRESTA_7_PL1X2' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'POEPH_7_UNIT 1' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'POEPH_7_UNIT 2' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'POTTER_6_UNITS' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'TOADTW_6_UNIT' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'DSABLA_7_UNIT' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'CNTRVL_6_UNIT' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'CLRKRD_6_LIMESD' THEN 'DeSabla - Hydro'
		WHEN resource_name = 'NAROW1_2_UNIT' THEN 'Central Hydro'
		WHEN resource_name = 'SPAULD_6_UNIT12' THEN 'Central Hydro'
		WHEN resource_name = 'SPAULD_6_UNIT 3' THEN 'Central Hydro'
		WHEN resource_name = 'DEERCR_6_UNIT 1' THEN 'Central Hydro'
		WHEN resource_name = 'DRUM_7_PL1X2' THEN 'Central Hydro'
		WHEN resource_name = 'DRUM_7_PL3X4' THEN 'Central Hydro'
		WHEN resource_name = 'DRUM_7_UNIT 5' THEN 'Central Hydro'
		WHEN resource_name = 'BNNIEN_7_ALTAPH' THEN 'Central Hydro'
		WHEN resource_name = 'DUTCH1_7_UNIT 1' THEN 'Central Hydro'
		WHEN resource_name = 'HALSEY_6_UNIT' THEN 'Central Hydro'
		WHEN resource_name = 'WISE_1_UNIT 1' THEN 'Central Hydro'
		WHEN resource_name = 'WISE_1_UNIT 2' THEN 'Central Hydro'
		WHEN resource_name = 'NWCSTL_7_UNIT 1' THEN 'Central Hydro'
		WHEN resource_name = 'PLACVL_1_CHILIB' THEN 'Central Hydro'
		WHEN resource_name = 'SALTSP_7_UNITS' THEN 'Central Hydro'
		WHEN resource_name = 'TIGRCK_7_UNITS' THEN 'Central Hydro'
		WHEN resource_name = 'WESTPT_2_UNIT' THEN 'Central Hydro'
		WHEN resource_name = 'ELECTR_7_PL1X3' THEN 'Central Hydro'
		WHEN resource_name = 'SPRGAP_1_UNIT 1' THEN 'Central Hydro'
		WHEN resource_name = 'STANIS_7_UNIT 1' THEN 'Central Hydro'
		WHEN resource_name = 'PHOENX_1_UNIT' THEN 'Central Hydro'
		WHEN resource_name = 'MERCFL_6_UNIT' THEN 'Central Hydro'
		WHEN resource_name = 'HAASPH_7_PL1X2' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'BALCHS_7_UNIT 1' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'BALCHS_7_UNIT 2' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'BALCHS_7_UNIT 3' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'KINGRV_7_UNIT 1' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'CRNEVL_6_CRNVA' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'WISHON_6_UNITS' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'CRNEVL_6_SJQN 2' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'CRNEVL_6_SJQN 3' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'KERKH1_7_UNIT 1' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'KERKH1_7_UNIT 3' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'KERKH2_7_UNIT 1' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'SPRGVL_2_TULE' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'KRNCNY_6_UNIT' THEN 'Kings-Crane Valley - Hydro'
		WHEN resource_name = 'HELMPG_7_UNIT 1' THEN 'Helms - Hydro'
		WHEN resource_name = 'HELMPG_7_UNIT 2' THEN 'Helms - Hydro'
		WHEN resource_name = 'HELMPG_7_UNIT 3' THEN 'Helms - Hydro'
		WHEN resource_name = 'DIABLO_7_UNIT 1' THEN 'Diablo Canyon'
		WHEN resource_name = 'DIABLO_7_UNIT 2' THEN 'Diablo Canyon'
		WHEN resource_name = 'HUMBPP_6_UNITS' THEN 'Fossil'
		WHEN resource_name = 'HUMBPP_1_UNITS3' THEN 'Fossil'
		WHEN resource_name = 'COLUSA_2_PL1X3' THEN 'Fossil'
		WHEN resource_name = 'GATWAY_2_PL1X3' THEN 'Fossil'
		WHEN resource_name = 'CANTUA_1_SOLAR' THEN 'Solar'
		WHEN resource_name = 'SCHNDR_1_FIVPTS' THEN 'Solar'
		WHEN resource_name = 'GATES_2_SOLAR' THEN 'Solar'
		WHEN resource_name = 'GUERNS_6_SOLAR' THEN 'Solar'
		WHEN resource_name = 'GIFFEN_6_SOLAR' THEN 'Solar'
		WHEN resource_name = 'HURON_6_SOLAR' THEN 'Solar'
		WHEN resource_name = 'STROUD_6_SOLAR' THEN 'Solar'
		WHEN resource_name = 'VACADX_1_SOLAR' THEN 'Solar'
		WHEN resource_name = 'GATES_2_WSOLAR' THEN 'Solar'
		WHEN resource_name = 'SCHNDR_1_WSTSDE' THEN 'Solar'
		WHEN resource_name = 'CASTVL_2_FCELL' THEN 'Fuel Cell'
		WHEN resource_name = 'DALYCT_1_FCELL' THEN 'Fuel Cell'
		ELSE 'ERROR' END AS AREA
	, CASE WHEN resource_name = 'HATCR1_7_UNIT' THEN 'Hat Creek 1'
		WHEN resource_name = 'HATCR2_7_UNIT' THEN 'Hat Creek 2'
		WHEN resource_name = 'PIT1_7_UNIT 1' THEN 'Pit 1 U1'
		WHEN resource_name = 'PIT1_7_UNIT 2' THEN 'Pit 1 U2'
		WHEN resource_name = 'PIT3_7_PL1X3' THEN 'Pit 3 U1-U3'
		WHEN resource_name = 'PIT4_7_PL1X2' THEN 'Pit 4 U1 and U2'
		WHEN resource_name = 'PIT5_7_PL1X2' THEN 'Pit 5 U1 and U2'
		WHEN resource_name = 'PIT5_7_PL3X4' THEN 'Pit 5 U3 and U4'
		WHEN resource_name = 'BLACK_7_UNIT 1' THEN 'James B Black U1'
		WHEN resource_name = 'BLACK_7_UNIT 2' THEN 'James B Black U2'
		WHEN resource_name = 'PIT6_7_UNIT 1' THEN 'Pit 6 U1'
		WHEN resource_name = 'PIT6_7_UNIT 2' THEN 'Pit 6 U2'
		WHEN resource_name = 'PIT7_7_UNIT 1' THEN 'Pit 7 U1'
		WHEN resource_name = 'PIT7_7_UNIT 2' THEN 'Pit 7 U2'
		WHEN resource_name = 'COLEMN_2_UNIT' THEN 'Coleman'
		WHEN resource_name = 'COWCRK_2_UNIT' THEN 'Cow Creek U1 and U2'
		WHEN resource_name = 'INSKIP_2_UNIT' THEN 'Inskip'
		WHEN resource_name = 'KILARC_2_UNIT 1' THEN 'Kilarc U1 and U2'
		WHEN resource_name = 'SOUTH_2_UNIT' THEN 'South'
		WHEN resource_name = 'VOLTA_2_UNIT 1' THEN 'Volta 1'
		WHEN resource_name = 'VOLTA_2_UNIT 2' THEN 'Volta 2'
		WHEN resource_name = 'HMLTBR_6_UNITS' THEN 'Hamilton Branch U1 and U2'
		WHEN resource_name = 'BUTTVL_7_UNIT 1' THEN 'Butt Valley'
		WHEN resource_name = 'CARBOU_7_UNIT 1' THEN 'Caribou 1 U1'
		WHEN resource_name = 'CARBOU_7_PL2X3' THEN 'Caribou 1 U2 and U3'
		WHEN resource_name = 'CARBOU_7_PL4X5' THEN 'Caribou 2 U4 and U5'
		WHEN resource_name = 'BUCKCK_7_OAKFLT' THEN 'Oak Flat'
		WHEN resource_name = 'BELDEN_7_UNIT 1' THEN 'Belden'
		WHEN resource_name = 'RCKCRK_7_UNIT 1' THEN 'Rock Creek U1'
		WHEN resource_name = 'RCKCRK_7_UNIT 2' THEN 'Rock Creek U2'
		WHEN resource_name = 'BUCKCK_7_PL1X2' THEN 'Bucks Creek U1 and U2'
		WHEN resource_name = 'CRESTA_7_PL1X2' THEN 'Cresta U1 and U2'
		WHEN resource_name = 'POEPH_7_UNIT 1' THEN 'Poe U1'
		WHEN resource_name = 'POEPH_7_UNIT 2' THEN 'Poe U2'
		WHEN resource_name = 'POTTER_6_UNITS' THEN 'Potter Valley U1-U3'
		WHEN resource_name = 'TOADTW_6_UNIT' THEN 'Toadtown'
		WHEN resource_name = 'DSABLA_7_UNIT' THEN 'DeSabla'
		WHEN resource_name = 'CNTRVL_6_UNIT' THEN 'Centerville U1 and U2'
		WHEN resource_name = 'CLRKRD_6_LIMESD' THEN 'Lime Saddle U1 andU2'
		WHEN resource_name = 'NAROW1_2_UNIT' THEN 'Narrows'
		WHEN resource_name = 'SPAULD_6_UNIT12' THEN 'Spaulding 1 and 2'
		WHEN resource_name = 'SPAULD_6_UNIT 3' THEN 'Spaulding 3'
		WHEN resource_name = 'DEERCR_6_UNIT 1' THEN 'Deer Creek'
		WHEN resource_name = 'DRUM_7_PL1X2' THEN 'Drum 1 U1 and U2'
		WHEN resource_name = 'DRUM_7_PL3X4' THEN 'Drum 1 U3 and U4'
		WHEN resource_name = 'DRUM_7_UNIT 5' THEN 'Drum 2 U5'
		WHEN resource_name = 'BNNIEN_7_ALTAPH' THEN 'Alta Powerhouse'
		WHEN resource_name = 'DUTCH1_7_UNIT 1' THEN 'Dutch Flat 1'
		WHEN resource_name = 'HALSEY_6_UNIT' THEN 'Halsey'
		WHEN resource_name = 'WISE_1_UNIT 1' THEN 'Wise 1'
		WHEN resource_name = 'WISE_1_UNIT 2' THEN 'Wise 2'
		WHEN resource_name = 'NWCSTL_7_UNIT 1' THEN 'Newcastle'
		WHEN resource_name = 'PLACVL_1_CHILIB' THEN 'Chili Bar'
		WHEN resource_name = 'SALTSP_7_UNITS' THEN 'Salt Springs 1 and 2'
		WHEN resource_name = 'TIGRCK_7_UNITS' THEN 'Tiger Creek U1 and U2'
		WHEN resource_name = 'WESTPT_2_UNIT' THEN 'West Point'
		WHEN resource_name = 'ELECTR_7_PL1X3' THEN 'Electra U1-U3'
		WHEN resource_name = 'SPRGAP_1_UNIT 1' THEN 'Spring Gap'
		WHEN resource_name = 'STANIS_7_UNIT 1' THEN 'Stanislaus'
		WHEN resource_name = 'PHOENX_1_UNIT' THEN 'Phoenix'
		WHEN resource_name = 'MERCFL_6_UNIT' THEN 'Merced Falls'
		WHEN resource_name = 'HAASPH_7_PL1X2' THEN 'Haas U1, Haas U2'
		WHEN resource_name = 'BALCHS_7_UNIT 1' THEN 'Balch 1'
		WHEN resource_name = 'BALCHS_7_UNIT 2' THEN 'Balch 2 U2'
		WHEN resource_name = 'BALCHS_7_UNIT 3' THEN 'Balch 2 U3'
		WHEN resource_name = 'KINGRV_7_UNIT 1' THEN 'Kings River'
		WHEN resource_name = 'CRNEVL_6_CRNVA' THEN 'Crane Valley'
		WHEN resource_name = 'WISHON_6_UNITS' THEN 'San Joaquin 1A, AG Wishon U1-U4'
		WHEN resource_name = 'CRNEVL_6_SJQN 2' THEN 'San Joaquin 2'
		WHEN resource_name = 'CRNEVL_6_SJQN 3' THEN 'San Joaquin 3'
		WHEN resource_name = 'KERKH1_7_UNIT 1' THEN 'Kerckhoff 1 U1'
		WHEN resource_name = 'KERKH1_7_UNIT 3' THEN 'Kerckhoff 1 U3'
		WHEN resource_name = 'KERKH2_7_UNIT 1' THEN 'Kerckhoff 2'
		WHEN resource_name = 'SPRGVL_2_TULE' THEN 'Tule River U1 and U2'
		WHEN resource_name = 'KRNCNY_6_UNIT' THEN 'Kern Canyon'
		WHEN resource_name = 'HELMPG_7_UNIT 1' THEN 'Helms U1'
		WHEN resource_name = 'HELMPG_7_UNIT 2' THEN 'Helms U2'
		WHEN resource_name = 'HELMPG_7_UNIT 3' THEN 'Helms U3'
		WHEN resource_name = 'DIABLO_7_UNIT 1' THEN 'Diablo Canyon Unit 1'
		WHEN resource_name = 'DIABLO_7_UNIT 2' THEN 'Diablo Canyon Unit 2'
		WHEN resource_name = 'HUMBPP_6_UNITS' THEN 'Humboldt Bay Generating Station 1&2'
		WHEN resource_name = 'HUMBPP_1_UNITS3' THEN 'Humboldt Bay Generating Station 3'
		WHEN resource_name = 'COLUSA_2_PL1X3' THEN 'Colusa Generating Station'
		WHEN resource_name = 'GATWAY_2_PL1X3' THEN 'Gateway Generating Station'
		WHEN resource_name = 'CANTUA_1_SOLAR' THEN 'Cantua'
		WHEN resource_name = 'SCHNDR_1_FIVPTS' THEN 'Five Points'
		WHEN resource_name = 'GATES_2_SOLAR' THEN 'Gates Solar Station'
		WHEN resource_name = 'GUERNS_6_SOLAR' THEN 'Guernsey Solar Station'
		WHEN resource_name = 'GIFFEN_6_SOLAR' THEN 'Giffen'
		WHEN resource_name = 'HURON_6_SOLAR' THEN 'Huron'
		WHEN resource_name = 'STROUD_6_SOLAR' THEN 'Stroud'
		WHEN resource_name = 'VACADX_1_SOLAR' THEN 'Vaca Dixon Solar Station'
		WHEN resource_name = 'GATES_2_WSOLAR' THEN 'West Gates Solar Station'
		WHEN resource_name = 'SCHNDR_1_WSTSDE' THEN 'Westside'
		WHEN resource_name = 'CASTVL_2_FCELL' THEN 'CSU East Bay Fuel Cells'
		WHEN resource_name = 'DALYCT_1_FCELL' THEN 'SF State Fuel Cells'
		ELSE 'ERROR' END AS RESOURCE_NAME
	, CASE WHEN resource_name = 'HATCR1_7_UNIT' THEN '1'
		WHEN resource_name = 'HATCR2_7_UNIT' THEN '2'
		WHEN resource_name = 'PIT1_7_UNIT 1' THEN '3'
		WHEN resource_name = 'PIT1_7_UNIT 2' THEN '4'
		WHEN resource_name = 'PIT3_7_PL1X3' THEN '5'
		WHEN resource_name = 'PIT4_7_PL1X2' THEN '6'
		WHEN resource_name = 'PIT5_7_PL1X2' THEN '7'
		WHEN resource_name = 'PIT5_7_PL3X4' THEN '8'
		WHEN resource_name = 'BLACK_7_UNIT 1' THEN '9'
		WHEN resource_name = 'BLACK_7_UNIT 2' THEN '10'
		WHEN resource_name = 'PIT6_7_UNIT 1' THEN '11'
		WHEN resource_name = 'PIT6_7_UNIT 2' THEN '12'
		WHEN resource_name = 'PIT7_7_UNIT 1' THEN '13'
		WHEN resource_name = 'PIT7_7_UNIT 2' THEN '14'
		WHEN resource_name = 'COLEMN_2_UNIT' THEN '15'
		WHEN resource_name = 'COWCRK_2_UNIT' THEN '16'
		WHEN resource_name = 'INSKIP_2_UNIT' THEN '17'
		WHEN resource_name = 'KILARC_2_UNIT 1' THEN '18'
		WHEN resource_name = 'SOUTH_2_UNIT' THEN '19'
		WHEN resource_name = 'VOLTA_2_UNIT 1' THEN '20'
		WHEN resource_name = 'VOLTA_2_UNIT 2' THEN '21'
		WHEN resource_name = 'HMLTBR_6_UNITS' THEN '22'
		WHEN resource_name = 'BUTTVL_7_UNIT 1' THEN '23'
		WHEN resource_name = 'CARBOU_7_UNIT 1' THEN '24'
		WHEN resource_name = 'CARBOU_7_PL2X3' THEN '25'
		WHEN resource_name = 'CARBOU_7_PL4X5' THEN '26'
		WHEN resource_name = 'BUCKCK_7_OAKFLT' THEN '27'
		WHEN resource_name = 'BELDEN_7_UNIT 1' THEN '28'
		WHEN resource_name = 'RCKCRK_7_UNIT 1' THEN '29'
		WHEN resource_name = 'RCKCRK_7_UNIT 2' THEN '30'
		WHEN resource_name = 'BUCKCK_7_PL1X2' THEN '31'
		WHEN resource_name = 'CRESTA_7_PL1X2' THEN '32'
		WHEN resource_name = 'POEPH_7_UNIT 1' THEN '33'
		WHEN resource_name = 'POEPH_7_UNIT 2' THEN '34'
		WHEN resource_name = 'POTTER_6_UNITS' THEN '35'
		WHEN resource_name = 'TOADTW_6_UNIT' THEN '36'
		WHEN resource_name = 'DSABLA_7_UNIT' THEN '37'
		WHEN resource_name = 'CNTRVL_6_UNIT' THEN '38'
		WHEN resource_name = 'CLRKRD_6_LIMESD' THEN '39'
		WHEN resource_name = 'NAROW1_2_UNIT' THEN '40'
		WHEN resource_name = 'SPAULD_6_UNIT12' THEN '41'
		WHEN resource_name = 'SPAULD_6_UNIT 3' THEN '42'
		WHEN resource_name = 'DEERCR_6_UNIT 1' THEN '43'
		WHEN resource_name = 'DRUM_7_PL1X2' THEN '44'
		WHEN resource_name = 'DRUM_7_PL3X4' THEN '45'
		WHEN resource_name = 'DRUM_7_UNIT 5' THEN '46'
		WHEN resource_name = 'BNNIEN_7_ALTAPH' THEN '47'
		WHEN resource_name = 'DUTCH1_7_UNIT 1' THEN '48'
		WHEN resource_name = 'HALSEY_6_UNIT' THEN '49'
		WHEN resource_name = 'WISE_1_UNIT 1' THEN '50'
		WHEN resource_name = 'WISE_1_UNIT 2' THEN '51'
		WHEN resource_name = 'NWCSTL_7_UNIT 1' THEN '52'
		WHEN resource_name = 'PLACVL_1_CHILIB' THEN '53'
		WHEN resource_name = 'SALTSP_7_UNITS' THEN '54'
		WHEN resource_name = 'TIGRCK_7_UNITS' THEN '55'
		WHEN resource_name = 'WESTPT_2_UNIT' THEN '56'
		WHEN resource_name = 'ELECTR_7_PL1X3' THEN '57'
		WHEN resource_name = 'SPRGAP_1_UNIT 1' THEN '58'
		WHEN resource_name = 'STANIS_7_UNIT 1' THEN '59'
		WHEN resource_name = 'PHOENX_1_UNIT' THEN '60'
		WHEN resource_name = 'MERCFL_6_UNIT' THEN '61'
		WHEN resource_name = 'HAASPH_7_PL1X2' THEN '62'
		WHEN resource_name = 'BALCHS_7_UNIT 1' THEN '63'
		WHEN resource_name = 'BALCHS_7_UNIT 2' THEN '64'
		WHEN resource_name = 'BALCHS_7_UNIT 3' THEN '65'
		WHEN resource_name = 'KINGRV_7_UNIT 1' THEN '66'
		WHEN resource_name = 'CRNEVL_6_CRNVA' THEN '67'
		WHEN resource_name = 'WISHON_6_UNITS' THEN '68'
		WHEN resource_name = 'CRNEVL_6_SJQN 2' THEN '69'
		WHEN resource_name = 'CRNEVL_6_SJQN 3' THEN '70'
		WHEN resource_name = 'KERKH1_7_UNIT 1' THEN '71'
		WHEN resource_name = 'KERKH1_7_UNIT 3' THEN '72'
		WHEN resource_name = 'KERKH2_7_UNIT 1' THEN '73'
		WHEN resource_name = 'SPRGVL_2_TULE' THEN '74'
		WHEN resource_name = 'KRNCNY_6_UNIT' THEN '75'
		WHEN resource_name = 'HELMPG_7_UNIT 1' AND resource_type = 'GEN' THEN '76'
		WHEN resource_name = 'HELMPG_7_UNIT 1' AND resource_type = 'LOAD' THEN '77'
		WHEN resource_name = 'HELMPG_7_UNIT 2' AND resource_type = 'GEN' THEN '78'
		WHEN resource_name = 'HELMPG_7_UNIT 2' AND resource_type = 'LOAD' THEN '79'
		WHEN resource_name = 'HELMPG_7_UNIT 3' AND resource_type = 'GEN' THEN '80'
		WHEN resource_name = 'HELMPG_7_UNIT 3' AND resource_type = 'LOAD' THEN '81'
		WHEN resource_name = 'DIABLO_7_UNIT 1' THEN '82'
		WHEN resource_name = 'DIABLO_7_UNIT 2' THEN '83'
		WHEN resource_name = 'HUMBPP_6_UNITS' THEN '84'
		WHEN resource_name = 'HUMBPP_1_UNITS3' THEN '85'
		WHEN resource_name = 'COLUSA_2_PL1X3' THEN '86'
		WHEN resource_name = 'GATWAY_2_PL1X3' THEN '87'
		WHEN resource_name = 'CANTUA_1_SOLAR' THEN '88'
		WHEN resource_name = 'SCHNDR_1_FIVPTS' THEN '89'
		WHEN resource_name = 'GATES_2_SOLAR' THEN '90'
		WHEN resource_name = 'GUERNS_6_SOLAR' THEN '91'
		WHEN resource_name = 'GIFFEN_6_SOLAR' THEN '92'
		WHEN resource_name = 'HURON_6_SOLAR' THEN '93'
		WHEN resource_name = 'STROUD_6_SOLAR' THEN '94'
		WHEN resource_name = 'VACADX_1_SOLAR' THEN '95'
		WHEN resource_name = 'GATES_2_WSOLAR' THEN '96'
		WHEN resource_name = 'SCHNDR_1_WSTSDE' THEN '97'
		WHEN resource_name = 'CASTVL_2_FCELL' THEN '98'
		WHEN resource_name = 'DALYCT_1_FCELL' THEN '99'
		ELSE 'ERROR' END AS PRIORITY
 	, RESOURCE_TYPE
	, CASE WHEN name = 'BA_5M_RSRC_METER_ENGY@QUANTITY'  THEN SUM(total) END AS Total_Output_MWh
	, CASE WHEN name = 'BA_5M_RSRC_TOT_UIE@QUANTITY' THEN SUM(total) END AS Uninstructed_MWh_Gross
	, CASE WHEN name = 'RSRC_HRLY_DA_ENGY_LMP_NON_CONTRACT@AMOUNT' THEN -1*SUM(total) END AS CC6011_Non_Contract
	, CASE WHEN name = 'BA_HRLY_DA_ENGY_CONTRACT@AMOUNT' THEN -1*SUM(total) END AS CC6011_Contract
	, CASE WHEN name = 'BA_5M_RSRC_FMM_IIE_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6460
	, CASE WHEN name = 'BA_5M_RSRC_IIE@AMOUNT' THEN -1*SUM(total) END AS CC6470
	, CASE WHEN name = 'BA_5M_RSRC_UIE@AMOUNT' THEN -1*SUM(total) END AS CC6475
	, CASE WHEN name = 'BA_5M_RSRC_ED_TYPE_EX_COST_IIE_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6482
	, CASE WHEN name = 'BA_5M_RSRC_EXCP_DISP@AMOUNT' THEN -1*SUM(total) END AS CC6488
	, CASE WHEN name = 'BA_DAY_RSRC_OR_MSS_IFM_BCR_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6630
	, CASE WHEN name = 'BA_DAY_RSRC_OR_MSS_BCR_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6620
	, CASE WHEN name = 'BA_HRLY_RSRC_DA_SPIN_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6100
    , CASE WHEN name = 'BA_5M_RSRC_NOPAY_SPIN_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6124
    , CASE WHEN name = 'BA_15M_RT_SPIN_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6170
    , CASE WHEN name = 'BA_HRLY_RSRC_DA_NSPN_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6200
    , CASE WHEN name = 'BA_5M_RSRC_NOPAY_NSPN_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6224
    , CASE WHEN name = 'BA_15M_RSRC_RT_NSPN_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6270
    , CASE WHEN name = 'BA_HRLY_RSRC_DA_REGUP@AMOUNT' THEN -1*SUM(total) END AS CC6500
    , CASE WHEN name = 'BA_5M_RSRC_NOPAY_REGUP@AMOUNT' THEN -1*SUM(total) END AS CC6524
    , CASE WHEN name = 'BA_15M_RSRC_RT_REGUP_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6570
    , CASE WHEN name = 'BA_HRLY_RSRC_DA_REGDOWN@AMOUNT' THEN -1*SUM(total) END AS CC6600
    , CASE WHEN name = 'BA_5M_RSRC_NOPAY_REGDOWN_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC6624
    , CASE WHEN name = 'BA_15M_RSRC_RT_REGDOWN@AMOUNT' THEN -1*SUM(total) END AS CC6670
    , CASE WHEN name = 'BA_15M_RSRC_REGUP_MILEAGE_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC7251
    , CASE WHEN name = 'BA_15M_RSRC_REGDOWN_MILEAGE_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC7261
    , CASE WHEN name = 'BA_5M_RSRC_TOT_FR_FCAST_MVMT@AMOUNT' THEN -1*SUM(total) END AS CC7070_Total_Settlement
    , CASE WHEN name = 'BA_5M_RSRC_TOT_FRU_UNCERT_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC7071_Total_Settlement
    , CASE WHEN name = 'BA_5M_RSRC_TOT_FRD_UNCERT_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC7081_Total_Settlement
    , CASE WHEN name = 'BA_5M_RSRC_BAA_SUPPLY_FRU_UNCERT_ALLOC@AMOUNT' THEN -1*SUM(total) END AS CC7077 
    , CASE WHEN name = 'BA_5M_RSRC_BAA_SUPPLY_FRD_UNCERT_ALLOC@AMOUNT' THEN -1*SUM(total) END AS CC7087 
	, CASE WHEN name = 'BA_MTH_RSRC_BAA_OFFP_SUPPLY_FRU_UNCERT_ALLOC@AMOUNT' THEN -1*SUM(total) END AS CC7078_Off_Peak 
   	, CASE WHEN name = 'BA_MTH_RSRC_BAA_PEAK_SUPPLY_FRU_UNCERT_ALLOC@AMOUNT' THEN -1*SUM(total) END AS CC7078_Peak 
    , CASE WHEN name = 'BA_MTH_RSRC_BAA_OFFP_SUPPLY_FRD_UNCERT_ALLOC@AMOUNT' THEN -1*SUM(total) END AS CC7088_Off_Peak 
    , CASE WHEN name = 'BA_MTH_RSRC_BAA_PEAK_SUPPLY_FRD_UNCERT_ALLOC@AMOUNT' THEN -1*SUM(total) END AS CC7088_Peak 
	, CASE WHEN name = 'BA_MTH_RSRC_TOT_RAAIM_INCV_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC8831
    , CASE WHEN name = 'BA_MTH_RSRC_TOT_RAAIM_NON_AVAIL_STLMT@AMOUNT' THEN -1*SUM(total) END AS CC8830      
  FROM 
 	((SELECT /*+PARALLEL_INDEX(a, 50)*/ a.attributevalue2 AS resource_name
    , CASE WHEN a.name IN ('BA_DAY_RSRC_OR_MSS_IFM_BCR_STLMT@AMOUNT','BA_DAY_RSRC_OR_MSS_BCR_STLMT@AMOUNT') THEN 'GEN'
        ELSE a.attributevalue3 END AS resource_type
    , CASE WHEN a.name IN ('BA_5M_RSRC_TOT_UIE@QUANTITY') THEN   
        ABS(NVL(a.int001,0)) + ABS(NVL(a.int002,0)) + ABS(NVL(a.int003,0)) + ABS(NVL(a.int004,0)) + ABS(NVL(a.int005,0)) + ABS(NVL(a.int006,0)) + 
        ABS(NVL(a.int007,0)) + ABS(NVL(a.int008,0)) + ABS(NVL(a.int009,0)) + ABS(NVL(a.int010,0)) + ABS(NVL(a.int011,0)) + ABS(NVL(a.int012,0)) + 
        ABS(NVL(a.int013,0)) + ABS(NVL(a.int014,0)) + ABS(NVL(a.int015,0)) + ABS(NVL(a.int016,0)) + ABS(NVL(a.int017,0)) + ABS(NVL(a.int018,0)) + 
        ABS(NVL(a.int019,0)) + ABS(NVL(a.int020,0)) + ABS(NVL(a.int021,0)) + ABS(NVL(a.int022,0)) + ABS(NVL(a.int023,0)) + ABS(NVL(a.int024,0)) + 
        ABS(NVL(a.int025,0)) + ABS(NVL(a.int026,0)) + ABS(NVL(a.int027,0)) + ABS(NVL(a.int028,0)) + ABS(NVL(a.int029,0)) + ABS(NVL(a.int030,0)) + 
        ABS(NVL(a.int031,0)) + ABS(NVL(a.int032,0)) + ABS(NVL(a.int033,0)) + ABS(NVL(a.int034,0)) + ABS(NVL(a.int035,0)) + ABS(NVL(a.int036,0)) + 
        ABS(NVL(a.int037,0)) + ABS(NVL(a.int038,0)) + ABS(NVL(a.int039,0)) + ABS(NVL(a.int040,0)) + ABS(NVL(a.int041,0)) + ABS(NVL(a.int042,0)) + 
        ABS(NVL(a.int043,0)) + ABS(NVL(a.int044,0)) + ABS(NVL(a.int045,0)) + ABS(NVL(a.int046,0)) + ABS(NVL(a.int047,0)) + ABS(NVL(a.int048,0)) + 
        ABS(NVL(a.int049,0)) + ABS(NVL(a.int050,0)) + ABS(NVL(a.int051,0)) + ABS(NVL(a.int052,0)) + ABS(NVL(a.int053,0)) + ABS(NVL(a.int054,0)) + 
        ABS(NVL(a.int055,0)) + ABS(NVL(a.int056,0)) + ABS(NVL(a.int057,0)) + ABS(NVL(a.int058,0)) + ABS(NVL(a.int059,0)) + ABS(NVL(a.int060,0)) + 
        ABS(NVL(a.int061,0)) + ABS(NVL(a.int062,0)) + ABS(NVL(a.int063,0)) + ABS(NVL(a.int064,0)) + ABS(NVL(a.int065,0)) + ABS(NVL(a.int066,0)) + 
        ABS(NVL(a.int067,0)) + ABS(NVL(a.int068,0)) + ABS(NVL(a.int069,0)) + ABS(NVL(a.int070,0)) + ABS(NVL(a.int071,0)) + ABS(NVL(a.int072,0)) + 
        ABS(NVL(a.int073,0)) + ABS(NVL(a.int074,0)) + ABS(NVL(a.int075,0)) + ABS(NVL(a.int076,0)) + ABS(NVL(a.int077,0)) + ABS(NVL(a.int078,0)) + 
        ABS(NVL(a.int079,0)) + ABS(NVL(a.int080,0)) + ABS(NVL(a.int081,0)) + ABS(NVL(a.int082,0)) + ABS(NVL(a.int083,0)) + ABS(NVL(a.int084,0)) + 
        ABS(NVL(a.int085,0)) + ABS(NVL(a.int086,0)) + ABS(NVL(a.int087,0)) + ABS(NVL(a.int088,0)) + ABS(NVL(a.int089,0)) + ABS(NVL(a.int090,0)) + 
        ABS(NVL(a.int091,0)) + ABS(NVL(a.int092,0)) + ABS(NVL(a.int093,0)) + ABS(NVL(a.int094,0)) + ABS(NVL(a.int095,0)) + ABS(NVL(a.int096,0)) + 
        ABS(NVL(a.int097,0)) + ABS(NVL(a.int098,0)) + ABS(NVL(a.int099,0)) + ABS(NVL(a.int100,0)) + ABS(NVL(a.int101,0)) + ABS(NVL(a.int102,0)) + 
        ABS(NVL(a.int103,0)) + ABS(NVL(a.int104,0)) + ABS(NVL(a.int105,0)) + ABS(NVL(a.int106,0)) + ABS(NVL(a.int107,0)) + ABS(NVL(a.int108,0)) + 
        ABS(NVL(a.int109,0)) + ABS(NVL(a.int110,0)) + ABS(NVL(a.int111,0)) + ABS(NVL(a.int112,0)) + ABS(NVL(a.int113,0)) + ABS(NVL(a.int114,0)) + 
        ABS(NVL(a.int115,0)) + ABS(NVL(a.int116,0)) + ABS(NVL(a.int117,0)) + ABS(NVL(a.int118,0)) + ABS(NVL(a.int119,0)) + ABS(NVL(a.int120,0)) + 
        ABS(NVL(a.int121,0)) + ABS(NVL(a.int122,0)) + ABS(NVL(a.int123,0)) + ABS(NVL(a.int124,0)) + ABS(NVL(a.int125,0)) + ABS(NVL(a.int126,0)) + 
        ABS(NVL(a.int127,0)) + ABS(NVL(a.int128,0)) + ABS(NVL(a.int129,0)) + ABS(NVL(a.int130,0)) + ABS(NVL(a.int131,0)) + ABS(NVL(a.int132,0)) + 
        ABS(NVL(a.int133,0)) + ABS(NVL(a.int134,0)) + ABS(NVL(a.int135,0)) + ABS(NVL(a.int136,0)) + ABS(NVL(a.int137,0)) + ABS(NVL(a.int138,0)) + 
        ABS(NVL(a.int139,0)) + ABS(NVL(a.int140,0)) + ABS(NVL(a.int141,0)) + ABS(NVL(a.int142,0)) + ABS(NVL(a.int143,0)) + ABS(NVL(a.int144,0)) + 
        ABS(NVL(a.int145,0)) + ABS(NVL(a.int146,0)) + ABS(NVL(a.int147,0)) + ABS(NVL(a.int148,0)) + ABS(NVL(a.int149,0)) + ABS(NVL(a.int150,0)) + 
        ABS(NVL(a.int151,0)) + ABS(NVL(a.int152,0)) + ABS(NVL(a.int153,0)) + ABS(NVL(a.int154,0)) + ABS(NVL(a.int155,0)) + ABS(NVL(a.int156,0)) + 
        ABS(NVL(a.int157,0)) + ABS(NVL(a.int158,0)) + ABS(NVL(a.int159,0)) + ABS(NVL(a.int160,0)) + ABS(NVL(a.int161,0)) + ABS(NVL(a.int162,0)) + 
        ABS(NVL(a.int163,0)) + ABS(NVL(a.int164,0)) + ABS(NVL(a.int165,0)) + ABS(NVL(a.int166,0)) + ABS(NVL(a.int167,0)) + ABS(NVL(a.int168,0)) + 
        ABS(NVL(a.int169,0)) + ABS(NVL(a.int170,0)) + ABS(NVL(a.int171,0)) + ABS(NVL(a.int172,0)) + ABS(NVL(a.int173,0)) + ABS(NVL(a.int174,0)) + 
        ABS(NVL(a.int175,0)) + ABS(NVL(a.int176,0)) + ABS(NVL(a.int177,0)) + ABS(NVL(a.int178,0)) + ABS(NVL(a.int179,0)) + ABS(NVL(a.int180,0)) + 
        ABS(NVL(a.int181,0)) + ABS(NVL(a.int182,0)) + ABS(NVL(a.int183,0)) + ABS(NVL(a.int184,0)) + ABS(NVL(a.int185,0)) + ABS(NVL(a.int186,0)) + 
        ABS(NVL(a.int187,0)) + ABS(NVL(a.int188,0)) + ABS(NVL(a.int189,0)) + ABS(NVL(a.int190,0)) + ABS(NVL(a.int191,0)) + ABS(NVL(a.int192,0)) + 
        ABS(NVL(a.int193,0)) + ABS(NVL(a.int194,0)) + ABS(NVL(a.int195,0)) + ABS(NVL(a.int196,0)) + ABS(NVL(a.int197,0)) + ABS(NVL(a.int198,0)) + 
        ABS(NVL(a.int199,0)) + ABS(NVL(a.int200,0)) + ABS(NVL(a.int201,0)) + ABS(NVL(a.int202,0)) + ABS(NVL(a.int203,0)) + ABS(NVL(a.int204,0)) + 
        ABS(NVL(a.int205,0)) + ABS(NVL(a.int206,0)) + ABS(NVL(a.int207,0)) + ABS(NVL(a.int208,0)) + ABS(NVL(a.int209,0)) + ABS(NVL(a.int210,0)) + 
        ABS(NVL(a.int211,0)) + ABS(NVL(a.int212,0)) + ABS(NVL(a.int213,0)) + ABS(NVL(a.int214,0)) + ABS(NVL(a.int215,0)) + ABS(NVL(a.int216,0)) + 
        ABS(NVL(a.int217,0)) + ABS(NVL(a.int218,0)) + ABS(NVL(a.int219,0)) + ABS(NVL(a.int220,0)) + ABS(NVL(a.int221,0)) + ABS(NVL(a.int222,0)) + 
        ABS(NVL(a.int223,0)) + ABS(NVL(a.int224,0)) + ABS(NVL(a.int225,0)) + ABS(NVL(a.int226,0)) + ABS(NVL(a.int227,0)) + ABS(NVL(a.int228,0)) + 
        ABS(NVL(a.int229,0)) + ABS(NVL(a.int230,0)) + ABS(NVL(a.int231,0)) + ABS(NVL(a.int232,0)) + ABS(NVL(a.int233,0)) + ABS(NVL(a.int234,0)) + 
        ABS(NVL(a.int235,0)) + ABS(NVL(a.int236,0)) + ABS(NVL(a.int237,0)) + ABS(NVL(a.int238,0)) + ABS(NVL(a.int239,0)) + ABS(NVL(a.int240,0)) + 
        ABS(NVL(a.int241,0)) + ABS(NVL(a.int242,0)) + ABS(NVL(a.int243,0)) + ABS(NVL(a.int244,0)) + ABS(NVL(a.int245,0)) + ABS(NVL(a.int246,0)) + 
        ABS(NVL(a.int247,0)) + ABS(NVL(a.int248,0)) + ABS(NVL(a.int249,0)) + ABS(NVL(a.int250,0)) + ABS(NVL(a.int251,0)) + ABS(NVL(a.int252,0)) + 
        ABS(NVL(a.int253,0)) + ABS(NVL(a.int254,0)) + ABS(NVL(a.int255,0)) + ABS(NVL(a.int256,0)) + ABS(NVL(a.int257,0)) + ABS(NVL(a.int258,0)) + 
        ABS(NVL(a.int259,0)) + ABS(NVL(a.int260,0)) + ABS(NVL(a.int261,0)) + ABS(NVL(a.int262,0)) + ABS(NVL(a.int263,0)) + ABS(NVL(a.int264,0)) + 
        ABS(NVL(a.int265,0)) + ABS(NVL(a.int266,0)) + ABS(NVL(a.int267,0)) + ABS(NVL(a.int268,0)) + ABS(NVL(a.int269,0)) + ABS(NVL(a.int270,0)) + 
        ABS(NVL(a.int271,0)) + ABS(NVL(a.int272,0)) + ABS(NVL(a.int273,0)) + ABS(NVL(a.int274,0)) + ABS(NVL(a.int275,0)) + ABS(NVL(a.int276,0)) + 
        ABS(NVL(a.int277,0)) + ABS(NVL(a.int278,0)) + ABS(NVL(a.int279,0)) + ABS(NVL(a.int280,0)) + ABS(NVL(a.int281,0)) + ABS(NVL(a.int282,0)) + 
        ABS(NVL(a.int283,0)) + ABS(NVL(a.int284,0)) + ABS(NVL(a.int285,0)) + ABS(NVL(a.int286,0)) + ABS(NVL(a.int287,0)) + ABS(NVL(a.int288,0)) + 
        ABS(NVL(a.int289,0)) + ABS(NVL(a.int290,0)) + ABS(NVL(a.int291,0)) + ABS(NVL(a.int292,0)) + ABS(NVL(a.int293,0)) + ABS(NVL(a.int294,0)) + 
        ABS(NVL(a.int295,0)) + ABS(NVL(a.int296,0)) + ABS(NVL(a.int297,0)) + ABS(NVL(a.int298,0)) + ABS(NVL(a.int299,0)) + ABS(NVL(a.int300,0)) 
      ELSE NVL(a.int001,0) + NVL(a.int002,0) + NVL(a.int003,0) + NVL(a.int004,0) + NVL(a.int005,0) + NVL(a.int006,0) +  
        NVL(a.int007,0) + NVL(a.int008,0) + NVL(a.int009,0) + NVL(a.int010,0) + NVL(a.int011,0) + NVL(a.int012,0) +  
        NVL(a.int013,0) + NVL(a.int014,0) + NVL(a.int015,0) + NVL(a.int016,0) + NVL(a.int017,0) + NVL(a.int018,0) +  
        NVL(a.int019,0) + NVL(a.int020,0) + NVL(a.int021,0) + NVL(a.int022,0) + NVL(a.int023,0) + NVL(a.int024,0) +  
        NVL(a.int025,0) + NVL(a.int026,0) + NVL(a.int027,0) + NVL(a.int028,0) + NVL(a.int029,0) + NVL(a.int030,0) +  
        NVL(a.int031,0) + NVL(a.int032,0) + NVL(a.int033,0) + NVL(a.int034,0) + NVL(a.int035,0) + NVL(a.int036,0) +  
        NVL(a.int037,0) + NVL(a.int038,0) + NVL(a.int039,0) + NVL(a.int040,0) + NVL(a.int041,0) + NVL(a.int042,0) +  
        NVL(a.int043,0) + NVL(a.int044,0) + NVL(a.int045,0) + NVL(a.int046,0) + NVL(a.int047,0) + NVL(a.int048,0) +  
        NVL(a.int049,0) + NVL(a.int050,0) + NVL(a.int051,0) + NVL(a.int052,0) + NVL(a.int053,0) + NVL(a.int054,0) +  
        NVL(a.int055,0) + NVL(a.int056,0) + NVL(a.int057,0) + NVL(a.int058,0) + NVL(a.int059,0) + NVL(a.int060,0) +  
        NVL(a.int061,0) + NVL(a.int062,0) + NVL(a.int063,0) + NVL(a.int064,0) + NVL(a.int065,0) + NVL(a.int066,0) +  
        NVL(a.int067,0) + NVL(a.int068,0) + NVL(a.int069,0) + NVL(a.int070,0) + NVL(a.int071,0) + NVL(a.int072,0) +  
        NVL(a.int073,0) + NVL(a.int074,0) + NVL(a.int075,0) + NVL(a.int076,0) + NVL(a.int077,0) + NVL(a.int078,0) +  
        NVL(a.int079,0) + NVL(a.int080,0) + NVL(a.int081,0) + NVL(a.int082,0) + NVL(a.int083,0) + NVL(a.int084,0) +  
        NVL(a.int085,0) + NVL(a.int086,0) + NVL(a.int087,0) + NVL(a.int088,0) + NVL(a.int089,0) + NVL(a.int090,0) +  
        NVL(a.int091,0) + NVL(a.int092,0) + NVL(a.int093,0) + NVL(a.int094,0) + NVL(a.int095,0) + NVL(a.int096,0) +  
        NVL(a.int097,0) + NVL(a.int098,0) + NVL(a.int099,0) + NVL(a.int100,0) + NVL(a.int101,0) + NVL(a.int102,0) +  
        NVL(a.int103,0) + NVL(a.int104,0) + NVL(a.int105,0) + NVL(a.int106,0) + NVL(a.int107,0) + NVL(a.int108,0) +  
        NVL(a.int109,0) + NVL(a.int110,0) + NVL(a.int111,0) + NVL(a.int112,0) + NVL(a.int113,0) + NVL(a.int114,0) +  
        NVL(a.int115,0) + NVL(a.int116,0) + NVL(a.int117,0) + NVL(a.int118,0) + NVL(a.int119,0) + NVL(a.int120,0) +  
        NVL(a.int121,0) + NVL(a.int122,0) + NVL(a.int123,0) + NVL(a.int124,0) + NVL(a.int125,0) + NVL(a.int126,0) +  
        NVL(a.int127,0) + NVL(a.int128,0) + NVL(a.int129,0) + NVL(a.int130,0) + NVL(a.int131,0) + NVL(a.int132,0) +  
        NVL(a.int133,0) + NVL(a.int134,0) + NVL(a.int135,0) + NVL(a.int136,0) + NVL(a.int137,0) + NVL(a.int138,0) +  
        NVL(a.int139,0) + NVL(a.int140,0) + NVL(a.int141,0) + NVL(a.int142,0) + NVL(a.int143,0) + NVL(a.int144,0) +  
        NVL(a.int145,0) + NVL(a.int146,0) + NVL(a.int147,0) + NVL(a.int148,0) + NVL(a.int149,0) + NVL(a.int150,0) +  
        NVL(a.int151,0) + NVL(a.int152,0) + NVL(a.int153,0) + NVL(a.int154,0) + NVL(a.int155,0) + NVL(a.int156,0) +  
        NVL(a.int157,0) + NVL(a.int158,0) + NVL(a.int159,0) + NVL(a.int160,0) + NVL(a.int161,0) + NVL(a.int162,0) +  
        NVL(a.int163,0) + NVL(a.int164,0) + NVL(a.int165,0) + NVL(a.int166,0) + NVL(a.int167,0) + NVL(a.int168,0) +  
        NVL(a.int169,0) + NVL(a.int170,0) + NVL(a.int171,0) + NVL(a.int172,0) + NVL(a.int173,0) + NVL(a.int174,0) +  
        NVL(a.int175,0) + NVL(a.int176,0) + NVL(a.int177,0) + NVL(a.int178,0) + NVL(a.int179,0) + NVL(a.int180,0) +  
        NVL(a.int181,0) + NVL(a.int182,0) + NVL(a.int183,0) + NVL(a.int184,0) + NVL(a.int185,0) + NVL(a.int186,0) +  
        NVL(a.int187,0) + NVL(a.int188,0) + NVL(a.int189,0) + NVL(a.int190,0) + NVL(a.int191,0) + NVL(a.int192,0) +  
        NVL(a.int193,0) + NVL(a.int194,0) + NVL(a.int195,0) + NVL(a.int196,0) + NVL(a.int197,0) + NVL(a.int198,0) +  
        NVL(a.int199,0) + NVL(a.int200,0) + NVL(a.int201,0) + NVL(a.int202,0) + NVL(a.int203,0) + NVL(a.int204,0) +  
        NVL(a.int205,0) + NVL(a.int206,0) + NVL(a.int207,0) + NVL(a.int208,0) + NVL(a.int209,0) + NVL(a.int210,0) +  
        NVL(a.int211,0) + NVL(a.int212,0) + NVL(a.int213,0) + NVL(a.int214,0) + NVL(a.int215,0) + NVL(a.int216,0) +  
        NVL(a.int217,0) + NVL(a.int218,0) + NVL(a.int219,0) + NVL(a.int220,0) + NVL(a.int221,0) + NVL(a.int222,0) +  
        NVL(a.int223,0) + NVL(a.int224,0) + NVL(a.int225,0) + NVL(a.int226,0) + NVL(a.int227,0) + NVL(a.int228,0) +  
        NVL(a.int229,0) + NVL(a.int230,0) + NVL(a.int231,0) + NVL(a.int232,0) + NVL(a.int233,0) + NVL(a.int234,0) +  
        NVL(a.int235,0) + NVL(a.int236,0) + NVL(a.int237,0) + NVL(a.int238,0) + NVL(a.int239,0) + NVL(a.int240,0) +  
        NVL(a.int241,0) + NVL(a.int242,0) + NVL(a.int243,0) + NVL(a.int244,0) + NVL(a.int245,0) + NVL(a.int246,0) +  
        NVL(a.int247,0) + NVL(a.int248,0) + NVL(a.int249,0) + NVL(a.int250,0) + NVL(a.int251,0) + NVL(a.int252,0) +  
        NVL(a.int253,0) + NVL(a.int254,0) + NVL(a.int255,0) + NVL(a.int256,0) + NVL(a.int257,0) + NVL(a.int258,0) +  
        NVL(a.int259,0) + NVL(a.int260,0) + NVL(a.int261,0) + NVL(a.int262,0) + NVL(a.int263,0) + NVL(a.int264,0) +  
        NVL(a.int265,0) + NVL(a.int266,0) + NVL(a.int267,0) + NVL(a.int268,0) + NVL(a.int269,0) + NVL(a.int270,0) +  
        NVL(a.int271,0) + NVL(a.int272,0) + NVL(a.int273,0) + NVL(a.int274,0) + NVL(a.int275,0) + NVL(a.int276,0) +  
        NVL(a.int277,0) + NVL(a.int278,0) + NVL(a.int279,0) + NVL(a.int280,0) + NVL(a.int281,0) + NVL(a.int282,0) +  
        NVL(a.int283,0) + NVL(a.int284,0) + NVL(a.int285,0) + NVL(a.int286,0) + NVL(a.int287,0) + NVL(a.int288,0) +  
        NVL(a.int289,0) + NVL(a.int290,0) + NVL(a.int291,0) + NVL(a.int292,0) + NVL(a.int293,0) + NVL(a.int294,0) +  
        NVL(a.int295,0) + NVL(a.int296,0) + NVL(a.int297,0) + NVL(a.int298,0) + NVL(a.int299,0) + NVL(a.int300,0) 
      END AS TOTAL          
    , a.name
	FROM billdeterminant a
	JOIN vh_latest_statement l ON l.bd_messageheaderid = a.messageheaderid     
	WHERE a.name in ('BA_5M_RSRC_TOT_UIE@QUANTITY',
            'BA_5M_RSRC_METER_ENGY@QUANTITY',
            'RSRC_HRLY_DA_ENGY_LMP_NON_CONTRACT@AMOUNT',
            'BA_HRLY_DA_ENGY_CONTRACT@AMOUNT',
            'BA_5M_RSRC_FMM_IIE_STLMT@AMOUNT',
            'BA_5M_RSRC_IIE@AMOUNT',
            'BA_5M_RSRC_UIE@AMOUNT',
            'BA_5M_RSRC_ED_TYPE_EX_COST_IIE_STLMT@AMOUNT',
            'BA_5M_RSRC_EXCP_DISP@AMOUNT',
            'BA_DAY_RSRC_OR_MSS_IFM_BCR_STLMT@AMOUNT',
            'BA_DAY_RSRC_OR_MSS_BCR_STLMT@AMOUNT',
            'BA_HRLY_RSRC_DA_SPIN_STLMT@AMOUNT',
            'BA_5M_RSRC_NOPAY_SPIN_STLMT@AMOUNT',
            'BA_15M_RT_SPIN_STLMT@AMOUNT',
            'BA_HRLY_RSRC_DA_NSPN_STLMT@AMOUNT',
            'BA_5M_RSRC_NOPAY_NSPN_STLMT@AMOUNT',
            'BA_15M_RSRC_RT_NSPN_STLMT@AMOUNT',
            'BA_HRLY_RSRC_DA_REGUP@AMOUNT',
            'BA_5M_RSRC_NOPAY_REGUP@AMOUNT',
            'BA_15M_RSRC_RT_REGUP_STLMT@AMOUNT',
            'BA_HRLY_RSRC_DA_REGDOWN@AMOUNT',
            'BA_5M_RSRC_NOPAY_REGDOWN_STLMT@AMOUNT',
            'BA_15M_RSRC_RT_REGDOWN@AMOUNT',
            'BA_15M_RSRC_REGUP_MILEAGE_STLMT@AMOUNT',
            'BA_15M_RSRC_REGDOWN_MILEAGE_STLMT@AMOUNT',
            'BA_5M_RSRC_TOT_FR_FCAST_MVMT@AMOUNT',
            'BA_5M_RSRC_TOT_FRU_UNCERT_STLMT@AMOUNT',
            'BA_5M_RSRC_TOT_FRD_UNCERT_STLMT@AMOUNT',
            'BA_5M_RSRC_BAA_SUPPLY_FRU_UNCERT_ALLOC@AMOUNT',
            'BA_5M_RSRC_BAA_SUPPLY_FRD_UNCERT_ALLOC@AMOUNT')
    AND a.attributevalue1 = '5057'  
    AND a.attributevalue2 in ('HATCR1_7_UNIT', 'HATCR2_7_UNIT', 'PIT1_7_UNIT 1', 'PIT1_7_UNIT 2', 'PIT3_7_PL1X3', 'PIT4_7_PL1X2'
		 , 'PIT5_7_PL1X2', 'PIT5_7_PL3X4', 'BLACK_7_UNIT 1', 'BLACK_7_UNIT 2', 'PIT6_7_UNIT 1', 'PIT6_7_UNIT 2'
		 , 'PIT7_7_UNIT 1', 'PIT7_7_UNIT 2', 'COLEMN_2_UNIT', 'COWCRK_2_UNIT', 'INSKIP_2_UNIT', 'KILARC_2_UNIT 1'
		 , 'SOUTH_2_UNIT', 'VOLTA_2_UNIT 1', 'VOLTA_2_UNIT 2', 'HMLTBR_6_UNITS', 'BUTTVL_7_UNIT 1'
		 , 'CARBOU_7_UNIT 1' , 'CARBOU_7_PL2X3', 'CARBOU_7_PL4X5', 'BUCKCK_7_OAKFLT', 'BELDEN_7_UNIT 1'
		 , 'RCKCRK_7_UNIT 1', 'RCKCRK_7_UNIT 2', 'BUCKCK_7_PL1X2', 'CRESTA_7_PL1X2', 'POEPH_7_UNIT 1', 'POEPH_7_UNIT 2'
		 , 'POTTER_6_UNITS', 'TOADTW_6_UNIT', 'DSABLA_7_UNIT', 'CNTRVL_6_UNIT', 'CLRKRD_6_LIMESD', 'NAROW1_2_UNIT'
		 , 'SPAULD_6_UNIT12', 'SPAULD_6_UNIT 3', 'DEERCR_6_UNIT 1', 'DRUM_7_PL1X2', 'DRUM_7_PL3X4', 'DRUM_7_UNIT 5'
		 , 'BNNIEN_7_ALTAPH', 'DUTCH1_7_UNIT 1', 'HALSEY_6_UNIT', 'WISE_1_UNIT 1', 'WISE_1_UNIT 2', 'NWCSTL_7_UNIT 1'
		 , 'PLACVL_1_CHILIB', 'SALTSP_7_UNITS', 'TIGRCK_7_UNITS', 'WESTPT_2_UNIT', 'ELECTR_7_PL1X3', 'SPRGAP_1_UNIT 1'
		 , 'STANIS_7_UNIT 1', 'PHOENX_1_UNIT', 'MERCFL_6_UNIT', 'HAASPH_7_PL1X2', 'BALCHS_7_UNIT 1', 'BALCHS_7_UNIT 2'
		 , 'BALCHS_7_UNIT 3', 'KINGRV_7_UNIT 1', 'CRNEVL_6_CRNVA', 'WISHON_6_UNITS', 'CRNEVL_6_SJQN 2'
		 , 'CRNEVL_6_SJQN 3', 'KERKH1_7_UNIT 1', 'KERKH1_7_UNIT 3', 'KERKH2_7_UNIT 1', 'SPRGVL_2_TULE'
		 , 'KRNCNY_6_UNIT', 'HELMPG_7_UNIT 1', 'HELMPG_7_UNIT 1', 'HELMPG_7_UNIT 2', 'HELMPG_7_UNIT 2'
		 , 'HELMPG_7_UNIT 3', 'HELMPG_7_UNIT 3', 'DIABLO_7_UNIT 1', 'DIABLO_7_UNIT 2', 'HUMBPP_6_UNITS'
		 , 'HUMBPP_1_UNITS3', 'COLUSA_2_PL1X3', 'GATWAY_2_PL1X3', 'CANTUA_1_SOLAR', 'SCHNDR_1_FIVPTS'
		 , 'GATES_2_SOLAR', 'GUERNS_6_SOLAR', 'GIFFEN_6_SOLAR', 'HURON_6_SOLAR', 'STROUD_6_SOLAR'
		 , 'VACADX_1_SOLAR', 'GATES_2_WSOLAR', 'SCHNDR_1_WSTSDE', 'CASTVL_2_FCELL', 'DALYCT_1_FCELL')               
    AND a.trade_date BETWEEN to_date(concat('16-', (to_char(add_months(sysdate,-2), 'MON-YYYY')))) AND to_date(concat('15-', (to_char( add_months(sysdate,-1), 'MON-YYYY')))))  
	UNION ALL
    (SELECT /*+PARALLEL_INDEX(a, 50)*/ a.attributevalue2 as resource_name
    , 'GEN' AS resource_type
    , NVL(a.int001,0) + NVL(a.int002,0) + NVL(a.int003,0) + NVL(a.int004,0) + NVL(a.int005,0) + NVL(a.int006,0) +  
          NVL(a.int007,0) + NVL(a.int008,0) + NVL(a.int009,0) + NVL(a.int010,0) + NVL(a.int011,0) + NVL(a.int012,0) +  
          NVL(a.int013,0) + NVL(a.int014,0) + NVL(a.int015,0) + NVL(a.int016,0) + NVL(a.int017,0) + NVL(a.int018,0) +  
          NVL(a.int019,0) + NVL(a.int020,0) + NVL(a.int021,0) + NVL(a.int022,0) + NVL(a.int023,0) + NVL(a.int024,0) +  
          NVL(a.int025,0) + NVL(a.int026,0) + NVL(a.int027,0) + NVL(a.int028,0) + NVL(a.int029,0) + NVL(a.int030,0) +  
          NVL(a.int031,0) + NVL(a.int032,0) + NVL(a.int033,0) + NVL(a.int034,0) + NVL(a.int035,0) + NVL(a.int036,0) +  
          NVL(a.int037,0) + NVL(a.int038,0) + NVL(a.int039,0) + NVL(a.int040,0) + NVL(a.int041,0) + NVL(a.int042,0) +  
          NVL(a.int043,0) + NVL(a.int044,0) + NVL(a.int045,0) + NVL(a.int046,0) + NVL(a.int047,0) + NVL(a.int048,0) +  
          NVL(a.int049,0) + NVL(a.int050,0) + NVL(a.int051,0) + NVL(a.int052,0) + NVL(a.int053,0) + NVL(a.int054,0) +  
          NVL(a.int055,0) + NVL(a.int056,0) + NVL(a.int057,0) + NVL(a.int058,0) + NVL(a.int059,0) + NVL(a.int060,0) +  
          NVL(a.int061,0) + NVL(a.int062,0) + NVL(a.int063,0) + NVL(a.int064,0) + NVL(a.int065,0) + NVL(a.int066,0) +  
          NVL(a.int067,0) + NVL(a.int068,0) + NVL(a.int069,0) + NVL(a.int070,0) + NVL(a.int071,0) + NVL(a.int072,0) +  
          NVL(a.int073,0) + NVL(a.int074,0) + NVL(a.int075,0) + NVL(a.int076,0) + NVL(a.int077,0) + NVL(a.int078,0) +  
          NVL(a.int079,0) + NVL(a.int080,0) + NVL(a.int081,0) + NVL(a.int082,0) + NVL(a.int083,0) + NVL(a.int084,0) +  
          NVL(a.int085,0) + NVL(a.int086,0) + NVL(a.int087,0) + NVL(a.int088,0) + NVL(a.int089,0) + NVL(a.int090,0) +  
          NVL(a.int091,0) + NVL(a.int092,0) + NVL(a.int093,0) + NVL(a.int094,0) + NVL(a.int095,0) + NVL(a.int096,0) +  
          NVL(a.int097,0) + NVL(a.int098,0) + NVL(a.int099,0) + NVL(a.int100,0) + NVL(a.int101,0) + NVL(a.int102,0) +  
          NVL(a.int103,0) + NVL(a.int104,0) + NVL(a.int105,0) + NVL(a.int106,0) + NVL(a.int107,0) + NVL(a.int108,0) +  
          NVL(a.int109,0) + NVL(a.int110,0) + NVL(a.int111,0) + NVL(a.int112,0) + NVL(a.int113,0) + NVL(a.int114,0) +  
          NVL(a.int115,0) + NVL(a.int116,0) + NVL(a.int117,0) + NVL(a.int118,0) + NVL(a.int119,0) + NVL(a.int120,0) +  
          NVL(a.int121,0) + NVL(a.int122,0) + NVL(a.int123,0) + NVL(a.int124,0) + NVL(a.int125,0) + NVL(a.int126,0) +  
          NVL(a.int127,0) + NVL(a.int128,0) + NVL(a.int129,0) + NVL(a.int130,0) + NVL(a.int131,0) + NVL(a.int132,0) +  
          NVL(a.int133,0) + NVL(a.int134,0) + NVL(a.int135,0) + NVL(a.int136,0) + NVL(a.int137,0) + NVL(a.int138,0) +  
          NVL(a.int139,0) + NVL(a.int140,0) + NVL(a.int141,0) + NVL(a.int142,0) + NVL(a.int143,0) + NVL(a.int144,0) +  
          NVL(a.int145,0) + NVL(a.int146,0) + NVL(a.int147,0) + NVL(a.int148,0) + NVL(a.int149,0) + NVL(a.int150,0) +  
          NVL(a.int151,0) + NVL(a.int152,0) + NVL(a.int153,0) + NVL(a.int154,0) + NVL(a.int155,0) + NVL(a.int156,0) +  
          NVL(a.int157,0) + NVL(a.int158,0) + NVL(a.int159,0) + NVL(a.int160,0) + NVL(a.int161,0) + NVL(a.int162,0) +  
          NVL(a.int163,0) + NVL(a.int164,0) + NVL(a.int165,0) + NVL(a.int166,0) + NVL(a.int167,0) + NVL(a.int168,0) +  
          NVL(a.int169,0) + NVL(a.int170,0) + NVL(a.int171,0) + NVL(a.int172,0) + NVL(a.int173,0) + NVL(a.int174,0) +  
          NVL(a.int175,0) + NVL(a.int176,0) + NVL(a.int177,0) + NVL(a.int178,0) + NVL(a.int179,0) + NVL(a.int180,0) +  
          NVL(a.int181,0) + NVL(a.int182,0) + NVL(a.int183,0) + NVL(a.int184,0) + NVL(a.int185,0) + NVL(a.int186,0) +  
          NVL(a.int187,0) + NVL(a.int188,0) + NVL(a.int189,0) + NVL(a.int190,0) + NVL(a.int191,0) + NVL(a.int192,0) +  
          NVL(a.int193,0) + NVL(a.int194,0) + NVL(a.int195,0) + NVL(a.int196,0) + NVL(a.int197,0) + NVL(a.int198,0) +  
          NVL(a.int199,0) + NVL(a.int200,0) + NVL(a.int201,0) + NVL(a.int202,0) + NVL(a.int203,0) + NVL(a.int204,0) +  
          NVL(a.int205,0) + NVL(a.int206,0) + NVL(a.int207,0) + NVL(a.int208,0) + NVL(a.int209,0) + NVL(a.int210,0) +  
          NVL(a.int211,0) + NVL(a.int212,0) + NVL(a.int213,0) + NVL(a.int214,0) + NVL(a.int215,0) + NVL(a.int216,0) +  
          NVL(a.int217,0) + NVL(a.int218,0) + NVL(a.int219,0) + NVL(a.int220,0) + NVL(a.int221,0) + NVL(a.int222,0) +  
          NVL(a.int223,0) + NVL(a.int224,0) + NVL(a.int225,0) + NVL(a.int226,0) + NVL(a.int227,0) + NVL(a.int228,0) +  
          NVL(a.int229,0) + NVL(a.int230,0) + NVL(a.int231,0) + NVL(a.int232,0) + NVL(a.int233,0) + NVL(a.int234,0) +  
          NVL(a.int235,0) + NVL(a.int236,0) + NVL(a.int237,0) + NVL(a.int238,0) + NVL(a.int239,0) + NVL(a.int240,0) +  
          NVL(a.int241,0) + NVL(a.int242,0) + NVL(a.int243,0) + NVL(a.int244,0) + NVL(a.int245,0) + NVL(a.int246,0) +  
          NVL(a.int247,0) + NVL(a.int248,0) + NVL(a.int249,0) + NVL(a.int250,0) + NVL(a.int251,0) + NVL(a.int252,0) +  
          NVL(a.int253,0) + NVL(a.int254,0) + NVL(a.int255,0) + NVL(a.int256,0) + NVL(a.int257,0) + NVL(a.int258,0) +  
          NVL(a.int259,0) + NVL(a.int260,0) + NVL(a.int261,0) + NVL(a.int262,0) + NVL(a.int263,0) + NVL(a.int264,0) +  
          NVL(a.int265,0) + NVL(a.int266,0) + NVL(a.int267,0) + NVL(a.int268,0) + NVL(a.int269,0) + NVL(a.int270,0) +  
          NVL(a.int271,0) + NVL(a.int272,0) + NVL(a.int273,0) + NVL(a.int274,0) + NVL(a.int275,0) + NVL(a.int276,0) +  
          NVL(a.int277,0) + NVL(a.int278,0) + NVL(a.int279,0) + NVL(a.int280,0) + NVL(a.int281,0) + NVL(a.int282,0) +  
          NVL(a.int283,0) + NVL(a.int284,0) + NVL(a.int285,0) + NVL(a.int286,0) + NVL(a.int287,0) + NVL(a.int288,0) +  
          NVL(a.int289,0) + NVL(a.int290,0) + NVL(a.int291,0) + NVL(a.int292,0) + NVL(a.int293,0) + NVL(a.int294,0) +  
          NVL(a.int295,0) + NVL(a.int296,0) + NVL(a.int297,0) + NVL(a.int298,0) + NVL(a.int299,0) + NVL(a.int300,0) AS TOTAL
    , a.name 
    FROM billdeterminant a
    JOIN vh_latest_statement l ON l.bd_messageheaderid = a.messageheaderid   
    WHERE a.trade_date = TRUNC(ADD_MONTHS(SYSDATE, -2), 'MM') 
      AND a.name IN ('BA_MTH_RSRC_TOT_RAAIM_INCV_STLMT@AMOUNT','BA_MTH_RSRC_TOT_RAAIM_NON_AVAIL_STLMT@AMOUNT','BA_MTH_RSRC_BAA_OFFP_SUPPLY_FRD_UNCERT_ALLOC@AMOUNT', 
            'BA_MTH_RSRC_BAA_PEAK_SUPPLY_FRD_UNCERT_ALLOC@AMOUNT','BA_MTH_RSRC_BAA_OFFP_SUPPLY_FRU_UNCERT_ALLOC@AMOUNT','BA_MTH_RSRC_BAA_PEAK_SUPPLY_FRU_UNCERT_ALLOC@AMOUNT') 
      AND a.attributevalue2 in ('HATCR1_7_UNIT', 'HATCR2_7_UNIT', 'PIT1_7_UNIT 1', 'PIT1_7_UNIT 2', 'PIT3_7_PL1X3', 'PIT4_7_PL1X2'
		 , 'PIT5_7_PL1X2', 'PIT5_7_PL3X4', 'BLACK_7_UNIT 1', 'BLACK_7_UNIT 2', 'PIT6_7_UNIT 1', 'PIT6_7_UNIT 2'
		 , 'PIT7_7_UNIT 1', 'PIT7_7_UNIT 2', 'COLEMN_2_UNIT', 'COWCRK_2_UNIT', 'INSKIP_2_UNIT', 'KILARC_2_UNIT 1'
		 , 'SOUTH_2_UNIT', 'VOLTA_2_UNIT 1', 'VOLTA_2_UNIT 2', 'HMLTBR_6_UNITS', 'BUTTVL_7_UNIT 1'
		 , 'CARBOU_7_UNIT 1' , 'CARBOU_7_PL2X3', 'CARBOU_7_PL4X5', 'BUCKCK_7_OAKFLT', 'BELDEN_7_UNIT 1'
		 , 'RCKCRK_7_UNIT 1', 'RCKCRK_7_UNIT 2', 'BUCKCK_7_PL1X2', 'CRESTA_7_PL1X2', 'POEPH_7_UNIT 1', 'POEPH_7_UNIT 2'
		 , 'POTTER_6_UNITS', 'TOADTW_6_UNIT', 'DSABLA_7_UNIT', 'CNTRVL_6_UNIT', 'CLRKRD_6_LIMESD', 'NAROW1_2_UNIT'
		 , 'SPAULD_6_UNIT12', 'SPAULD_6_UNIT 3', 'DEERCR_6_UNIT 1', 'DRUM_7_PL1X2', 'DRUM_7_PL3X4', 'DRUM_7_UNIT 5'
		 , 'BNNIEN_7_ALTAPH', 'DUTCH1_7_UNIT 1', 'HALSEY_6_UNIT', 'WISE_1_UNIT 1', 'WISE_1_UNIT 2', 'NWCSTL_7_UNIT 1'
		 , 'PLACVL_1_CHILIB', 'SALTSP_7_UNITS', 'TIGRCK_7_UNITS', 'WESTPT_2_UNIT', 'ELECTR_7_PL1X3', 'SPRGAP_1_UNIT 1'
		 , 'STANIS_7_UNIT 1', 'PHOENX_1_UNIT', 'MERCFL_6_UNIT', 'HAASPH_7_PL1X2', 'BALCHS_7_UNIT 1', 'BALCHS_7_UNIT 2'
		 , 'BALCHS_7_UNIT 3', 'KINGRV_7_UNIT 1', 'CRNEVL_6_CRNVA', 'WISHON_6_UNITS', 'CRNEVL_6_SJQN 2'
		 , 'CRNEVL_6_SJQN 3', 'KERKH1_7_UNIT 1', 'KERKH1_7_UNIT 3', 'KERKH2_7_UNIT 1', 'SPRGVL_2_TULE'
		 , 'KRNCNY_6_UNIT', 'HELMPG_7_UNIT 1', 'HELMPG_7_UNIT 1', 'HELMPG_7_UNIT 2', 'HELMPG_7_UNIT 2'
		 , 'HELMPG_7_UNIT 3', 'HELMPG_7_UNIT 3', 'DIABLO_7_UNIT 1', 'DIABLO_7_UNIT 2', 'HUMBPP_6_UNITS'
		 , 'HUMBPP_1_UNITS3', 'COLUSA_2_PL1X3', 'GATWAY_2_PL1X3', 'CANTUA_1_SOLAR', 'SCHNDR_1_FIVPTS'
		 , 'GATES_2_SOLAR', 'GUERNS_6_SOLAR', 'GIFFEN_6_SOLAR', 'HURON_6_SOLAR', 'STROUD_6_SOLAR'
		 , 'VACADX_1_SOLAR', 'GATES_2_WSOLAR', 'SCHNDR_1_WSTSDE', 'CASTVL_2_FCELL', 'DALYCT_1_FCELL')))
GROUP BY RESOURCE_NAME, RESOURCE_TYPE, name)
GROUP BY AREA, RESOURCE_NAME, RESOURCE_TYPE, PRIORITY
ORDER BY PRIORITY