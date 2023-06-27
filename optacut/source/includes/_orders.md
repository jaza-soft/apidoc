# Orders

## Get All Orders

```shell
curl "~/api/orders" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the orders. Refer `Pagination and Sort` and `Schema` Section for exact response structure

This endpoint retrieves all orders. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/api/orders`

## Get a Specific Order

```shell
curl "~/api/orders/1" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "customerId": 2,
  "seasonId": 1,
  "poRef": "T/100",
  "customerPoRef": "B/100",
  "desc": "Test description",
  "orderQty": 2000,
  "products": "Mens Formal Shirt-L/S",
  "styles": "A6",
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
      "state": "[{\"state\":\"New\"}]",
      "partList": [
        { "id": 10,  "serial": null, "partName": "Shell", "placement": "Entire Body", "bomCu": 1.2, "uom": "meter" },
        { "id": 11, "serial": null, "partName": "Trim1", "placement": "Neckband", "bomCu": 0.1, "uom": "meter"}
      ],
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

`GET ~/api/orders/{orderId}`

### URL Parameters

| Parameter | Description                     |
| --------- | ------------------------------- |
| orderId   | The Id of the order to retrieve |

## Create Order

```shell
curl "~/api/orders" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a order.

### HTTP Request

`POST ~/api/orders`

### JSON Payload

<pre class="center-column">
{
    "poRef": "J/102",
    "customerPoRef": "B/100",
    "customerId": 2,
    "seasonId": 1,
    "desc": "Test description",
    "flowInfoList": [
        {
            "serialNo": 1,
            "productId": 2,
            "style": "A6",
            "styleNo": "A1000",
            "fit":"Slim Fit",
            "color": "Black",
            "orderQty": 1000,
            "extra": 5,
            "inseam":"32Inch",
            "destination": "US",
            "delMode": "Air",
            "exFactoryDate": "2023-05-30",
            "flowRef":"REF1",
            "customerFlowRef": "BPO#01",
            "partList": [
                { "partName": "Shell", "placement": "Entire Body", "bomCu": 1.2, "uom": "meter", "bomFabricId": 1, "bomFabColor": "WHITE", "fabOrderQty": 1000 },
                { "partName": "Trim1", "placement": "Neckband", "bomCu": 0.10, "uom": "meter", "bomFabricId": 1, "bomFabColor": "WHITE", "fabOrderQty": 1000 }
            ],
            "sizeBreakupList": [
                { "serialNo": 1, "sizeGroup": "", "size": "30", "qty": 300 },
                { "serialNo": 2, "sizeGroup": "", "size": "32", "qty": 400 },
                { "serialNo": 3, "sizeGroup": "", "size": "34", "qty": 300 }
            ]
        }
    ]
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 10,
  "poRef": "J/102",
  "customerPoRef": "B/100",
  "customerId": 2,
  "seasonId": 1,
  "desc": "Test description",
  "flowInfoList": [
    {
      "id": 64,
      "serialNo": 1,
      "productId": 2,
      "style": "A6",
      "styleNo": "A1000",
      "fit":"Slim Fit",
      "color": "Black",
      "orderQty": 1000,
      "extra": 5,
      "inseam":"32Inch",
      "destination": "US",
      "delMode": "Air",
      "exFactoryDate": "2023-05-30",
      "flowRef":"REF1",
      "customerFlowRef": "BPO#01",
      "partList": [
        { "id": 37, "partName": "Shell", "placement": "Entire Body", "bomCu": 1.2, "uom": "meter", "bomFabricId": 1, "bomFabColor": "WHITE", "fabOrderQty": 1000 },
        { "id": 38, "partName": "Trim1", "placement": "Neckband", "bomCu": 0.10, "uom": "meter", "bomFabricId": 1, "bomFabColor": "WHITE", "fabOrderQty": 1000 }
      ],
      "sizeBreakupList": [
        { "id": 37, "serialNo": 1, "sizeGroup": "", "size": "30", "qty": 300 },
        { "id": 38, "serialNo": 2, "sizeGroup": "", "size": "32", "qty": 400 },
        { "id": 39, "serialNo": 3, "sizeGroup": "", "size": "34", "qty": 300 }
      ]
    }
  ]
}
```

## Update a Specific Order

```shell
curl "~/api/orders/{orderId}" \
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
  "id": 10,
  "poRef": "J/102",
  "customerPoRef": "B/100",
  "customerId": 2,
  "seasonId": 1,
  "desc": "Test description",
  "flowInfoList": [
    {
      "id": 64,
      "serialNo": 1,
      "productId": 2,
      "style": "A6",
      "styleNo": "A1000",
      "fit":"Slim Fit",
      "color": "Black",
      "orderQty": 1000,
      "extra": 5,
      "inseam":"32Inch",
      "destination": "US",
      "delMode": "Air",
      "exFactoryDate": "2023-05-30",
      "flowRef":"REF1",
      "customerFlowRef": "BPO#01",
      "partList": [
        { "id": 37, "partName": "Shell", "placement": "Entire Body", "bomCu": 1.2, "uom": "meter", "bomFabricId": 1, "bomFabColor": "WHITE", "fabOrderQty": 1000 },
        { "id": 38, "partName": "Trim1", "placement": "Neckband", "bomCu": 0.10, "uom": "meter", "bomFabricId": 1, "bomFabColor": "WHITE", "fabOrderQty": 1000 }
      ],
      "sizeBreakupList": [
        { "id": 37, "serialNo": 1, "sizeGroup": "", "size": "30", "qty": 300 },
        { "id": 38, "serialNo": 2, "sizeGroup": "", "size": "32", "qty": 400 },
        { "id": 39, "serialNo": 3, "sizeGroup": "", "size": "34", "qty": 300 }
      ]
    }
  ]
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "customerId": 2,
  "seasonId": 1,
  "poRef": "T/100",
  "customerPoRef": "B/100",
  "desc": "Test description",
  "orderQty": 2000,
  "products": "Mens Formal Shirt-L/S",
  "styles": "A6",
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
      "state": "[{\"state\":\"New\"}]",
      "partList": [
        { "id": 10,  "serial": null, "partName": "Shell", "placement": "Entire Body", "bomCu": 1.2, "uom": "meter" },
        { "id": 11, "serial": null, "partName": "Trim1", "placement": "Neckband", "bomCu": 0.1, "uom": "meter"}
      ],
      "sizeBreakupList": [
        { "id": 100, "serialNo": 1, "sizeGroup": "", "size": "30", "qty": 300 },
        { "id": 101, "serialNo": 2, "sizeGroup": "", "size": "32", "qty": 400 },
        { "id": 102, "serialNo": 3, "sizeGroup": "", "size": "34", "qty": 300 }
      ]
    }
  ]
}
```

## Delete  Order

```shell
curl "~/api/orders/{orderId}"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific order.

