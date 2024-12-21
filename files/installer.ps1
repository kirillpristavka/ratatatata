function random_text {
    return -join ((65..90) + (97..122) | Get-Random -Count 5 | % {[char]$_})    
}

$wd = random_text
$path = "$env:temp/$wd"

mkdir $path
cd $path

echo "" > poc.txt

cd "C:\Users\Loubna Mellouki\Documents\OnlyRAT\files"

