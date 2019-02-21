
# Power Plant Market Results Reports (UOG + CUG)
## Overview
The UOG and CUG Settlements Results templates summarize all power plants' financial/commodity settlements in the CAISO market by product categories. The template automatically aggregates one month's worth of five minute interval data utilizing Visual Basic and SQL. The template runs within 10 minutes, whereas original versions were multi-day efforts. The template also downloads a clean Excel file to be reviewed by power generation, procurement, and policy leadership, as well as  our team.

UOG - Utility Owned Generation<br />
CUG - Contracted Units Generation

This report helped me identify consistent losses of $50K per month at one power plant. Further analysis of the minute by minute transactions led to the discovery of a discrepancy between a power plant's operational meter and CAISO financial meter. Both meters were synchronized, resulting in a savings of $600K per year.

This code cannot not be fully run without authorization and connection to the network. Functional aspects within Visual Basic code may be repurposed for general use.

## Files
CUG Settlements Query.sql - SQL code used in the tool. <br />
CUG Code - Complete code for the VBA Tool, includes SQL implementation. <br />
CUG Settlements Report Template.xlsm - Complete VBA tool. 

UOG Energy Query.sql - SQL code used in the tool. <br />
UOG Code - Complete code for the VBA Tool, includes SQL implementation. <br />
UOG Settlements Report - Complete VBA tool. 

## Quick View of Report/UI
![reportexample](../master/CUG%20Report.png)
![reportexample](../master/Report%20Parameters.png)
