function tail($file) 
{ 
    Get-Content $file -Wait -Tail 100 
}

function setenvmachine($key, $value)
{
    setenv($key, $value, [EnvironmentVariableTarget]::Machine)
}

function setenvuser($key, $value)
{
    setenv($key, $value,  [EnvironmentVariableTarget]::User)
}

function setenv($key, $value, $level) 
{ 
    [Environment]::SetEnvironmentVariable($key, $value, $level) 
}

function addtopath($path)
{
    [Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $path, [EnvironmentVariableTarget]::Machine)
}
