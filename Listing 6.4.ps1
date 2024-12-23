Connect-MgGraph -ClientId $MgGClientID -CertificateThumbprint $ThumbPrint -TenantId $TenantName -NoWelcome # connection command
$message = @{
	message = @{
		subject = "Automation Script”
		body = @{
			contentType = "Text"
			content = "Testing"
		}
		toRecipients = @(
			@{
				emailAddress = @{
					address = "SV1@techwizard.cloud"
				}
			}
		)
		ccRecipients = @(
			@{
				emailAddress = @{
					address = "SV2@TechWizard.cloud"
				}
			}
		)
	}
	saveToSentItems = "false"
}

Send-MgUserMail -UserId $From -BodyParameter $message
