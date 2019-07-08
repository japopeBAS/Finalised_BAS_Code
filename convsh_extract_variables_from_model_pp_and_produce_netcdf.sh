# Convsh shell script to produce netcdf files from UM model output (.pp file)
# The same effect can be achieved in the xconv GUI, however, xconv can crash when loading a large number of files or files of a large size.
# Convsh provides a solution to this issue, provided there is enough memory on the computer system the code is being run on.  
# Example below: 
#               Uses monthly data from the "pm" files
#               readfile loads a file at the provided link
#               0 loads all variables from the file in the reading stage
#               writefile produces a file with the name provided at the locations provided. 
#               netcdf is the command used to specify the type of file to be produced. 
#               The final number (in this example 4), specifys the variable number in the input file and extracts occurences
#               of that variable from the files read in.  
# run command %> nohup convsh < script.sh &
# nohup is a command line tool to run commands in the background even if your terminal session ends.  The & commits it to the background


readfile 0 /home/rest/of/directory/structure/to/model/output/location/$RUNID.pm2026jan.pp
readfile 0 /home/rest/of/directory/structure/to/model/output/location/$RUNID.pm2026feb.pp
readfile 0 /home/rest/of/directory/structure/to/model/output/location/$RUNID.pm2026mar.pp
... to end of desired files. 


writefile netcdf /home/locations/of/final/processed/model/file/as/netcdf/$RUNID_variablename_monthly.nc 4
