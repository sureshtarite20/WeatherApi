param pLocation string
@description('''
provide valid SKU Name and allowed values are
- F1
- B1
- B2
- B3
- S1
''')
@allowed(['F1','B1','S1'])
param pSkuName string
@minValue(1)
@maxValue(30)
param pSKUCapacity int
param pAppServiceplan string
param pWebAppName string
//param pSlotName string

resource azbicepAppServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: pAppServiceplan
  location: pLocation
  sku: {
    name: pSkuName
    capacity: pSKUCapacity
  }
}

resource azbicepAppService 'Microsoft.Web/sites@2022-09-01' = {
  name: pWebAppName
  location: pLocation
  properties: {
    serverFarmId: azbicepAppServicePlan.id
  }
  
}

// resource stagingSlot 'Microsoft.Web/sites/slots@2021-02-01' = {
//   name: pSlotName
//   parent: azbicepAppService
//   location: pLocation
//   kind: 'app'
//   properties: {
//     serverFarmId: azbicepAppServicePlan.id
//   }
// }


// resource deploymentSlot0241 'Microsoft.Web/sites/slots@2022-09-01'={
//   name: '${azbicepAppService}/dev'
//   location: location
//   //parent: azbicepAppService
//   properties: {
//     serverFarmId: azbicepAppService.properties.serverFarmId
//   }
// }

// output webAppUrl string = azbicepAppService.properties.defaultHostName
// output deploymentSlotUrl string = deploymentSlot0241.properties.defaultHostName


