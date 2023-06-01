# Orders

## Get All Orders

```shell
curl "~/v1/api/orders" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the orders. Refer `Pagination and Sort` and `Schema` Section for exact response
> structure

This endpoint retrieves all orders. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/v1/api/orders`

## Get a Specific Order

```shell
curl "~/v1/api/orders/1" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "buyerId": 2,
  "seasonId": 1,
  "poRef": "T/100",
  "customerPoRef": "B/100",
  "desc": "Test description",
  "orderQty": 2000,
  "products": "Mens Formal Shirt-L/S",
  "styles": "A6",
  "state": "New",
  "flowInfoList": [
    {
      "id": 1,
      "flowRef": null,
      "customerFlowRef": null,
      "parentId": null,
      "serialNo": 2,
      "productId": 2,
      "ratio": null,
      "style": "A6",
      "styleNo": null,
      "fit": null,
      "color": "White",
      "groupDestination": false,
      "destination": "US",
      "exFactoryDate": 1685404800000,
      "delMode": "Air",
      "orderQty": 1000,
      "extra": 5.0,
      "styleImage": null,
      "state": "New",
      "sizeBreakupList": [
        { "id": 100, "serialNo": 1, "sizeGroup": "", "size": "30", "qty": 300 },
        { "id": 101, "serialNo": 2, "sizeGroup": "", "size": "32", "qty": 400 },
        { "id": 102, "serialNo": 3, "sizeGroup": "", "size": "34", "qty": 300 }
      ]
    }
  ]
}
```

This endpoint retrieves a specific order.

### HTTP Request

`GET ~/v1/api/orders/{orderId}`

### URL Parameters

| Parameter | Description                     |
|-----------|---------------------------------|
| orderId   | The Id of the order to retrieve |

## Create Order

