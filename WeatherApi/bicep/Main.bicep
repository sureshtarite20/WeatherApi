param pLocation string 
param pSkuName string 
param pSKUCapacity int 
param pAppServiceplan string
param pWebAppName string 
//param pSlotName string ='staging'


module mAppServicePlan 'AppServicePlan.bicep'={
  name: 'AppServiceplan'
  params: {
    pLocation: pLocation
    pSkuName: pSkuName
    pSKUCapacity: pSKUCapacity
    pAppServiceplan: pAppServiceplan
    pWebAppName: pWebAppName
    //pSlotName: pSlotName
  }
  
}
