# Factory Production Order

## Create Factory Production Order

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
    "externalId": "2000",
    "primaryUnitId": "unit1",
    "cancelled":false,
    "fpo": "FPO#200",
    "orderQty": 1000,
    "sizeBreakupList": [
        { "serialNo": 1, "sizeGroup": "", "size": "S", "qty": 150 },
        { "serialNo": 2, "sizeGroup": "", "size": "M", "qty": 200 },
        { "serialNo": 3, "sizeGroup": "", "size": "L", "qty": 300 },
        { "serialNo": 4, "sizeGroup": "", "size": "XL", "qty": 200 },
        { "serialNo": 5, "sizeGroup": "", "size": "2XL", "qty": 150 }
    ],
    "departmentList": [
      { "id": 1, "name": "Cutting" },
      { "id": 2, "name": "Sewing" },
      { "id": 3, "name": "Finishing" },
    ]
  },
  {
    "externalId": "2001",
    "primaryUnitId": "unit1",
    "cancelled":false,
    "fpo": "FPO#200",
    "orderQty": 1000,
    "sizeBreakupList": [
        { "serialNo": 1, "sizeGroup": "", "size": "S", "qty": 150 },
        { "serialNo": 2, "sizeGroup": "", "size": "M", "qty": 200 },
        { "serialNo": 3, "sizeGroup": "", "size": "L", "qty": 300 },
        { "serialNo": 4, "sizeGroup": "", "size": "XL", "qty": 200 },
        { "serialNo": 5, "sizeGroup": "", "size": "2XL", "qty": 150 }
    ],
    "departmentList": [
      { "id": 1, "name": "Cutting" },
      { "id": 2, "name": "Sewing" },
      { "id": 3, "name": "Finishing" },
    ]
  }
]
</pre>

## Schema - Production Order

```json
[
  {
    "externalId": "string",
    "primaryUnitId": "string",
    "fpo": "string",
    "orderQty": "int",
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

**PO Table**

| Field         | Type   | Constraints | Description                                                 |
|---------------|--------|-------------|-------------------------------------------------------------|
| externalId    | String | Required    | External ID which was sent in FlowInfo while creating order |
| primaryUnitId | String | Required    | Unit in which this order is planned                         |
| fpo           | String |             | Factory Production Order number                             |
| orderQty      | Int    | Required    | Order Qty in this flow                                      |

**Size Breakup Table**

| Field     | Type   | Constraints | Description            |
|-----------|--------|-------------|------------------------|
| id        | Long   | Primary Key | Internal ID            |
| serialNo  | Int    |             | Sequence of Size       |
| sizeGroup | String |             | Inseam if applicable   |
| size      | String | Required    | Size  Name             |
| qty       | Int    | Required    | Order qty in this size |