```shell
curl "~/v1/api/orders" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a order.

### HTTP Request

`POST ~/v1/api/orders`

### JSON Payload

<pre class="center-column">
{
  "seasonId": 24,
  "poRef": "T-113",
  "buyerId": 121,
  "flowInfoList": [
    {
      "uom": "Pc",
      "key": 1684333357316,
      "level": 0,
      "hasChild": false,
      "hasSizeBreakup": true,
      "trackingMaterial": "Bundle - From Lay",
      "productId": 20,
      "style": "A87",
      "color": "WHITE",
      "orderQty": "752",
      "exFactoryDate": "2023-07-12",
      "serialNo": 1
    }
  ]
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "version": null,
  "syncedVersion": null,
  "maxRetryCount": 1500,
  "externalId": null,
  "id": 6297,
  "creatorUnitIds": "unit1",
  "effUnitIds": "unit1",
  "allocUnitIds": "unit1",
  "createdBy": 2091,
  "createdAt": 1684333384771,
  "modifiedAt": 1684333384783,
  "poRef": "T-113",
  "customerPoRef": null,
  "state": "New",
  "styles": "A87",
  "flowRefs": "",
  "customerFlowRefs": null,
  "techPacks": null,
  "remarks": null,
  "customField1": null,
  "customField2": null,
  "customField3": null,
  "flowInfoList": [
    {
      "version": null,
      "syncedVersion": null,
      "maxRetryCount": 1500,
      "externalId": null,
      "id": 8519004,
      "modifiedAt": 1684333384783,
      "primaryUnitId": "unit1",
      "unitIds": "unit1",
      "productGroup": {
        "createdAt": 1684331622336,
        "modifiedAt": 1684331622336,
        "createdBy": "Md Zahid Raza",
        "lastModifiedBy": "Md Zahid Raza",
        "id": 2,
        "unitIds": "unit1",
        "prevUnitIds": null,
        "name": "PG-1",
        "parts": null,
        "hasSizeBreakup": true,
        "trackingMaterial": "Bundle - From Lay",
        "bundleGenLogic": "{\"serialResetAt\":[\"Destination\"],\"bundleResetAt\":[\"Destination\"],\"bundleBreakAt\":[\"Shade\"]}",
        "loadingMethod": null,
        "desc": null,
        "enabled": true,
        "sizeBreakup": true,
        "lastModifiedById": 1,
        "createdById": 1,
        "isReferenced": true
      },
      "product": {
        "createdAt": 1684331709431,
        "modifiedAt": 1684331738731,
        "createdBy": "Mojahid Admin OptaFloor",
        "lastModifiedBy": "Mojahid Admin OptaFloor",
        "id": 20,
        "unitIds": "unit1",
        "prevUnitIds": null,
        "productGroupList": [
          {
            "createdAt": 1684331622336,
            "modifiedAt": 1684331622336,
            "createdBy": "Md Zahid Raza",
            "lastModifiedBy": "Md Zahid Raza",
            "id": 2,
            "unitIds": "unit1",
            "prevUnitIds": null,
            "name": "PG-1",
            "parts": null,
            "hasSizeBreakup": true,
            "trackingMaterial": "Bundle - From Lay",
            "bundleGenLogic": "{\"serialResetAt\":[\"Destination\"],\"bundleResetAt\":[\"Destination\"],\"bundleBreakAt\":[\"Shade\"]}",
            "loadingMethod": null,
            "desc": null,
            "enabled": true,
            "sizeBreakup": true,
            "lastModifiedById": 1,
            "createdById": 1,
            "isReferenced": true
          }
        ],
        "name": "PRODUCT-1",
        "isSet": null,
        "desc": null,
        "productList": [],
        "productGroupIds": null,
        "productGroup": null,
        "bundleParts": null,
        "productGroupId": null,
        "enabled": true,
        "lastModifiedById": 2091,
        "createdById": 2091,
        "isReferenced": true
      },
      "ratio": null,
      "parentId": null,
      "orderParentId": null,
      "cuttingParentId": null,
      "obParentId": null,
      "isLeaf": true,
      "serialNo": 1,
      "flowRef": null,
      "customerFlowRef": null,
      "styleNo": null,
      "style": "A87",
      "styleImage": null,
      "color": "WHITE",
      "lot": 1,
      "sku": null,
      "orderQty": 752,
      "extra": 0.0,
      "uom": "Pc",
      "hasDestination": null,
      "destination": null,
      "delMode": null,
      "delivery": null,
      "exFactoryDate": 1689120000000,
      "trackingMaterial": "Bundle - From Lay",
      "hasSizeBreakup": true,
      "techPacks": null,
      "closingRemarks": null,
      "customField1": null,
      "customField2": null,
      "customField3": null,
      "bundleSetting": null,
      "lastBundleNo": null,
      "lastSerialNo": null,
      "lastJobOrderNo": null,
      "closeDate": null,
      "state": null,
      "sizeBreakupList": [],
      "layList": [],
      "bundleInfoList": [],
      "loadingList": [],
      "orderStatusSummaryList": [],
      "orderStatusDetailList": [],
      "key": 1684333357316,
      "parentKey": null,
      "orderId": null,
      "productGroupId": null,
      "productId": 20,
      "operationBulletinId": null,
      "sizeBreakup": null,
      "productName": null,
      "activityList": [],
      "splitFlowInfoList": [],
      "loadingMethod": null,
      "price": null,
      "prodCost": null,
      "parts": null,
      "lots": null,
      "destShipment": null,
      "bundleSize": null,
      "bundleTolerance": null,
      "bundleParts": null,
      "styleColor": "A87-WHITE"
    }
  ],
  "productGroup": null,
  "currCode": null,
  "currName": null,
  "exchangeRate": null,
  "hasSizeBreakup": null,
  "syncedExternally": null,
  "externalApp": null,
  "customField4": null,
  "customField5": null,
  "orderFlowList": [],
  "bundleSize": null,
  "bundleTolerance": null,
  "bundleParts": null,
  "orderQty": null,
  "virtualBundleSize": null,
  "destShipment": false,
  "totalQty": null,
  "colors": null,
  "noOfLots": null,
  "operationBulletin": null,
  "buyerId": 121,
  "seasonId": 24,
  "productGroupId": null,
  "productName": null,
  "isBundleGenerated": null,
  "isLoaded": null,
  "operationBulletinId": null,
  "appId": null
}
```

## Update a Specific Order

