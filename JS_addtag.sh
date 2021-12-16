#
#
# Personal Digital Spaces LLC ("COMPANY") CONFIDENTIAL
# Unpublished Copyright (c) 2021 Personal Digital Spaces LLC, All Rights Reserved.
#
# NOTICE:  All information contained herein is, and remains the property of COMPANY. The intellectual and technical concepts contained
# herein are proprietary to COMPANY and may be covered by U.S. and Foreign Patents, patents in process, and are protected by trade secret or copyright law.
# Dissemination of this information or reproduction of this material is strictly forbidden unless prior written permission is obtained
# from COMPANY.  Access to the source code contained herein is hereby forbidden to anyone except current COMPANY employees, managers, contractors or partners who have executed 
# Confidentiality and Non-disclosure agreements explicitly covering such access.
#
# The copyright notice above does not evidence any actual or intended publication or disclosure  of  this source code, which includes  
# information that is confidential and/or proprietary, and is a trade secret, of  COMPANY.   ANY REPRODUCTION, MODIFICATION, DISTRIBUTION, PUBLIC  PERFORMANCE, 
# OR PUBLIC DISPLAY OF OR THROUGH USE  OF THIS  SOURCE CODE  WITHOUT  THE EXPRESS WRITTEN CONSENT OF COMPANY IS STRICTLY PROHIBITED, AND IN VIOLATION OF APPLICABLE 
# LAWS AND INTERNATIONAL TREATIES.  THE RECEIPT OR POSSESSION OF  THIS SOURCE CODE AND/OR RELATED INFORMATION DOES NOT CONVEY OR IMPLY ANY RIGHTS  
# TO REPRODUCE, DISCLOSE OR DISTRIBUTE ITS CONTENTS, OR TO MANUFACTURE, USE, OR SELL ANYTHING THAT IT  MAY DESCRIBE, IN WHOLE OR IN PART.
#
# USAGE:
# ./JS_addtag.sh <userCredentials> <tagDescription>
#
# <userCredentials> - account's private key
# <tagDescription> - string used for title/Public Description of Tag
#
# EXAMPLE:
# ./JS_addtag.sh 0x5b7ba31504fe3a717b5ef6dde12d6c9fb5095de3018f349443c052ec5ed78ea4 December_2021

server="platform.dase.io"
host='https://'$server':5201'
userId="0x90671d28314bcacbe63dc3da5441e69b2888fd6d"
userCred=$1
tagDescription=$2

echo $host
echo $userId

curl -X POST $host -H 'Content-Type: application/json' -d '{"method":"addTag","params":{"ownerId":"'${userId}'","ownerCredentials":"'${userCred}'","publicDescription":"'${tagDescription}'","custodians":[],"title":"'${tagDescription}'"}}' > ./log-JS_addtag.txt
cat ./log-JS_addtag.txt
printf “\n”



