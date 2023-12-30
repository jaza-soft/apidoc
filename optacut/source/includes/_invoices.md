# Invoices (GRN)

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
      "externalId": "200",
      "fabricId": 1,
      "color": "Blue",
      "colorCode": null,
      "colorShade": "Light",
      "externalOrderIds": "1000,1001",
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
          "supplierRollNo": "R100",
          "factoryRollNo": "INV-100/R100",
          "supplierLength": 100.2,
          "supplierWidth": 145
        },
        {
          "supplierRollNo": "R101",
          "factoryRollNo": "INV-100/R101",
          "supplierLength": 110.6,
          "supplierWidth": 146
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
      "externalId": "200",
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
          "supplierRollNo": "R/100",
          "factoryRollNo": null,
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
          "supplierRollNo": "R/101",
          "factoryRollNo": null,
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

## Delete Invoice (GRN)

```shell
curl "~/api/invoices?externalId=100"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific invoice.

### HTTP Request

`DELETE ~/api/invoices?externalId=<External ID>`

### URL Parameters

| Parameter  | Description            |
|------------|------------------------|
| externalId | External ID of Invoice |

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

## Schema - Invoice

```json
{
  "externalId": "string",
  "supplierId": "long",
  "invoiceNo": "string",
  "erpInvoiceNo": "string",
  "fabricItemList": [
    {
      "externalId": "string",
      "fabricId": "long",
      "color": "string",
      "colorShade": "string",
      "orderId": "long",
      "externalOrderId": "string",
      "fpo": "string",
      "orderQty": "float",
      "orderingWidth": "float",
      "uomWidth": "centimeter|inch|yard",
      "uomLength": "meter|yard",
      "orderingGsm": "float",
      "invoiceQty": "float",
      "grn": "string",
      "grnQty": "float",
      "grnDate": "yyyy-MM-dd",
      "warehouse": "string",
      "blanketQty": "float",
      "supplierRollList": [
        {
          "supplierRollNo": "string",
          "factoryRollNo": "string",
          "supplierLength": "float",
          "supplierWidth": "float"
        }
      ]
    }
  ]
}
```

Schema of invoice entity

**Invoice Table**

| Field        | Type   | Constraints | Description                        |
|--------------|--------|-------------|------------------------------------|
| id           | Number | Primary Key | Internal ID                        |
| externalId   | String |             | External ID                        |
| supplierId   | Long   | Required    | Supplier Internal ID               |
| invoiceNo    | String | Required    | Invoice number from Supplier       |
| invoiceDate  | Date   | Required    | Invoice Date. Format: `yyyy-MM-dd` |
| erpInvoiceNo | String |             | Invoice number in ERP              |

**Fabric Item Table**

| Field            | Type   | Constraints | Description                                                            |
|------------------|--------|-------------|------------------------------------------------------------------------|
| id               | Number | Primary Key | Internal ID                                                            |
| externalId       | String |             | External ID                                                            |
| serial           | Int    |             | Sequence of Item                                                       |
| fabricId         | Long   | Required    | Fabric Internal ID                                                     |
| color            | String | Required    | Fabric Color                                                           |
| colorCode        | String |             | Fabric Color Code                                                      |
| colorShade       | String |             | Fabric Color Shade (e.g. Light, Dark)                                  |
| orderId          | Long   |             | Internal Order ID                                                      |
| externalOrderIds | String |             | External Order IDs                                                     |
| fpo              | String |             | Fabric Purchase Order Number                                           |
| orderQty         | Float  | Required    | Fabric order qty                                                       |
| orderingWidth    | Float  | Required    | Ordering/Booking Width                                                 |
| orderingGsm      | Float  |             | Ordering/Booking value GSM                                             |
| uomWidth         | string |             | Unit of measurement for width. Values - (`centimeter`, `inch`)         |
| uomLength        | string |             | Unit of measurement for Length. Values - (`meter`, `yard`, `kilogram`) |
| invoiceQty       | Float  | Required    | Invoice Qty                                                            |
| grn              | String | Required    | GRN Number                                                             |
| grnQty           | Float  |             | GRN Qty  (Derived from packing list)                                   |
| grnDate          | Date   |             | GRN Date.  Format: `yyyy-MM-dd`                                        |
| warehouse        | String |             | Warehouse where GRN is done                                            |
| blanketQty       | Float  |             | Blanket qty issued per roll for Shade/Shrinkage Report                 |

**SupplierRoll Table**

| Field          | Type   | Constraints | Description                  |
|----------------|--------|-------------|------------------------------|
| id             | Number | Primary Key | Internal ID                  |
| supplierRollNo | String | Required    | Roll Number                  |
| factoryRollNo  | String |             | Factory/Internal Roll Number |
| supplierLength | Float  |             | Supplier Length              |
| supplierWeight | Float  |             | Supplier Weight              |
| gsm            | Float  |             | GSM value                    |
| length         | Float  |             | Inspected Length             |
| width          | Float  |             | Cuttable Width               |
| weight         | Float  |             | Inspected Weight             |

