# Some examples of Hash Tables (Dictionaries)
$employee1 = @{First = "Mary"; Last = "Hopper"; ID = 001; Job = "Software Developer"}
$employee2 = @{First = "John"; Last = "Williams"; ID = 002; Job = "Web Developer"}
#Powershells STDOUT will always be an object. You can pipe said objects into Get-Member to show all properties and methods.
Get-Service | Get-Member

#Write-Host just writes to the terminal (not STDOUT) whereas Write-Output actually returns value to STDOUT

#Some Formatting Commands - format-list, format-table
Get-Childitem | Sort-Object -Property Extension | Format-Table -GroupBy Extension

#Script Block In a Variable
$myBlock = { Get-Service | Format-Table Name, Status }
$a = 1
$c = 1
$b = { 1 + 1 + $c }

#Trying to reference $b wont work as it hasnt exectued, & is the call operator letting you know the variable is a script block and to run it and return the value

#If you want a certain column or whatever
Get-Hotfix | select InstalledOn

#Just more sorting commands
Get-Service | Sort-Object -Property Status -Descending
Get-Service | Group-Object Status
1, 2, 4, 6, 3, 9, 5, 7 | Sort-Object

#Some typecasting with sort
#$_ is a placeholder for STDOUT
'1', '2', '3', '8', '4', '7' | Sort-Object -Property { [Int]$_ }
1..10 | Sort-Object -Property { Get-Random }

#QOL things
Get-Variable | Sort-Object Name | Format-Table Name, Description -Autosize -wrap

#Only display certain property values
Get-Service | Where-Object {$_.Status -eq "Running"}

#Show Processes that dont contain powershell
Get-Process | Where-Object {$_.Name -notlike '*powershell*'} | Sort-Object id -Descending

#Selecting certain objects
Get-Process | Select-Object -First 10

#Sorting unique elements
1,2,3,1,2,3,1,2,3,1,2,3 | Sort-Object | Get-Unique

#Measuring objects
Get-ChildItem | Measure-Object Length

#Using parameters with measure-object
Get-ChildItem | Measure-Object Length -Average -Maximum -Minimum -Sum

#Just deal with it
'sample text' > test.txt
$before = Get-ChildItem
'42' > test.txt
$after = Get-ChildItem
Compare-Object $before $after -Property Length, Name

#Listing properties of objects
Get-Hotfix | sort Description | Format-Table InstalledOn, HotFixID, Description

#Activity 6
Get-Process | Where-Object{$_.StartTime} | Sort-Object StartTime | Select-Object -First 1 -Last 1 | Format-Table Name, StartTime
Get-Date | Select-Object DayOfWeek
Get-HotFix
Get-HotFix | Sort-Object InstalledOn | Format-Table InstalledOn, HotFixID
Get-HotFix | Sort-Object Description | Format-Table Description, HotFixID, InstalledOn
Get-Process | Select-Object Name, Id

#Object creation
$myCar = New-Object Object

#Adding properties
Add-Member -MemberType NoteProperty -Name color -Value "Black" -InputObject $myCar
Add-Member -MemberType NoteProperty -Name make -Value "Ferrari" -InputObject $myCar
Add-Member -MemberType NoteProperty -Name model -Value F40 -InputObject $myCar
Add-Member -InputObject $myCar NoteProperty Weight 2250
$myCar | Add-Member NoteProperty topSpeed 225

#Adding methods
Add-Member -InputObject $myCar ScriptMethod Horn {"Insert silence here."}
$myCar | Add-Member ScriptMethod SpeedStatus {Get-Random -Minimum 0 -Maximum $myCar.topSpeed}
$myCar.SpeedStatus()

#Defining classes
class Device 
{
    [string]$Brand
    [string]$Model
    [string]$VendorSku
}

$device = [Device]::new()
$device.Brand = "Fabrikam, Inc."
$device.Model = "Fbk5040"
$device.VendorSku = "5072641000"