```shell
curl "~/v1/api/orders/{orderId}" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing order.

### HTTP Request

`PUT ~/api/orders/{orderId}`

| Parameter | Description                   |
|-----------|-------------------------------|
| orderId   | The Id of the order to update |

### JSON Payload

<pre class="center-column">
{
  "id": 6297,
  "creatorUnitIds": "unit1",
  "effUnitIds": "unit1",
  "allocUnitIds": "unit1",
  "createdBy": 2091,
  "poRef": "T-113-NEW",
  "customerPoRef": null,
  "state": "New",
  "styles": "A87",
  "flowRefs": "",
  "customerFlowRefs": null,
  "remarks": null,
  "flowInfoList": [
    {
      "id": 8519004,
      "modifiedAt": 1684333384783,
      "primaryUnitId": "unit1",
      "unitIds": "unit1",
      "productGroup": {
        "createdAt": 1684331622336,
        "modifiedAt": 1684331622336,
        "createdBy": "Md Zahid Raza",
        "lastModifiedBy": "Md Zahid Raza",
        "id": 2,
        "unitIds": "unit1",
        "prevUnitIds": null,
        "name": "PG-1",
        "parts": null,
        "hasSizeBreakup": true,
        "trackingMaterial": "Bundle - From Lay",
        "bundleGenLogic": "{\"serialResetAt\":[\"Destination\"],\"bundleResetAt\":[\"Destination\"],\"bundleBreakAt\":[\"Shade\"]}",
        "loadingMethod": null,
        "desc": null,
        "enabled": true,
        "sizeBreakup": true,
        "lastModifiedById": 1,
        "createdById": 1,
        "isReferenced": null
      },
      "isLeaf": true,
      "serialNo": 1,
      "styleNo": null,
      "style": "A87",
      "color": "WHITE-1",
      "lot": 1,
      "sku": null,
      "orderQty": 752,
      "extra": 0,
      "uom": "Pc",
      "hasDestination": null,
      "destination": null,
      "delMode": null,
      "delivery": null,
      "exFactoryDate": "2023-07-12",
      "trackingMaterial": "Bundle - From Lay",
      "hasSizeBreakup": true,
      "closeDate": null,
      "state": null,
      "sizeBreakupList": [],
      "key": 8519004,
      "parentKey": null,
      "orderId": null,
      "productGroupId": null,
      "productId": 20,
      "destShipment": null,
      "bundleSize": null,
      "bundleTolerance": null,
      "bundleParts": null,
      "styleColor": "A87-WHITE",
      "level": 0,
      "hasChild": false
    }
  ],
  "destShipment": false,
  "operationBulletin": null,
  "buyerId": 121,
  "seasonId": 24,
  "isBundleGenerated": false,
  "isLoaded": false
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "version": null,
  "syncedVersion": null,
  "maxRetryCount": 1500,
  "externalId": null,
  "id": 6297,
  "creatorUnitIds": "unit1",
  "effUnitIds": "unit1",
  "allocUnitIds": "unit1",
  "createdBy": 2091,
  "createdAt": 1684333384771,
  "modifiedAt": 1684334016660,
  "poRef": "T-113-NEW",
  "customerPoRef": null,
  "state": "New",
  "styles": "A87",
  "flowRefs": "",
  "customerFlowRefs": null,
  "techPacks": null,
  "remarks": null,
  "flowInfoList": [
    {
      "version": null,
      "syncedVersion": null,
      "maxRetryCount": 1500,
      "externalId": null,
      "id": 8519004,
      "modifiedAt": 1684334016661,
      "primaryUnitId": "unit1",
      "unitIds": "unit1",
      "productGroup": {
        "createdAt": 1684331622336,
        "modifiedAt": 1684331622336,
        "createdBy": "Md Zahid Raza",
        "lastModifiedBy": "Md Zahid Raza",
        "id": 2,
        "unitIds": "unit1",
        "prevUnitIds": null,
        "name": "PG-1",
        "parts": null,
        "hasSizeBreakup": true,
        "trackingMaterial": "Bundle - From Lay",
        "bundleGenLogic": "{\"serialResetAt\":[\"Destination\"],\"bundleResetAt\":[\"Destination\"],\"bundleBreakAt\":[\"Shade\"]}",
        "loadingMethod": null,
        "desc": null,
        "enabled": true,
        "sizeBreakup": true,
        "lastModifiedById": 1,
        "createdById": 1,
        "isReferenced": true
      },
      "product": {
        "createdAt": 1684331709431,
        "modifiedAt": 1684331738731,
        "createdBy": "Mojahid Admin OptaFloor",
        "lastModifiedBy": "Mojahid Admin OptaFloor",
        "id": 20,
        "unitIds": "unit1",
        "prevUnitIds": null,
        "name": "PRODUCT-1",
        "isSet": null,
        "desc": null,
        "productList": [],
        "productGroupIds": null,
        "productGroup": null,
        "bundleParts": null,
        "productGroupId": null,
        "enabled": true,
        "lastModifiedById": 2091,
        "createdById": 2091,
        "isReferenced": true
      },
      "ratio": null,
      "parentId": null,
      "orderParentId": null,
      "cuttingParentId": null,
      "obParentId": null,
      "isLeaf": true,
      "serialNo": 1,
      "flowRef": null,
      "customerFlowRef": null,
      "styleNo": null,
      "style": "A87",
      "styleImage": null,
      "color": "WHITE-1",
      "lot": 1,
      "sku": null,
      "orderQty": 752,
      "extra": 0.0,
      "uom": "Pc",
      "hasDestination": null,
      "destination": null,
      "delMode": null,
      "delivery": null,
      "exFactoryDate": 1689120000000,
      "trackingMaterial": "Bundle - From Lay",
      "hasSizeBreakup": true,
      "techPacks": null,
      "closingRemarks": null,
      "customField1": null,
      "customField2": null,
      "customField3": null,
      "bundleSetting": null,
      "lastBundleNo": null,
      "lastSerialNo": null,
      "lastJobOrderNo": null,
      "closeDate": null,
      "state": null,
      "sizeBreakupList": [],
      "layList": [],
      "bundleInfoList": [],
      "loadingList": [],
      "orderStatusSummaryList": [],
      "orderStatusDetailList": [],
      "key": 8519004,
      "parentKey": null,
      "orderId": null,
      "productGroupId": null,
      "productId": null,
      "operationBulletinId": null,
      "sizeBreakup": null,
      "productName": null,
      "activityList": [],
      "splitFlowInfoList": [],
      "loadingMethod": null,
      "price": null,
      "prodCost": null,
      "parts": null,
      "lots": null,
      "destShipment": null,
      "bundleSize": null,
      "bundleTolerance": null,
      "bundleParts": null,
      "styleColor": "A87-WHITE-1"
    }
  ],
  "destShipment": false
}
```

