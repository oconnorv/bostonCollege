from bs4 import BeautifulSoup

with open('./MODScp.xml') as isl:
	soup = BeautifulSoup(isl,'xml')
	for node in soup.find_all('title'):
		print (''.join(node.find_all(text=True)))
