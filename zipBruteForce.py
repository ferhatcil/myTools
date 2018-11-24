import zipfile 
filename = raw_input('zip:') 
dictionary = raw_input('sifrelistesi:') 
password = None 
file_to_open = zipfile.ZipFile(filename) 
with open(dictionary, 'r') as f: 
   for line in f.readlines(): 
         password = line.strip('\n') 
         try: 
               file_to_open.extractall(pwd=password) 
               password = 'Parola bulundu: %s' % password 
               print password 
         except: 
               pass 
