#Functions
function Get-Version
{
    $PSVersionTable.PSVersion
}

function Test-Me($value)
{
    if ($value)
    {
        #Code
    }
}

#Returns a list of functions
gci -Path Function:

#User input within function
function Say-Hello
{
    $inputt = Read-Host
    "Hello $inputt"
}
Say-Hello

#Activity 10
Get-OrdinalDate
{
    Get-Date | select Year, DayOfYear
}
Get-OrdinalDate

function Get-Square
{
    param($num)
    Write-Output ($num * $num) 
}
Get-Square 10

function Get-Product
{
    param($num1, $num2, $num3)
    Write-Output ($num1 * $num2 * $num3)
}
Get-Product 5,3,10

#Activity 11
function Triangle ($a, $b)
{
    $c = (($a * $a) * ($b * $b))
    return [math]::Sqrt($c)
}

function Angle ($a, $b)
{
    return (180 - ($a + $b))
}

function Person ($fname, $lname, $age, $weight)
{
    

}
Triangle 5 7
Angle 10 20
$procs | ForEach-Object { Start-Process $_ }
$file = "$pwd\procs.txt"

foreach($proc in $procs)
{
    Get-Process | Where-Object{$_.Name -like $proc} |
    ForEach-Object{Add-Content $file $_.Id }
}
Get-Content .\procs.txt | ForEach-Object{Stop-Process $_}

function add-nums
{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [int32]$var1
        [Parameter(Mandatory=$true)]
        [int32]$var2
    )
    Begin {
        [int32]$sum = 0
    }
    Process {
        im fr just typing right now to make it look like im programming harder than a mf
        in realty i dont know what the fuck im dong
        <code>
    }
    End {
        <code>
    }
}

#Activity fucking something
function get-multisum
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        [ValidateLength(10)]
        [array]$array,
        [Parameter(Mandatory=$true)]
        [int32]$num
    )
    Begin {
        $total = 0
    }
    Process {
        foreach($i in $array)
        {
            if($i -ne $num)
            {
                $total = $total + $i
            }
        }
    }
    End {
        return $total
    }
}

function problem($array, $num)
{
    foreach($i in $array)
    {
        if($i -ne $num)
        {
            $total = $total + $i
        }
    }   
    return $total
}

function get-longestname
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        [array]$array    
    )

    Begin
    {
        $namelen = 0
    }
    Process 
    {
        foreach($i in $array)
        {
            if($i -ne $num)
            {
                continue
            }
            else 
            {
                $total = $total + $i
            }
        }
    }

    End 
    {
        return $total
    }
}

#Fucking regex
[abc] #One of the characters
[a-z] #One of the characters in range
\d #Any number
\D #Any non-number
\n #Newline
\r #Carriage return
\s #Any whitespace (tab, space, newline)
\t #Tab
\w #Letter, number, or underline
\W #Non-letter, number, or underline
* #Any
? #None or one occurrence
$ #End of text
^ #Start of text
\b #Word boundary
\B #No word boundary
\G #After last match