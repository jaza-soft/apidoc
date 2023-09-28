# Production Order

## Create Production Order

```shell
curl "~/api/production-orders?externalOrderId=1000" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a order.

### HTTP Request

`POST ~/api/production-orders?externalOrderId=<External Order Id>`

### URL Parameters

| Parameter       | Description                     |
|-----------------|---------------------------------|
| externalOrderId | The external ID of parent Order |

### JSON Payload

<pre class="center-column">
[
  {
    "flowRef": null,
    "customerFlowRef": null,
    "fpo": "FPO#2",
    "primaryUnitId": "unit2",
    "productId": 5,
    "style": "A6",
    "styleNo": null,
    "fit": "Slim",
    "color": "White",
    "inseam": null,
    "destination": null,
    "deliveryDate": null,
    "delMode": null,
    "orderQty": 500,
    "customField1": null,
    "customField2": null,
    "customField3": null,
    "sizeBreakupList": [
      { "serialNo": 1, "sizeGroup": "G1", "size": "S", "qty": 75},
      { "serialNo": 2, "sizeGroup": "G1", "size": "M", "qty": 100},
      { "serialNo": 3, "sizeGroup": "G1", "size": "L", "qty": 150},
      { "serialNo": 4, "sizeGroup": "G1", "size": "XL", "qty": 100},
      { "serialNo": 5, "sizeGroup": "G1", "size": "2XL", "qty": 75}
    ]
  },
  {
    "flowRef": null,
    "customerFlowRef": null,
    "fpo": "FPO#3",
    "primaryUnitId": "unit3",
    "productId": 5,
    "style": "A6",
    "styleNo": null,
    "fit": "Slim",
    "color": "White",
    "inseam": null,
    "destination": null,
    "deliveryDate": null,
    "delMode": null,
    "orderQty": 500,
    "customField1": null,
    "customField2": null,
    "customField3": null,
    "sizeBreakupList": [
      { "serialNo": 1, "sizeGroup": "G1", "size": "S", "qty": 75},
      { "serialNo": 2, "sizeGroup": "G1", "size": "M", "qty": 100},
      { "serialNo": 3, "sizeGroup": "G1", "size": "L", "qty": 150},
      { "serialNo": 4, "sizeGroup": "G1", "size": "XL", "qty": 100},
      { "serialNo": 5, "sizeGroup": "G1", "size": "2XL", "qty": 75}
    ]
  }
]
</pre>

> The above command returns JSON structured like this:

```json
[
  {
    "id": 741,
    "fpo": "FPO#2",
    "primaryUnitId": "unit2",
    "unitIds": "unit2",
    "orderParentId": 722,
    "isLeaf": true,
    "serialNo": 0,
    "style": "A6",
    "fit": "Slim",
    "color": "White",
    "orderQty": 500,
    "sizeBreakupList": [
      { "id": 1281, "serialNo": 1, "sizeGroup": "G1", "size": "S", "qty": 75},
      { "id": 1282, "serialNo": 2, "sizeGroup": "G1", "size": "M", "qty": 100},
      { "id": 1283, "serialNo": 3, "sizeGroup": "G1", "size": "L", "qty": 150},
      { "id": 1284, "serialNo": 4, "sizeGroup": "G1", "size": "XL", "qty": 100},
      { "id": 1285, "serialNo": 5, "sizeGroup": "G1", "size": "2XL", "qty": 75}
    ],
    "productId": 5,
    "lots": 1,
    "uom": "Meter",
    "markerRequired": false,
    "stateList": [],
    "setParent": false,
    "styleColor": "A6,White",
    "lastModifiedById": 452,
    "parent": false
  },
  {
    "maxRetryCount": 1500,
    "id": 742,
    "modifiedAt": 1695792602681,
    "lastModifiedBy": "Super User Dev",
    "fpo": "FPO#3",
    "primaryUnitId": "unit3",
    "unitIds": "unit3",
    "orderParentId": 722,
    "isLeaf": true,
    "serialNo": 0,
    "style": "A6",
    "fit": "Slim",
    "color": "White",
    "orderQty": 500,
    "sizeBreakupList": [
      { "id": 1286, "serialNo": 1, "sizeGroup": "G1", "size": "S", "qty": 75},
      { "id": 1287, "serialNo": 2, "sizeGroup": "G1", "size": "M", "qty": 100},
      { "id": 1288, "serialNo": 3, "sizeGroup": "G1", "size": "L", "qty": 150},
      { "id": 1289, "serialNo": 4, "sizeGroup": "G1", "size": "XL", "qty": 100},
      { "id": 1290, "serialNo": 5, "sizeGroup": "G1", "size": "2XL", "qty": 75}
    ],
    "productId": 5,
    "lots": 1,
    "uom": "Meter",
    "markerRequired": false,
    "stateList": [],
    "setParent": false,
    "styleColor": "A6,White",
    "lastModifiedById": 452,
    "parent": false
  }
]
```

## Schema - Production Order

```json
[
  {
    "id": "long",
    "flowRef": "string",
    "customerFlowRef": "string",
    "serialNo": "int",
    "productId": "long",
    "style": "string",
    "styleNo": "string",
    "fit": "string",
    "inseam": "string",
    "color": "string",
    "destination": "string",
    "deliveryDate": "yyyy-MM-dd",
    "delMode": "string",
    "orderQty": "int",
    "primaryUnitId": "string",
    "fpo": "string",
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
```

**FlowInfo Table**

| Field           | Type   | Constraints | Description                                   |
|-----------------|--------|-------------|-----------------------------------------------|
| id              | Long   | Primary Key | Internal ID                                   |
| serialNo        | Long   |             | Sequence                                      |
| flowRef         | String |             | Flow Reference                                |
| customerFlowRef | String |             | Customer Flow Reference                       |
| productId       | Long   | Required    | Internal ID of Product                        |
| style           | String | Required    | Style Name                                    |
| styleNo         | String |             | Style Long                                    |
| fit             | String |             | Fit                                           |
| inseam          | String |             | Inseam                                        |
| color           | String | Required    | Style Color                                   |
| destination     | String |             | Destination                                   |
| delMode         | String |             | Delivery Mode. Values: (`Air`, `Sea`, `Road`) |
| deliveryDate    | Date   |             | Delivery Date. Format: `yyyy-MM-dd`           |
| orderQty        | Int    | Required    | Order Qty in this flow                        |
| primaryUnitId   | String | Required    | Unit in which this order is planned           |
| fpo             | String |             | Factory Production Order number               |

**Size Breakup Table**

| Field     | Type   | Constraints | Description            |
|-----------|--------|-------------|------------------------|
| id        | Long   | Primary Key | Internal ID            |
| serialNo  | Int    |             | Sequence of Size       |
| sizeGroup | String |             | Inseam if applicable   |
| size      | String | Required    | Size  Name             |
| qty       | Int    | Required    | Order qty in this size |







