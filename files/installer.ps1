function random_text {
    return -join ((65..90) + (97..122) | Get-Random -Count 5 | % {[char]$_})    
}

