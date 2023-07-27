targetScope = 'subscription'
param pLocation string = 'eastus'
param pResourceGroupName string = 'aweatherwebRG'
resource azbicepdeveusrg 'Microsoft.Resources/resourceGroups@2022-09-01' ={
  name: pResourceGroupName
  location: pLocation
}
