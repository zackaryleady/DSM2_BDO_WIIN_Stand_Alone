:: Turn off output from python.exe.
@ECHO OFF
:: Execute Python script.
set /p tomdata= "What is the name of Tom's Data Excel sheet (ext: *.xlsm) in format (e.g. TomData_OMR-5000.xlsm)?"
echo %tomdata%
set /p start= "What is the forecast_start date in format YYYY-MM-DD?"
echo %start%
set /p end= "What is the forecast_end date in format YYYY-MM-DD?"
echo %end%
.\python-3.7.6-embed-amd64\python.exe .\preprocessor\TomToDSM2_pyhecdss.py --convert .\preprocessor\Data\%tomdata% --forecast .\preprocessor\Data\USBR_Data\forecast.dss --dicu .\preprocessor\Data\USBR_Data\dicu.dss --forecast_start %start% --forecast_end %end% --scenario_id "B"
