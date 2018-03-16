"""
Python script to get all of the works listed on the profile of a given ORCID ID from a set of ORCIDs. The access token
used was is a read-public token and is long-lived. It expires approximately 20 years from 2018.

Note: this currently creates one big JSON array with all the works for a given ORCID as an array object and saves a 
single file. I can change that to create a single file for each ORCID if we'd prefer that.

For questions, please email John O'Connor at BC.
"""

import requests, sys

#First we will pull in a txt of ORCIDs and make a list from them. Note: ORCIDs must each be on a separate line
orcidList = open("orcids.txt").read().splitlines()

#then we create a new output file and open a JSON array
worksOutput = open("worksOutput.json","w")
worksOutput.write("[")

#then we build a method to call the ORCID API and return the results
def makeRequest(thisOrcid):
	headers = {
	'Accept': 'application/vnd.orcid+json',
	'Authorization': 'Bearer 6eb0056f-f2cf-4b97-ae2b-7ce7d9e48d7b',
	}
	host = 'https://pub.orcid.org/v2.1/'
	url = host + thisOrcid + '/works'
	r = requests.get(url, headers=headers)
	return(r.text)

#then we check to make sure they haven't forgotten to delete instructions in orcids.txt
if orcidList[0] == "[Add ORCIDs to this file. Separate each ORCID with a new line/carriage return. Delete these instructions]":
		sys.exit("Please delete the instructions on the first line of orcids.txt.\nExiting script. Goodbye.")
#if not...
else:
#then we iterate over each ORCID in the list, calling the API, and writing the output to the worksOutput.json file
	for i in orcidList:
#check to see if we're at the end of our list. If so, we get info for the last ORCID and close the array with a bracket and save worksOutput.json
		if orcidList.index(i) == len(orcidList)-1:
			print("Retrieving works for " + i)
			worksOutput.write(makeRequest(i))
			worksOutput.write("]")
			worksOutput.close()
#if not, we get the info for the current ORCID in the list and write a comma for the next ORCID's information to go into the array
		else:
			print("Retrieving works for " + i)
			worksOutput.write(makeRequest(i))
			worksOutput.write(",\n")

#Finally, we print a success message
print("Retrieved works from " + str(len(orcidList)) + " ORCIDs")
print("Written to worksOutput.json")