import glob

all_scored_files = glob.glob('*.qual')

for files in all_scored_files:
	with open('%s'%files) as f:
		data = f.read()
		values = data.split('\t')
		score = float(values[-1])                             
		print files,' ',score
