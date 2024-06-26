# Invoices (GRN)

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

## Create Invoice (GRN)

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
  "externalId": "100",
  "supplierId": 1,
  "invoiceNo": "INV-100",
  "erpInvoiceNo": "ERP INVOICE-100",
  "fabricItemList": [
    {
      "externalId": "1000",
      "fabricId": 1,
      "color": "Blue",
      "colorShade": "Light",
      "orderId": null,
      "fpo": "FPO#100",
      "orderQty": 1000,
      "orderingWidth": "145",
      "uomWidth": "centimeter",
      "uomLength": "meter",
      "orderingGsm": null,
      "invoiceQty": 1000,
      "grn": "GRN#100",
      "grnQty": 1000,
      "grnDate": "2023-10-06",
      "warehouse": "wh-central",
      "blanketQty": 0.5,
      "supplierRollList": [
        {
          "rollNo": "R/100",
          "supplierLength": 100.2,
          "supplierWidth": 145
        },
        {
          "rollNo": "R/101",
          "supplierLength": 110.6,
          "supplierWidth": 146
        }
      ],
      "poList": [
        {
          "externalOrderId": "1000",
          "productId": 10,
          "style": "A6",
          "color": "Blue",
          "parentColor": "Combo 1",
          "part": "Shell",
          "associationQty": 500
        },
        {
          "externalOrderId": "1001",
          "productId": 10,
          "style": "A6",
          "color": "Blue",
          "parentColor": "Combo 1",
          "part": "Shell",
          "associationQty": 500
        }
      ]
    }
  ]
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "externalId": "100",
  "id": 98,
  "createdDate": 1696836107887,
  "supplierId": 1,
  "invoiceNo": "INV-100",
  "erpInvoiceNo": "ERP INVOICE-100",
  "fabricItemList": [
    {
      "externalId": "1000",
      "id": 126,
      "warehouse": "wh-central",
      "fabricId": 1,
      "color": "Blue",
      "colorShade": "Light",
      "grn": "GRN#100",
      "fpo": "FPO#100",
      "orderQty": 1000.0,
      "orderingWidth": 60.0,
      "invoiceQty": 1000.0,
      "grnQty": 210.8,
      "grnDate": 1696550400000,
      "blanketQty": 0.5,
      "rollCount": 2,
      "uomLength": "meter",
      "uomWidth": "centimeter",
      "supplierRollList": [
        {
          "id": 6921,
          "rollNo": "R/100",
          "supplierLength": 100.2,
          "supplierWidth": 58.0,
          "uomLength": "meter",
          "uomWidth": "centimeter",
          "length": 100.2,
          "width": 58.0,
          "blanketQty": 0.0,
          "effectiveLength": 100.2
        },
        {
          "id": 6922,
          "rollNo": "R/101",
          "supplierLength": 110.6,
          "supplierWidth": 59.0,
          "uomLength": "meter",
          "uomWidth": "centimeter",
          "length": 110.6,
          "width": 59.0,
          "blanketQty": 0.0,
          "effectiveLength": 110.6
        }
      ]
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
      "grn": null,
      "fpo": "FP-100",
      "orderQty": 1000,
      "construction": null,
      "content": null,
      "orderingWidth": "145",
      "orderingGsm": null,
      "orderingWarpShrinkage": null,
      "orderingWeftShrinkage": null,
      "grnQty": null,
      "blanketQty": null
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
      "grn": null,
      "fpo": "FP-100",
      "orderQty": 1000,
      "construction": null,
      "content": null,
      "orderingWidth": "145",
      "orderingGsm": null,
      "orderingWarpShrinkage": null,
      "orderingWeftShrinkage": null,
      "grnQty": null,
      "blanketQty": null
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

`PUT ~/invoices/{invoiceId}/fabric-items/{fabricItemId}/ledgers`

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
curl "~/invoices/1/fabric-items/26/rolls" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint uploads packing list against a fabric item of the invoice.

### HTTP Request

`PUT ~/invoices/{invoiceId}/fabric-items/{fabricItemId}/rolls?grn=<GRN Value>`

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
curl "~/invoices/1/fabric-items/26/rolls/upload" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d 'Excel File'
```

This endpoint uploads packing list against a fabric item of the invoice.

### HTTP Request

`PUT ~/invoices/{invoiceId}/fabric-items/{fabricItemId}/rolls`

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
curl "~/invoices/1/fabric-items/26/rolls" \
  -X DLEETE \
  -H "Authorization: Bearer <access_token>" \
```

> The above command returns empty content with response status `204`

This endpoint deletes the packing list against fabric item of invoice

### HTTP Request

`DELETE ~/invoices/{invoiceId}/fabric-items/{fabricItemId}/rolls`

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