### HTTP Request

`DELETE ~/api/orders/{orderId}`

### URL Parameters

| Parameter | Description                   |
|-----------|-------------------------------|
| orderId   | The Id of the order to delete |

## Schema - Order

```json
{
  "id": "long",
  "customerId": "long",
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
      "inseam":"string"
      "color": "string",
      "destination": "string",
      "exFactoryDate": "yyyy-MM-dd",
      "delMode": "string",
      "orderQty": "int",
      "extra": "float",
      "partList": [
        {
          "id": "long",
          "serial": "int",
          "partName": "string",
          "placement": "string",
          "bomCu": "float",
          "uom": "string",
          "bomFabricId": "long",
          "bomFabColor": "string",
          "fabOrderQty": "int"
        }
      ],
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
| customerId    | Long   |             | Internal ID of Customer           |
| seasonId      | Long   |             | Internal ID of Season             |
| desc          | Text   |             | description for Order             |

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
| exFactoryDate   | Date   |             | Delivery Date. Format: `yyyy-MM-dd`           |
| orderQty        | Int    | Required    | Order Qty in this flow                        |
| extra           | Float  |             | Allowed Extra percent                         |

**Part Table**

| Field       | Type   | Constraints | Description                                                                |
|-------------|--------|-------------|----------------------------------------------------------------------------|
| id          | Long   | Primary Key | Internal ID                                                                |
| partName    | String | Required    | Part Name                                                                  |
| placement   | String |             | Part Placement                                                             |
| bomCu       | Float  |             | BOM Consumption                                                            |
| uom         | String |             | Unit of Measurement for BOM Consumption. Values: (`meter`, `gram`, `yard`) |
| bomFabricId | Long   |             | Item Master ID                                                             |
| bomFabColor | String |             | Item Color                                                                 |
| fabOrderQty | Int    |             | Fabric Order Qty                                                           |

**Size Breakup Table**

| Field     | Type   | Constraints | Description            |
|-----------|--------|-------------|------------------------|
| id        | Long   | Primary Key | Internal ID            |
| serialNo  | Int    |             | Sequence of Size       |
| sizeGroup | String |             | Inseam if applicable   |
| size      | String | Required    | Size  Name             |
| qty       | Int    | Required    | Order qty in this size |







