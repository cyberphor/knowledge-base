# Self-Service Password Reset
Self-Service Password Reset (SSPR) allows users to reset their password without help (whether they're logged in or not). 

## User Requirements
Users must meet the requirements listed below to use the SSPR feature. Administrators need the Global Administrator privilege. 
* Be licensed
* Be registered (i.e., provide the information required for the minimum number of authentication methods)

## Licensing
With the Entra ID Free Edition license, you can reset your password if you're already signed-in. If you're not signed-in, you'll need either a Microsoft 365 Apps, Premium P1, or Premium P2 Edition license. 

## SSPR Portal
The SSPR portal does the following when a password reset request has been received.
1. Challenges the entity with a captcha
2. Challenges the entity to authenticate 
3. Prompts the entity for their new password
4. Notifies the entity their password has been changed

## Authentication Options
The SSPR portal supports the options listed below for authentication. Call-based reset options are not supported in the Entra ID Free Edition. 
* Email
* Mobile app approval
* Mobile app code
* Text
* Call
* Security questions

## Notification Options
The SSPR portal supports the options listed below for notification. 
* Notify users
* Notify all administrators

## Best Practices
Listed below are best practices in configuring SSPR. 
* Require MFA  
* Using the mobile app authentication options are not recommended
* Using security questions are the least recommended authentication option
