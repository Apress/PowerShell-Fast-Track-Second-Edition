# Prompt the user to enter server names, separated by commas
$input = Read-Host "Enter server names, separated by commas"

# Split the input string into an array of server names
$servers = $input -split ",\s*"

# Iterate through each server in the array and print it to the screen
$servers | ForEach-Object {
    Write-Host $_ -ForegroundColor Cyan
}
