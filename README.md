# DSM2_BDO_WIIN_Stand_Alone
A complete Stand-Alone application/toolkit for the DSM2 BDO WIIN Analysis.

This is an unofficial repository. 

The purpose of this repository is to version control the stand-alone web application and pre/post processing pipeline for the DSM2 Modeling performed for decision support of the WIIN Act analysis required by the Bay-Delta Office. This stand-alone application has a fully-functioning version of Python 3.7.6 embedded for Windows 32/64-bit. (No Linux or Mac support). This has been done in an effort to reduce the burden on end-users to config Python (Anaconda) environments and to understand installation and versioning procedures. The end-users do not have to interact with Python on the command-line as everything has been abstracted to command-line *.bat* files and the limited user inputs needed are requested by a Q&A style response by the end-user and the given *.bat* file. Additionally, the bdo_dsm2_app folder includes a self-contained localhost Django web application. (This uses Django's internal web development server localhost and is not intended for production deployment; however, it is mostly sufficient for the purposes of a web/map visualization of the data analyzed herein.)

***How to use this tool***  
1.) The end-user can download this git repository as a *.zip* file by clicking the green clone/download button on the home page. If the user would like to clone the repo then git clone should be executed on a git bash command-line in the directory they wish the files should be downloaded too (not normal windows cmd). Cloning may or may not work on secure systems, but https downloading almost always will.  
```>git clone {repo http address}```  

2.) Once the repository is downloaded the user can begin the DSM2 BDO WIIN analysis procedure. The user should begin with copy/pasting the Excel sheet from CVO (Tom's data) into the folder directory ~/preprocessor/Data, where the *.txt* file named "Place_Tom_Data_Here.txt" is located. The user should also copy/paste the 4 *.dss* files (DICU.dss, forecast.dss, GATES.dss, hydro.dss) for the given week received from DWR OCO into the folder directory ~/preprocessor/Data/USBR_Data, where the *.txt* file named "Place_4_dss_files_here.txt" is located.  

3.) The user should open a non-admin Windows command-line prompt (not powershell, not git bash, not Anaconda Prompt) and change the working directory to this repo folder (the user can rename the repo folder once downloaded for versioning/tracking purposes). Thus the user's command-line prompt should not be C:\\> but rather C:\path\to\repo\folder> using the command:  
```C:\>cd C:\path\to\repo\folder```  
Now the user can begin executing *.bat* files contained in this repo folder correctly as this repo/associated tools use relative pathing.  

4.) The user should execute the *run_preprocessor!.bat* from the Windows command-line prompt that is *cd* to there repo folder using the command:  
```>run_preprocessor!```  
The *run_preprocessor!.bat* file will begin to run. The *run_preprocessor!.bat* file requires 2 user inputs that the user will be asked for once the command is executed:  
***Question 1:***  
```>What is the forecast_start date in format YYYY-MM-DD?```  
The user should immediately type the response with no spacing between the question and the answer:  
```>What is the forecast_start_date in format YYY-MM-DD?2019-02-05```  
And then press enter. The second question will then immediately appear:  
***Question 2:***  
```What is the forecast_end date in format YYYY-MM-DD?```  
The user should respond immediately with no spacing as before:    
```What is the forecast_end_date in format YYYY-MM-DD?2019-02-25```    
From this point the *run_preprocessor!.bat* file will continue automatic execution to inject the OMR Scenario data from Tom's Excel Data file into the required *.dss* files located in the USBR_Data folder.  

5.) Once successfully complete as indicated by the Runtime logging output the user should copy the 4 modified *.dss* files from the folder directory ~/preprocessor/Data/USBR_Data into their Near-Term DSM2 study folder directory in the C:\delta\dsm2_v8\studies\Near-Term\Data and run DSM2 with the two scenarios (Baseline = A, OMR Scenario = B).  

***DSM2 must be executed from a seperate Windows command-line prompt than this repo's tools***  

6.) Once both scenarios (baseline and omr scenario) have been executed using the DSM2 modeling tool, the user should copy/paste the 2 *.h5* files from the C:\delta\dsm2_v8\studies\Near-Term\Output folder along with the *.dss* file named *CVP_BDO_WIIN.dss* into the repo's folder directory ~/postprocessor/DSM2_Ouput, where the *.txt* file named "Place_2h5_1dss_output_from_DSM2_here.txt" is located.  

7.) The user should return to using this repo's Windows command-line prompt that the user executed the preprocessor in. The user should then execute the *run_postprocessor!.bat* from the Windows command-line prompt that is *cd* to there repo folder using the command:  
```>run_postprocessor!```  
The *run_postprocessor!.bat* file will begin to run. The *run_postprocessor!.bat* file requires 4 user inputs that the user will be asked:  
***Question 1:***    
```>What is the --run_id for this analysis in the format {test or live}_{4 letter name}_{forecast_start}_{forecast_end}?```  
The user should respond with no spacing, such as:
```What is the --run_id for this analysis in the format {test or live}_{4 letter name}_{forecast_start}_{forecast_end}?test_zack_20190205_20190225```  
***Question 2:***  
```What is the OMR scenario name e.g. 'OMR-7000' or 'OMR-3500', etc.? You must include ' '.?```  
The user should respond with no spacing and ***must place the name in single quotes ' '***:  
```What is the OMR scenario name e.g. 'OMR-7000' or 'OMR-3500', etc.? You must include ' '.?'OMR-7000'```  
***Question 3:***  
```What is the forecast_end date in format YYYY-MM-DD?```  
The user should respond immediately with no spacing as before:    
```What is the forecast_end_date in format YYYY-MM-DD?2019-02-25```  
***Question 4:***  
```What is the forecast_end date in format YYYY-MM-DD?```  
The user should respond immediately with no spacing as before:    
```What is the forecast_end_date in format YYYY-MM-DD?2019-02-25```  
From this point the *run_postprocessor!.bat* file will continue automatic execution to post-process the DSM2 Modeling results and generate the report figures required. The *run_postprocessor!.bat* tool executes both the ~\postprocessor\dsm2bdoomr_post_pyhecdss.py and the ~\postprocessor\dsm2bdoomr_genfigreport.py tools.  

8.) Once completed the *run_postprocessor!.bat* file will have written several files/directories as outline below:  

~/postprocessor/{run_id} folder created and contains 4 *.csvs* files named (HydroTable.csv, VarKS.csv, VarSummary.csv, VarTotal.csv)  

~/postprocessor/genfigreport_output/{ graphs or tables } created and contains *.png* files of graphs/tables saved for injecting into a Word report document  

9.)
