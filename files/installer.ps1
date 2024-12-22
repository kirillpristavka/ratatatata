function random_text {
    return -join ((65..90) + (97..122) | Get-Random -Count 5 | % {[char]$_})    
}

$wd = random_text
$path = "$env:temp/$wd"
$initial_dir = %cd%

mkdir $path
cd $path

echo "" > poc.txt

cd $initial_dir

del installer.ps1

