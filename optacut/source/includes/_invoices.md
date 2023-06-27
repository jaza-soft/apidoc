# Invoices

## Get All Invoices

```shell
curl "~/api/invoices" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the invoices. Refer `Pagination and Sort` and `Schema` Section for exact
> response structure

This endpoint retrieves all invoices. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/api/invoices`

## Get a Specific Invoice

```shell
curl "~/api/invoices/1" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "invoiceDate": 1683936000000,
  "invoiceNo": "IV/250",
  "erpInvoiceNo": "250",
  "consignmentNo": null,
  "grn": "G/250",
  "supplierId": 16,
  "fabricItemList": [
    {
      "id": 26,
      "serial": 1,
      "fabricId": 1,
      "color": "Black",
      "orderingWidth": 147.0,
      "orderingGsm": null,
      "orderingWarpShrinkage": 3.0,
      "orderingWeftShrinkage": 4.0,
      "fpo": "FP/300",
      "orderQty": 7500.0,
      "invoiceQty": 7508.0
    }
  ]
}
```

This endpoint retrieves a specific invoice.

### HTTP Request

`GET ~/api/invoices/{invoiceId}`

### URL Parameters

| Parameter | Description                       |
|-----------|-----------------------------------|
| invoiceId | The Id of the invoice to retrieve |

## Create Invoice

```shell
curl "~/api/invoices" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a invoice.

### HTTP Request

`POST ~/api/invoices`

### JSON Payload

<pre class="center-column">
{
  "supplierId": 1,
  "invoiceNo": "INV-100",
  "erpInvoiceNo": "ERP INVOICE-100",
  "fabricItemList": [
    {
      "fabricId": 1,
      "orderId": 8,
      "itemCode": "IT-100",
      "itemDesc": "TEST DESC",
      "articleName": "ART-100",
      "classification": "Woven",
      "color": "WHITE",
      "invoiceQty": 12000,
      "grn": "G-100",
      "fpo": "FP-100",
      "orderQty": 1000,
      "construction": null,
      "content": null,
      "orderingWidth": "145",
      "orderingGsm": null,
      "orderingWarpShrinkage": null,
      "orderingWeftShrinkage": null,
      "grnQty": 5000,
      "blanketQty": 1.2
    }
  ]
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "supplierId": 1,
  "invoiceNo": "INV-100",
  "erpInvoiceNo": "ERP INVOICE-100",
  "fabricItemList": [
    {
      "id": 2,
      "fabricId": 1,
      "orderId": 8,
      "itemCode": "IT-100",
      "itemDesc": "TEST DESC",
      "articleName": "ART-100",
      "classification": "Woven",
      "color": "WHITE",
      "invoiceQty": 12000,
      "grn": "G-100",
      "fpo": "FP-100",
      "orderQty": 1000,
      "construction": null,
      "content": null,
      "orderingWidth": "145",
      "orderingGsm": null,
      "orderingWarpShrinkage": null,
      "orderingWeftShrinkage": null,
      "grnQty": 5000,
      "blanketQty": 1.2
    }
  ]
}
```

## Update a Specific Invoice

```shell
curl "~/api/invoices/1" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing invoice.

### HTTP Request

`PUT ~/api/invoices/{invoiceId}`

| Parameter | Description                     |
|-----------|---------------------------------|
| invoiceId | The Id of the invoice to update |

### JSON Payload

<pre class="center-column">
{
  "id": 1,
  "supplierId": 1,
  "invoiceNo": "INV-100-UPDATED",
  "erpInvoiceNo": "ERP INVOICE-100",
  "fabricItemList": [
    {
      "id": 2,
      "fabricId": 1,
      "orderId": 8,
      "itemCode": "IT-100",
      "itemDesc": "TEST DESC",
      "articleName": "ART-100",
      "classification": "Woven",
      "color": "WHITE",
      "invoiceQty": 12000,
      "grn": "G-100",
      "fpo": "FP-100",
      "orderQty": 1000,
      "construction": null,
      "content": null,
      "orderingWidth": "145",
      "orderingGsm": null,
      "orderingWarpShrinkage": null,
      "orderingWeftShrinkage": null,
      "grnQty": 5000,
      "blanketQty": 1.2
    }
  ]
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "supplierId": 1,
  "invoiceNo": "INV-100-UPDATED",
  "erpInvoiceNo": "ERP INVOICE-100",
  "fabricItemList": [
    {
      "id": 2,
      "fabricId": 1,
      "orderId": 8,
      "itemCode": "IT-100",
      "itemDesc": "TEST DESC",
      "articleName": "ART-100",
      "classification": "Woven",
      "color": "WHITE",
      "invoiceQty": 12000,
      "grn": "G-100",
      "fpo": "FP-100",
      "orderQty": 1000,
      "construction": null,
      "content": null,
      "orderingWidth": "145",
      "orderingGsm": null,
      "orderingWarpShrinkage": null,
      "orderingWeftShrinkage": null,
      "grnQty": 5000,
      "blanketQty": 1.2
    }
  ]
}
```

