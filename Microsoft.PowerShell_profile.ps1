function tail($file) 
{ 
    Get-Content $file -Wait -Tail 100 
}

function setenv($key, $value, $space) 
{ 
    [Environment]::SetEnvironmentVariable($key, $value, $space) 
}