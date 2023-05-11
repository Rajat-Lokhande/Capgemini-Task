for($i=0; $i -lt 10; $i++){
$fileName = 'Rajat'+$i+'.txt'
New-Item -Path $fileName -ItemType File
}

for($i=0; $i -lt 10; $i++){
$folderName = 'Rajat'+$i
New-Item -Path $folderName -ItemType Directory
}

for($i=0; $i -lt 10; $i++){  
$path='Rajat'+$i
for($j=0; $j -lt 10; $j++){
$path1='newRajat'+$j
New-Item -Path $path/$path1 -ItemType Directory
}
}


for($i=0; $i -lt 10; $i++){  
$path='Rajat'+$i
for($j=0; $j -lt 10; $j++){
$path1='newRajat'+$j
for($k=0; $k -lt 10; $k++){
$path2='newTest'+$k+'.txt'
New-Item -Path $path/$path1/$path2 -ItemType File
}
}
}


for($i=0; $i -lt 10; $i++){  
$path='Rajat' +$i
for($j=0; $j -lt 10; $j++){
$path1='Rajat'+$j+'.txt'

Copy-Item -Path $path1 -Recurse -Destination $path
}
}


for($i=0; $i -lt 10; $i++){  
$folderName = 'Rajat'+$i
for($j=0; $j -lt 10; $j++){
$fileName = 'Rajat'+$j+'.txt'

Remove-Item -Path $folderName/$fileName -Recurse 
}
}