# Order Status Details

## Fetch Order Status details in date range

```shell
curl "~/v1/api/order-status-detail?search=sectionId=='NULL';type=='Production';date=ge=1722450600000;date=le=1722969000000" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint returns order status department wise based on date range

> The above command returns JSON structured like this:

```json
{
  "orderStatusDetailList": [
    {
      "id": 730757,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "XXS",
      "departmentId": 11,
      "departmentName": "Sewing",
      "lineId": 163,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 2551,
      "inputQty": 124,
      "outputQty": 231,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730987,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "S",
      "departmentId": 11,
      "departmentName": "Sewing",
      "lineId": 163,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 1433,
      "inputQty": 45,
      "outputQty": 113,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730986,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "XXS",
      "departmentId": 11,
      "departmentName": "Finishing",
      "lineId": 164,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 3938,
      "inputQty": 180,
      "outputQty": 492,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730758,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "S",
      "departmentId": 11,
      "departmentName": "Finishing",
      "lineId": 164,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 3993,
      "inputQty": 288,
      "outputQty": 572,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730651,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "XXS",
      "departmentId": 17,
      "departmentName": "Packing",
      "lineId": 136,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 571,
      "inputQty": 9,
      "outputQty": 9,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730653,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "S",
      "departmentId": 17,
      "departmentName": "Packing",
      "lineId": 136,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 1204,
      "inputQty": 40,
      "outputQty": 40,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    }
  ]
}
```

### HTTP Request

`GET ~/v1/api/order-status-detail?<Search Query>`

### URL Parameters

| Parameter | Description                                                                                       |
|-----------|---------------------------------------------------------------------------------------------------|
| search    | Search Query. e.g. `date=ge=1722450600000` for `date` greater than equal to timestamp (in millis) |

## Fetch Order Status details for one date

```shell
curl "~/v1/api/order-status-detail?search=sectionId=='NULL';type=='Production';date==1722450600000" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint returns order status department wise based on date

> The above command returns JSON structured like this:

```json
{
  "orderStatusDetailList": [
    {
      "id": 730757,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "XXS",
      "departmentId": 11,
      "departmentName": "Sewing",
      "lineId": 163,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 2551,
      "inputQty": 124,
      "outputQty": 231,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730987,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "S",
      "departmentId": 11,
      "departmentName": "Sewing",
      "lineId": 163,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 1433,
      "inputQty": 45,
      "outputQty": 113,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730986,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "XXS",
      "departmentId": 11,
      "departmentName": "Finishing",
      "lineId": 164,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 3938,
      "inputQty": 180,
      "outputQty": 492,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730758,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "S",
      "departmentId": 11,
      "departmentName": "Finishing",
      "lineId": 164,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 3993,
      "inputQty": 288,
      "outputQty": 572,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730651,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "XXS",
      "departmentId": 17,
      "departmentName": "Packing",
      "lineId": 136,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 571,
      "inputQty": 9,
      "outputQty": 9,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    },
    {
      "id": 730653,
      "destRef": "PO 105445 (Dusty Blue)",
      "date": 1722891600000,
      "buyerId": 82,
      "productId": 9,
      "seasonId": 26,
      "type": "Production",
      "size": "S",
      "departmentId": 17,
      "departmentName": "Packing",
      "lineId": 136,
      "lineName": "Line 1",
      "sectionId": null,
      "sectionName": null,
      "loadedQty": 1204,
      "inputQty": 40,
      "outputQty": 40,
      "operationId": null,
      "operationName": null,
      "pcsChecked": null,
      "defectCount": null,
      "reworkQty": null,
      "rejectedQty": 0,
      "flowId": 11050,
      "flowKey": "11050-PO 105445 (Dusty Blue)"
    }
  ]
}
```

### HTTP Request

`GET ~/v1/api/order-status-detail?<Search Query>`

### URL Parameters

| Parameter | Description                                                                        |
|-----------|------------------------------------------------------------------------------------|
| search    | Search Query. e.g. `date==1722450600000` for `date` equal to timestamp (in millis) |
