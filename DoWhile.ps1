//Create 10 Folders

$i=0
do{
$RajatDoWhile = 'Rajat' + $i
New-Item -path $RajatDOWhile -ItemType Directory
$i++
}
while($i -lt 10)


//Create 10 Files
$i=0
do{
$RajatDOWhile = 'Rajat' + $i+ '.txt'
New-Item -path $RajatDOWhile -ItemType File
$i++
}while($i -lt 10)


//Create 10 folder inside 10 folders
$i=0
do{
$RajatDoWhile = 'Rajat' + $i
$j=0
do{
$Rajat0 = 'Test' + $j
New-Item -path $RajatDoWhile\$Rajat0 -ItemType Directory
$j++
}while($j -lt 10)
$i++
}while($i -lt 10)



//Create 10 files inside 10 folders in step 2
$i=0
do{
$RajatWhile = 'Rajat' + $i
$j=0
do{
$Rajat0 = 'Test' + $j
New-Item -path $RajatWhile\$Rajat0 -ItemType Directory
$k=0
do{
$Test0 = 'File' + $k+ '.txt'
New-Item -path $RajatWhile\$Rajat0\$Test0 -ItemType File
$k++
}while($k -lt 10)
$j++
}while($j -lt 10)
$i++
}while($i -lt 10)


//Copy files
$i=0
do{
$RajatWhile = 'Rajat' + $i
$j=0
do{
$File = 'Rajat' + $j+ '.txt'
Copy-Item -path $File -Recurse -Destination $RajatWhile
$j++
}while($j -lt 10)
$i++
}while($i -lt 10)


//Remove Item

$i=0
do{
$RajatWhile = 'Rajat' + $i
$j=0
do{
$File = 'Rajat' + $j+ '.txt'
Remove-Item -path $RajatWhile\$File -Recurse 
$j++
}while($j -lt 10)
$i++
}while($i -lt 10)