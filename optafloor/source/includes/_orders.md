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
        {
          "id": 100,
          "serialNo": 1,
          "sizeGroup": "",
          "size": "30",
          "qty": 300
        },
        {
          "id": 101,
          "serialNo": 2,
          "sizeGroup": "",
          "size": "32",
          "qty": 400
        },
        {
          "id": 102,
          "serialNo": 3,
          "sizeGroup": "",
          "size": "34",
          "qty": 300
        }
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
  "poRef": "T-113",
  "seasonId": 1,
  "buyerId": 2,
  "flowInfoList": [
    {
      "serialNo": 1,
      "flowRef": "Ref#1",
      "productId": 1,
      "style": "A87",
      "color": "WHITE",
      "orderQty": 500,
      "exFactoryDate": "2023-07-12",
      "hasSizeBreakup": true,
      "trackingMaterial": "Bundle - Manual",
      "sizeBreakupList": [
        { "serial": 1, "size": "S", "qty": 150 },
        { "serial": 2, "size": "M", "qty": 200 },
        { "serial": 3, "size": "L", "qty": 150 }
      ]
    }
  ]
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "poRef": "T-113",
  "seasonId": 1,
  "buyerId": 2,
  "flowInfoList": [
    {
      "id": 100,
      "serialNo": 1,
      "flowRef": "Ref#1",
      "productId": 1,
      "style": "A87",
      "color": "WHITE",
      "orderQty": 500,
      "exFactoryDate": "2023-07-12",
      "hasSizeBreakup": true,
      "trackingMaterial": "Bundle - Manual",
      "sizeBreakupList": [
        {
          "serial": 1,
          "size": "S",
          "qty": 150
        },
        {
          "serial": 2,
          "size": "M",
          "qty": 200
        },
        {
          "serial": 3,
          "size": "L",
          "qty": 150
        }
      ]
    }
  ]
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
  "flowInfoList": [
    {
      "id": "long",
      "flowRef": "string",
      "serialNo": "int",
      "productId": "long",
      "style": "string",
      "color": "string",
      "exFactoryDate": "yyyy-MM-dd",
      "orderQty": "int",
      "sizeBreakupList": [
        {
          "id": "long",
          "serialNo": "int",
          "size": "string",
          "qty": "int"
        }
      ]
    }
  ]
}
```

**Order Table**

| Field    | Type   | Constraints | Description              |
|----------|--------|-------------|--------------------------|
| id       | Long   | Primary Key | Internal ID              |
| poRef    | String | Required    | Purchase Order Reference |
| buyerId  | Long   |             | Internal ID of Buyer     |
| seasonId | Long   |             | Internal ID of Season    |
| desc     | Text   |             | description for Order    |

**FlowInfo Table**

| Field            | Type   | Constraints | Description                                                                                               |
|------------------|--------|-------------|-----------------------------------------------------------------------------------------------------------|
| id               | Long   | Primary Key | Internal ID                                                                                               |
| serialNo         | Long   |             | Sequence                                                                                                  |
| flowRef          | String |             | Flow Reference                                                                                            |
| productId        | Long   | Required    | Internal ID of Product                                                                                    |
| style            | String | Required    | Style Name                                                                                                |
| color            | String | Required    | Style Color                                                                                               |
| trackingMaterial | String |             | Material which will be tracked: (`Bundle - System`, `Bundle - Manual`,`Piece - System`, `Piece - Manual`) |
| exFactoryDate    | Date   |             | Delivery Date. Format: `yyyy-MM-dd`                                                                       |
| orderQty         | Int    | Required    | Order Qty in this flow                                                                                    |

**Size Breakup Table**

| Field     | Type   | Constraints | Description                                                                                |
|-----------|--------|-------------|--------------------------------------------------------------------------------------------|
| id        | Long   | Primary Key | Internal ID                                                                                |
| serialNo  | Int    |             | Sequence of Size                                                                           |
| size      | String | Required    | Size  Name                                                                                 |
| qty       | Int    | Required    | Order qty in this size                                                                     |







