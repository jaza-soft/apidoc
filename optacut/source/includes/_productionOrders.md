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
    "externalId": "2000"
    "primaryUnitId": "unit2",
    "fpo": "FPO#200",
    "orderQty": 500,
    "sizeBreakupList": [
      { "serialNo": 1, "sizeGroup": "", "size": "30", "qty": 150 },
      { "serialNo": 2, "sizeGroup": "", "size": "32", "qty": 200 },
      { "serialNo": 3, "sizeGroup": "", "size": "34", "qty": 150 }
    ]
  },
  {
    "externalId": "2000"
    "primaryUnitId": "unit3",
    "fpo": "FPO#201",
    "orderQty": 500,
    "sizeBreakupList": [
      { "serialNo": 1, "sizeGroup": "", "size": "30", "qty": 150 },
      { "serialNo": 2, "sizeGroup": "", "size": "32", "qty": 200 },
      { "serialNo": 3, "sizeGroup": "", "size": "34", "qty": 150 }
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







