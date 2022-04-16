*** Settings ***
Library    ../TestData/ReadData.py


*** Keywords ***
Read Number of Rows
    [Arguments]    ${sheetname}
    ${max_row} =    fetch_number_of_rows    ${sheetname}
    [Return]   ${max_row}

Read Excel Data of Cell
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata} =    fetch_cell_data  ${sheetname}    ${row}    ${cell}
    [Return]    ${celldata}