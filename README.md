# DSM2_BDO_WIIN_Stand_Alone
A complete Stand-Alone application/toolkit for the DSM2 BDO WIIN Analysis.

This is an unofficial repository. 

The purpose of this repository is to version control the stand-alone web application and pre/post processing pipeline for the DSM2 Modeling performed for decision support of the WIIN Act analysis required by the Bay-Delta Office. This stand-alone application has a fully-functioning version of Python 3.7.6 embedded for Windows 32/64-bit. (No Linux or Mac support). This has been done in an effort to reduce the burden on end-users to config Python (Anaconda) environments and to understand installation and versioning procedures. The end-users do not have to interact with Python on the command-line as everything has been abstracted to command-line *.bat* files and the limited user inputs needed are requested by a Q&A style response by the end-user and the given *.bat* file. Additionally, the bdo_dsm2_app folder includes a self-contained localhost Django web application. (This uses Django's internal web development server localhost and is not intended for production deployment; however, it is mostly sufficient for the purposes of a web/map visualization of the data analyzed herein.)

***How to use this tool***
1.) The end-user can download this git repository as a *.zip* file by clicking the green clone/download button on the home page.  
    If the user would like to clone the repo then git clone should be executed on a git bash command-line in the directory they wish the   
    files should be downloaded too (not normal windows cmd). Cloning may or may not work on secure systems, but https downloading almost       always will.
    ```>git clone {repo http address}```  
2.)
