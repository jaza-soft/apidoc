# Material Transfer

## Warehouse Transfer

```shell
curl "~/api/material-transfer/warehouse" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint is for transferring material from one Warehouse to other warehouse

### HTTP Request

`PUT ~/api/material-transfer/warehouse`

### JSON Payload

<pre class="center-column">
{
  "invoiceId": 1,
  "externalInvoiceId": "100",
  "fabricItemId": 10,
  "itemCode": "HO/100",
  "itemColor": "Black",
  "itemColorCode": "Black",
  "itemColorShade": "",
  "fabricPo": "FAB/PO/1",
  "grn": "GRN/10",
  "fromWarehouse": "wh1",
  "toWarehouse": "wh2",
  "rollList": [
    {
      "supplierRollNo": "R100",
      "factoryRollNo": "INV-100/R100",
      "length": 100.2
    },
    {
      "supplierRollNo": "R101",
      "factoryRollNo": "INV-100/R101",
      "length": 110.6
    }
  ]
}
</pre>

## Item Transfer

```shell
curl "~/api/material-transfer/item" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint is for transferring material from one Item to other Item

### HTTP Request

`PUT ~/api/material-transfer/item`

### JSON Payload

<pre class="center-column">
{
  "invoiceId": 1,
  "externalInvoiceId": "100",
  "fabricItemId": 10,
  "itemCode": "HO/100",
  "itemColor": "Black",
  "itemColorCode": "Black",
  "itemColorShade": "",
  "fabricPo": "FAB/PO/1",
  "grn": "GRN/10",

  "fromItemCode": "HO/101",
  "fromItemColor": "Black",
  "fromItemColorCode": "Black",
  "toItemCode": "HO/105",
  "toItemColor": "Black",
  "toItemColorCode": "Black",
  "rollList": [
    {
      "supplierRollNo": "R100",
      "factoryRollNo": "INV-100/R100",
      "length": 100.2
    },
    {
      "supplierRollNo": "R101",
      "factoryRollNo": "INV-100/R101",
      "length": 110.6
    }
  ]
}
</pre>
