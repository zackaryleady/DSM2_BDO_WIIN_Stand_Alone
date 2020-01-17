:: Turn off output from python.exe.
@ECHO OFF
:: Execute Python script.
set /p id= "What is the run_id for this analysis in format {test or live}_{name}_{start}_{end}?"
echo %id%
set /p omr= "What is the OMR scenario name e.g. 'OMR-7000' or 'OMR-3500', etc.? You must include ' '."
echo %omr%
set /p start= "What is the forecast_start date in format YYYY-MM-DD?"
echo %start%
set /p end= "What is the forecast_end date in format YYYY-MM-DD?"
echo %end%
.\python-3.7.6-embed-amd64\python.exe .\postprocessor\dsm2bdoomr_post_pyhecdss.py --dirdss .\postprocessor\DSM2_Output --dirh5 .\postprocessor\DSM2_Output --run_id %id% --name_dict {'A':'Baseline','B':%omr%} --forecast_start %start% --forecast_end %end%
.\python-3.7.6-embed-amd64\python.exe .\postprocessor\dsm2bdoomr_genfigreport.py --dirData .\postprocessor\%id% --run_id %id% --forecast_start %start% --forecast_end %end% --write .\postprocessor\genfigreport_output
