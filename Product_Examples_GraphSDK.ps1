#Connect to Mcirosoft Graph:
Connect-MgGraph -ClientId $MgGClientID -CertificateThumbprint $ThumbPrint -TenantId $TenantName

#Disconnect from Mcirosoft Graph:
Disconnect-MgGraph
 
#Get User Properties:
Get-MgUser -userid svikas@techwizard.cloud | Format-List  ID, DisplayName, Mail, UserPrincipalName

#Get All Users:	
Get-MgUser -All | Format-List  ID, DisplayName, Mail, UserPrincipalName