## Delete a Specific Invoice

```shell
curl "~/api/invoices/1"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific invoice.

### HTTP Request

`DELETE ~/api/invoices/{invoiceId}`

### URL Parameters

| Parameter | Description                     |
|-----------|---------------------------------|
| invoiceId | The Id of the invoice to delete |

## Fabric Association to a Style

```shell
curl "~/invoices/1/fabricItems/26/ledgers" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint created association of this fabric item to different styles.

### HTTP Request

`PUT ~/invoices/{invoiceId}/fabricItems/{fabricItemId}/ledgers`

| Parameter    | Description           |
|--------------|-----------------------|
| invoiceId    | The Id of the invoice |
| fabricItemId | The Id of Fabric Item |

### JSON Payload

<pre class="center-column">
[
  {
    "orderId": 10,
    "productId": 2,
    "style": "A6",
    "color": "Black",
    "partName": "Shell",
    "orderQty": 1000,
    "extra": 5,
    "qty": 1200,
    "fabricRequired": 1200,
    "extraFabricRequired": 1260,
    "part": "Shell",
    "styleColor": "Black"
  }
]
</pre>

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,  
    "orderId": 619,
    "flowInfoId": 1985,
    "productId": 2,
    "style": "A6",
    "color": "Black",
    "partId": 121,
    "type": "OUT",
    "outType": "Association",
    "qty": 1450
  }
]
```

## GRN/Packing List Upload via JSON

```shell
curl "~/invoices/1/fabricItems/26/rolls" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint uploads packing list against a fabric item of the invoice.

### HTTP Request

`PUT ~/invoices/{invoiceId}/fabricItems/{fabricItemId}/rolls?grn=<GRN Value>`

| Parameter    | Description           |
|--------------|-----------------------|
| invoiceId    | The Id of the invoice |
| fabricItemId | The Id of Fabric Item |
| grn          | GRN Value             |

### JSON Payload

<pre class="center-column">
[
  { "rollNo": "100", "supplierLength": 110.5, "supplierWeight": 55.0, "gsm": 200 },
  { "rollNo": "101", "supplierLength": 98.2, "supplierWeight": 41.0, "gsm": 200 }
]
</pre>

> The above command returns JSON structured like this:

```json
[
  { "id": 1, "rollNo": "100", "supplierLength": 110.5, "supplierWeight": 55.0, "gsm": 200 },
  { "id": 2, "rollNo": "101", "supplierLength": 98.2,  "supplierWeight": 41.0, "gsm": 200 }
]
```

## GRN/Packing List Upload via Excel

```shell
curl "~/invoices/1/fabricItems/26/rolls/upload" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d 'Excel File'
```

This endpoint uploads packing list against a fabric item of the invoice.

### HTTP Request

`PUT ~/invoices/{invoiceId}/fabricItems/{fabricItemId}/rolls`

| Parameter    | Description           |
|--------------|-----------------------|
| invoiceId    | The Id of the invoice |
| fabricItemId | The Id of Fabric Item |
| file         | Excel File            |

### Payload

Excel File in defined Format.

> The above command returns JSON structured like this:

```json
[
  { "id": 1, "rollNo": "100", "supplierLength": 110.5, "supplierWeight": 55.0, "gsm": 200 },
  { "id": 2, "rollNo": "101", "supplierLength": 98.2, "supplierWeight": 41.0, "gsm": 200 }
]
```

## Delete Packing List

```shell
curl "~/invoices/1/fabricItems/26/rolls" \
  -X DLEETE \
  -H "Authorization: Bearer <access_token>" \
```

