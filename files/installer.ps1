function random_text {
    return -join ((65..90) + (97..122) | Get-Random -Count 5 | % {[char]$_})    
}

$wd = random_text
$path = "$env:temp/$wd"
$initial_dir = Get-Location

mkdir $path
cd $path

cd $initial_dir

del installer.ps1