## Delete  Order

```shell
curl "~/v1/api/orders/{orderId}"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific order.

### HTTP Request

`DELETE ~/v1/api/orders/{orderId}`

### URL Parameters

| Parameter | Description                   |
|-----------|-------------------------------|
| orderId   | The Id of the order to delete |

## Schema - Order

```json
{
  "id": "long",
  "buyerId": "long",
  "seasonId": "long",
  "poRef": "string",
  "customerPoRef": "string",
  "desc": "string",
  "orderQty": "int",
  "flowInfoList": [
    {
      "id": "long",
      "flowRef": "string",
      "customerFlowRef": "string",
      "serialNo": "int",
      "productId": "long",
      "style": "string",
      "styleNo": "string",
      "fit": "string",
      "color": "string",
      "destination": "string",
      "exFactoryDate": "yyyy-MM-dd",
      "delMode": "string",
      "orderQty": "int",
      "extra": "float",
      "sizeBreakupList": [
        {
          "id": "long",
          "serialNo": "int",
          "sizeGroup": "string",
          "size": "string",
          "qty": "int"
        }
      ]
    }
  ]
}
```

**Order Table**

| Field         | Type   | Constraints | Description                       |
|---------------|--------|-------------|-----------------------------------|
| id            | Long   | Primary Key | Internal ID                       |
| poRef         | String | Required    | Purchase Order Reference          |
| customerPoRef | String |             | Customer Purchase Order Reference |
| buyerId       | Long   |             | Internal ID of Buyer              |
| seasonId      | Long   |             | Internal ID of Season             |
| desc          | Text   |             | description for Order             |

**FlowInfo Table**

| Field            | Type   | Constraints | Description                                         |
|------------------|--------|-------------|-----------------------------------------------------|
| id               | Long   | Primary Key | Internal ID                                         |
| serialNo         | Long   |             | Sequence                                            |
| flowRef          | String |             | Flow Reference                                      |
| uom              | String |             | Unit of measurement                                 |
| productId        | Long   | Required    | Internal ID of Product                              |
| style            | String | Required    | Style Name                                          |
| styleNo          | String |             | Style Long                                          |
| delMode          | String |             | Delivery Mode                                       |
| color            | String | Required    | Style Color                                         |
| destination      | String |             | Destination                                         |
| delMode          | String |             | Delivery Mode. Values: (`Air`, `Sea`, `Road`)       |
| trackingMaterial | String |             | Material which will be tracked: (`Bundle`,`Pieces`) |
| exFactoryDate    | Date   |             | Delivery Date. Format: `yyyy-MM-dd`                 |
| orderQty         | Int    | Required    | Order Qty in this flow                              |
| extra            | Float  |             | Allowed Extra percent                               |

**Size Breakup Table**

| Field     | Type   | Constraints | Description                                                                                |
|-----------|--------|-------------|--------------------------------------------------------------------------------------------|
| id        | Long   | Primary Key | Internal ID                                                                                |
| serialNo  | Int    |             | Sequence of Size                                                                           |
| sizeGroup | String |             | Inseam if applicable                                                                       |
| size      | String | Required    | Size  Name                                                                                 |
| qty       | Int    | Required    | Order qty in this size                                                                     |
| type      | String |             | If breakup is for Job Order Values - (`Order`, `Planned`, `Sent`, `Requested`, `Received`) |







