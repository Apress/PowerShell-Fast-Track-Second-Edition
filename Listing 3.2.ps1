#Csv file fortmat:
#SamAccountName,City,State,Country,JobTitle
#jdoe,New York,NY,USA,Manager
#asmith,Los Angeles,CA,USA,Developer
#bjones,Chicago,IL,USA,Analyst

# Import the Active Directory module
Import-Module ActiveDirectory

# Import the CSV file
$users = Import-Csv ".\UserData.csv"

# Iterate through each user in the CSV and update the attributes in AD
foreach ($user in $users) {
    # Update the user attributes in Active Directory
    Set-ADUser -Identity $user.SamAccountName `
               -City $user.City `
               -State $user.State `
               -Country $user.Country `
               -Title $user.Title 

    # Output the updated user details
    Write-Host "Updated attributes for user: $($user.SamAccountName)"
}
