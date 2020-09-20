param (
    [Parameter(Mandatory=$true)][string]$d,
    [Parameter(Mandatory=$true)][string]$f
 )

$path = $d
$ext = "*.$f"
$DATE = Get-Date -Format "dddd MM/dd/yyyy"
$item = get-childitem -path $path $ext 

foreach ($thing in $item) 
{
    
     
    
    remove-item $thing.fullname

    write "$thing.FullName  togs bort $DATE " >> "C:\Users\Felix af Jochnick\Desktop\Python skola\test\happy.log"
} 

write "-------------------------------------------" >> "C:\Users\Felix af Jochnick\Desktop\Python skola\test\happy.log"
