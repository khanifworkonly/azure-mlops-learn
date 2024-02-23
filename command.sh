 az ad sp create-for-rbac --name "my-service-principal" --role contributor --scopes /subscriptions/c118c0e8-2f02-425c-9a8f-c82533c6ae52/resourceGroups/MyLearning --sdk-auth

 az ad sp create-for-rbac --name "aml-dev-service-principal" --role contributor --scopes /subscriptions/c118c0e8-2f02-425c-9a8f-c82533c6ae52/resourceGroups/MyLearning/providers/Microsoft.MachineLearningServices/workspaces/AML-Development --sdk-auth

 az ad sp create-for-rbac --name "aml-prod-service-principal" --role contributor --scopes /subscriptions/c118c0e8-2f02-425c-9a8f-c82533c6ae52/resourceGroups/MyLearning/providers/Microsoft.MachineLearningServices/workspaces/AML-Production --sdk-auth

 az ad app create --display-name myApp
 az ad sp create --id $appId
 
 az role assignment create \
 	--role contributor \
 	--subscription $subscriptionId \
 	--assignee-object-id  $assigneeObjectId \
 	--assignee-principal-type ServicePrincipal \
 	--scope /subscriptions/$subscriptionId/resourceGroups/$resourceGroupName
 az role assignment create \
 	--role contributor \
 	--subscription c118c0e8-2f02-425c-9a8f-c82533c6ae52 \
 	--assignee-object-id  78caea16-b69d-4ba6-be2a-9ca7256a10ef \
 	--assignee-principal-type ServicePrincipal \
 	--scope /subscriptions/c118c0e8-2f02-425c-9a8f-c82533c6ae52/resourceGroups/MyLearning
 
 az ad app federated-credential create --id $assigneeObjectId (or AppID or Object ID) --parameters credential.json
 az ad app federated-credential create --id 78caea16-b69d-4ba6-be2a-9ca7256a10ef --parameters MarufApp\credential.json