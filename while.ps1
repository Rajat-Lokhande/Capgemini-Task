$i=0
while($i -lt 10){
$RajatWhile = 'Rajat' + $i
New-Item -path $RajatWhile -ItemType Directory
$i++
}

$i=0
while($i -lt 10){
$RajatWhile = 'Rajat' + $i+ '.txt'
New-Item -path $RajatWhile -ItemType File
$i++
}

$i=0
while($i -lt 10){
$RajatWhile = 'Rajat' + $i
while($j -lt 10){
New-Item -path $RajatWhile\$Rajat0 -ItemType Directory
$i++
}
}
