# External Invoices

## Allocate Material

```shell
curl "~/api/external/invoices/allocate" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint is for allocating material in an Order

### HTTP Request

`POST ~/api/external/invoices/allocate`

### JSON Payload

<pre class="center-column">
{
  "externalInvoiceId": "100",
  "fabricItemList": [
    {
      "itemCode": "HO/100",
      "itemColor": "Black",
      "itemColorCode": "Black",
      "itemColorShade": "",
      "fabricPo": "FAB/PO/1",
      "grn": "GRN/10",
      "width": 150,
      "uomWidth": "centimeter,
      "externalOrderIdList": [
        { "externalOrderId": "1000", "qty": 450 },
        { "externalOrderId": "1001", "qty": 550 }
      ]
    }
  ]
}
</pre>

## Deallocate Material

```shell
curl "~/api/external/invoices/deallocate" \
  -X DELETE \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint is for deallocating material from an Order

### HTTP Request

`DELETE ~/api/external/invoices/deallocate`

### JSON Payload

<pre class="center-column">
{
  "externalInvoiceId": "100",
  "fabricItemList": [
    {
      "itemCode": "HO/100",
      "itemColor": "Black",
      "itemColorCode": "Black",
      "itemColorShade": "",
      "fabricPo": "FAB/PO/1",
      "grn": "GRN/10",
      "width": 150,
      "uomWidth": "centimeter,
      "externalOrderIdList": [
        { "externalOrderId": "1000", "qty": 450 },
        { "externalOrderId": "1001", "qty": 550 }
      ]
    }
  ]
}
</pre>

## Reallocate Material

```shell
curl "~/api/external/invoices/reallocate" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint is for reallocating material from one Order to Other Order

### HTTP Request

`POST ~/api/external/invoices/reallocate`

### JSON Payload

<pre class="center-column">
{
  "externalInvoiceId": "100",
  "fabricItemList": [
    {
      "itemCode": "HO/100",
      "itemColor": "Black",
      "itemColorCode": "Black",
      "itemColorShade": "",
      "fabricPo": "FAB/PO/1",
      "grn": "GRN/10",
      "width": 150,
      "uomWidth": "centimeter,
      "externalOrderIdList": [
        { "prevExternalOrderId": "900", "externalOrderId": "1000", "qty": 450 },
        { "prevExternalOrderId": "901", "externalOrderId": "1001", "qty": 550 }
      ]
    }
  ]
}
</pre>
