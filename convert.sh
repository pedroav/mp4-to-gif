#/bin/bash

ls *.mp4 | while read -r file;
do
	#obtem a extensao do arquivo
	EXTENSAO=${file##*.}
	ffmpeg -i "$file" -vf scale=900:-1 -gifflags -transdiff -y "$file".gif& 
done

