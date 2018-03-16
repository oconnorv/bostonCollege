""" This script makes a single xml file of all of the MODS records from an 
Islandora collection by concatenating them into a new file. Because each 
individual MODS record begins in its own directory, it moves them all to a 
single directory and then does the concat. The resulting document may still
need some manual work to be valid."""

import glob
import os
import shutil

RootDir = r'/home/oconnowy/Downloads/ThesesCopy'
TargetFolder = r'/home/oconnowy/Git/BostonCollegeMisc/Islandora/AllXML'
iteration = 0

#First we rename all the MODS files in each subdirectory so that they are unique
for root, dirs, files in os.walk((os.path.normpath(RootDir)), topdown=False):
	for name in files:
		# print("Found File")
		origName = os.path.join(root,name)
		os.rename(origName, origName[:len(origName)-4] + str(iteration) + origName[len(origName)-4:])
		iteration += 1 

#Then we move each MODS file to the same folder
for root, dirs, files in os.walk((os.path.normpath(RootDir)), topdown=False):
	for name in files:
		if name.endswith('.xml'):
			# print("Found")
			SourceFolder = os.path.join(root,name)
			shutil.copy2(SourceFolder, TargetFolder)

# Then we concat each MODS file into a single new file
readFiles = glob.glob('/home/oconnowy/Git/BostonCollegeMisc/Islandora/AllXML/*.xml')
with open('/home/oconnowy/Git/BostonCollegeMisc/Islandora/all_islandora_theses.xml', 'wb') as outfile:
    for fileName in readFiles:
        with open(fileName, 'rb') as infile:
            outfile.write(infile.read())