#Activity 7
$mySystem = New-Object Object
$compSys = Get-WmiObject Win32_ComputerSystem | select -ExpandProperty Name
$mySystem | Add-Member NoteProperty ComputerName $compSys
$compBIOS = Get-WmiObject Win32_BIOS | select -ExpandProperty SMBIOSBIOSVersion
$mySystem | Add-Member NoteProperty BIOS $compBIOS
$compOS = Get-WmiObject Win32_OperatingSystem | select -ExpandProperty Version
$mySystem | Add-Member NoteProperty OS $compOS
$compDisk = Get-WmiObject Win32_LogicalDisk | select -ExpandProperty FreeSpace
$mySystem | Add-Member NoteProperty "Drive Space" $compDisk
$mySystem | format-list

#Equals
2 -eq 2                      #True
2 -eq 3                      #False
1,2,3 -eq 2                  #2
"abc" -eq "abc"              #True
"abc" -eq "abc", "def"       #False
"abc", "def" -eq "abc"       #abc

#Not equals
"abc" -ne "def"              #True
"abc" -ne "abc"              #False
"abc" -ne "abc", "def"       #True
"abc", "def" -ne "abc"       #def

#Greater than
8 -gt 6                      #True
7, 8, 9 -gt 8                #9

#Less than
6 -lt 8                      #True
7, 8, 9 -lt 9                #7,8

#Greater than or equal to
6 -ge 6                      #True
5, 6, 7 -ge 6                #6,7

#Less than or equal to
6 -le 6                      #True
5, 6, 7 -le 6                #5,6

#Like
"Inky" -like "*"             #True
"Blinky" -like "Bl?nky"      #True
"Pinky" -like "[L-Q]inky"    #True
"Clyde" -like "[ABC]lyde"    #True

#Notlike
"Inky" -notlike "*"          #False
"Blinky" -notlike "Bli?nky"  #True
"Pinky" -notlike "[A-F]inky" #True
"Clyde" -notlike "[DEF]lyde" #True

#Match
$text = "Your account username is ACE4495"
$pattern = '([A-F]{3})(\d{4})'
$text -match $pattern

#Contains
$ghosts = 'Inky', "Blinky", "Pinky", "Clyde"
$ghosts -contains 'pinky'
'pinky' -in $ghosts

#Case insensitvity
-ceq
-cne
-cgt
-clt
-cge
-cle
-clike
-cnotlike
-cmatch
-ccontains
-cin

#Combining comparison operators
$num = 5
(($num -gt 1) -and ($num -lt 10))
(($num -gt 1) -or ($num -lt 10))

#More Where-Object practice :c
Get-ChildItem *.txt | Where-Object{$_.Length -gt 100}
Get-Process | Where-Object {$_.Company -like 'micro*'} | Format-Table Name, Description, Company

#If-Statements
if (True)
{
    #Code to be executed
}
Elseif (True)
{
    #X
}
Else
{

}

#Switch
switch(10)
{
    (1 + 9)
    {
        echo "Congrats"
    }
    (8)
    {
        echo "You suck"
    }
    (10)
    {
        echo This is also right
    }
}

#Alternate switch with default
switch(test)
{
    fake {"wrong"}
    boof {"huh"}
    default {"this should print"}
}

#Activity 8
$line1 = "Do you have model number: MT5437 for john.doe@sharklasers.com?"
$line2 = "What model number for john.doe@sharklasers.com?"
$pattern = '([A-Z]{2})(\d{4})'

switch($pattern)
{
    {$line1 -match $_}
    {

    }
}

#For loop
for($num = 1; num -le 3; $num++)
{
    #code
}

#Do while loop
do{
    $num
    $num++
}while($num -lt 3)

#Do untl
do{
    #code
}until($num -gt 3)

#Foreach loop
foreach($i in $item){
    #code
}

#Activity 9
$procs = 'notepad','mspaint','iexplore'
$procs | ForEach-Object { Start-Process $_ }
$file = "$pwd\procs.txt"

foreach($proc in $procs)
{
    Get-Process | Where-Object{$_.Name -like $proc} |
    ForEach-Object{Add-Content $file $_.Id }
}
Get-Content .\procs.txt | ForEach-Object{Stop-Process $_}