> The above command returns empty content with response status `204`

This endpoint deletes the packing list against fabric item of invoice

### HTTP Request

`DELETE ~/invoices/{invoiceId}/fabricItems/{fabricItemId}/rolls`

| Parameter    | Description           |
|--------------|-----------------------|
| invoiceId    | The Id of the invoice |
| fabricItemId | The Id of Fabric Item |


## Schema - Invoice

```json
{
  "id": "long",
  "invoiceNo": "string",
  "invoiceDate": "yyyy-MM-dd",
  "erpInvoiceNo": "string",
  "consignmentNo": "string",
  "grn": "string",
  "supplierId": "long",
  "fabricItemList": [
    {
      "id": "long",
      "fabricId": "long",
      "serial": "int",
      "color": "string",
      "orderingWidth": "float",
      "orderingGsm": "float",
      "orderingWarpShrinkage": "float",
      "orderingWeftShrinkage": "float",
      "fpo": "string",
      "orderQty": "float",
      "invoiceQty": "float"
    }
  ]
}
```

Schema of invoice entity

**Invoice Table**

| Field         | Type   | Constraints | Description                        |
|---------------|--------|-------------|------------------------------------|
| id            | Number | Primary Key | Internal ID                        |
| supplierId    | Long   | Required    | Supplier Internal ID               |
| invoiceNo     | String | Required    | Invoice number from Supplier       |
| grn           | String | Required    | GRN No                             |
| invoiceDate   | Date   | Required    | Invoice Date. Format: `yyyy-MM-dd` |
| erpInvoiceNo  | String |             | Invoice number in ERP              |
| consignmentNo | String |             | Consignment number                 |


**Fabric Item Table**

| Field                 | Type   | Constraints | Description                                          |
|-----------------------|--------|-------------|------------------------------------------------------|
| id                    | Number | Primary Key | Internal ID                                          |
| serial                | Int    |             | Sequence of Item                                     |
| fabricId              | Long   | Required    | Fabric Internal ID                                   |
| color                 | String | Required    | Fabric Color                                         |
| orderingWidth         | Float  | Required    | Ordering/Booking Width                               |
| orderingGsm           | Float  |             | Ordering/Booking value GSM                           |
| orderingWarpShrinkage | Float  |             | Ordering/Booking Max Shrinkage tolerance length wise |
| orderingWeftShrinkage | Float  |             | Ordering/Booking Max Shrinkage tolerance width wise  |
| fpo                   | String |             | Fabric Purchase Order Number                         |
| orderQty              | Float  | Required    | Fabric order qty                                     |
| invoiceQty            | Float  | Required    | Invoice Qty                                          |


**Ledger Table**

| Field        | Type   | Constraints | Description                                                                    |
|--------------|--------|-------------|--------------------------------------------------------------------------------|
| id           | Number | Primary Key | Internal ID                                                                    |
| invoiceId    | Long   | Required    | Invoice Internal ID                                                            |
| fabricItemId | Long   | Required    | Fabric Item Internal ID                                                        |
| fabricId     | Long   | Required    | Fabric Internal ID                                                             |
| color        | String | Required    | Fabric Color                                                                   |
| flowInfoId   | Long   |             | Flow Info Internal ID                                                          |
| partId       | Long   |             | Part Internal ID                                                               |
| particulars  | String |             | Particulars                                                                    |
| type         | String |             | Ledger type - Inward or Outward. Values - (`IN`, `OUT`)                        |
| outType      | String |             | Outward type. Values - (`Association`, `Sampling`, `Write-Off`, `Return-mill`) |
| qty          | Int    | Required    | Ledger qty                                                                     |
| remarks      | String |             | Remarks                                                                        |

**SupplierRoll Table**

| Field          | Type   | Constraints | Description             |
|----------------|--------|-------------|-------------------------|
| id             | Number | Primary Key | Internal ID             |
| fabricItemId   | Long   | Required    | Fabric Item Internal ID |
| rollNo         | String | Required    | Roll Number             |
| supplierLength | Float  |             | Supplier Length         |
| supplierWeight | Float  |             | Supplier Weight         |
| gsm            | Float  |             | GSM value               |
| length         | Float  |             | Inspected Length        |
| width          | Float  |             | Cuttable Width          |
| weight         | Float  |             | Inspected Weight        |

