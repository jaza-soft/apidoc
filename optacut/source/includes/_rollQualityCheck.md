# Roll QC

## Update Roll QC

```shell
curl "~/api/external-roll-qc?externalOrderId=1000" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a order.

### HTTP Request

`PUT ~/api/external-roll-qc?externalOrderId=<External Order Id>`

### URL Parameters

| Parameter       | Description              |
|-----------------|--------------------------|
| externalOrderId | The external ID of Order |

### JSON Payload

<pre class="center-column">
{
  "productId": 1,
  "style": "Black",
  "styleColor": "A6",
  "part": "Shell",
  "placement": "Entire Body",
  "fabricItemList": [
    {
      "externalInvoiceId": "100",
      "externalFabricItemId": "200",
      "fabColor": "Blue",
      "rollList": [
        {
          "factoryRollNo": "INV-100/R100",
          "length": 100.2,
          "cuttableWidth": 144,
          "shade": "A",
          "csv": "Grade 3",
          "lengthShrinkagePercent": -2.5,
          "widthShrinkagePercent": -1.5,
          "lengthPatternValue": 2.0,
          "widthPatternValue": 1.5,
          "patternNo": "P1",
          "skewnessValue": 2.0,
          "skewnessGroup": "Less than 3.0%",
          "qcStatus": "Pass"
        },
        {
          "factoryRollNo": "INV-100/R101",
          "length": 110.6,
          "cuttableWidth": 145,
          "shade": "B",
          "csv": "Grade 3",
          "lengthShrinkagePercent": -2.1,
          "widthShrinkagePercent": -1.7,
          "lengthPatternValue": 2.0,
          "widthPatternValue": 1.5,
          "patternNo": "P1",
          "skewnessValue": 5.0,
          "skewnessGroup": "Between 3.0% to 6.0%",
          "qcStatus": "Pass"
        }
      ]
    }
  ]
}
</pre>

## Schema - Roll QC

```json
{
  "productId": "long",
  "style": "string",
  "styleColor": "string",
  "part": "string",
  "placement": "string",
  "fabricItemList": [
    {
      "externalInvoiceId": "string",
      "externalFabricItemId": "string",
      "fabColor": "string",
      "rollList": [
        {
          "factoryRollNo": "string",
          "length": "double",
          "cuttableWidth": "double",
          "shade": "string",
          "csv": "string",
          "lengthShrinkagePercent": "double",
          "widthShrinkagePercent": "double",
          "lengthPatternValue": "double",
          "widthPatternValue": "double",
          "patternNo": "string",
          "skewnessValue": "double",
          "skewnessGroup": "string",
          "qcStatus": "Pass|Fail"
        }
      ]
    }
  ]
}
```

**FlowInfo Table**

| Field      | Type   | Constraints | Description                                                              |
|------------|--------|-------------|--------------------------------------------------------------------------|
| productId  | Long   | Required    | Product Id which was sent in FlowInfo while creating order               |
| style      | String | Required    | Style which was sent in FlowInfo while creating order                    |
| styleColor | String | Required    | Style/FG Color which was sent in FlowInfo while creating order           |
| part       | Int    | Required    | PartName which was sent in Fabric BOM details while creating order       |
| placement  | Int    | Required    | Part Placement which was sent in Fabric BOM details while creating order |

**Fabric Item Table**

| Field                | Type   | Constraints | Description                                                            |
|----------------------|--------|-------------|------------------------------------------------------------------------|
| externalInvoiceId    | String | Required    | External Invoice ID which was sent during GRN at invoice level         |
| externalFabricItemId | String | Required    | External Fabric Item ID which was sent during GRN at Fabric Item levle |
| fabColor             | String | Required    | Fabric Color                                                           |
| size                 | String | Required    | Size  Name                                                             |
| qty                  | Int    | Required    | Order qty in this size                                                 |

**Roll Table**

| Field                  | Type   | Constraints | Description                                                                         |
|------------------------|--------|-------------|-------------------------------------------------------------------------------------|
| factoryRollNo          | String | Required    | Factory Roll Number                                                                 |
| length                 | Double | Required    | Inspected Length                                                                    |
| cuttableWidth          | Double | Required    | Cuttable Width                                                                      |
| shade                  | String | Required    | Roll Shade                                                                          |
| csv                    | String | Required    | Roll CSV values. Accepted values - (`Yes`, `No`, `Grade 3`, `Grade 3-4`, `Grade 4`) |
| lengthShrinkagePercent | Double | Required    | Length wise shrinkage value                                                         |
| widthShrinkagePercent  | Double | Required    | Width wise shrinkage value                                                          |
| lengthPatternValue     | Double | Required    | Length wise pattern value                                                           |
| widthPatternValue      | Double | Required    | Width wise pattern value                                                            |
| patternNo              | String | Required    | Pattern No                                                                          |
| skewnessValue          | Double | Required    | Skewness value                                                                      |
| skewnessGroup          | String | Required    | Skewness Group                                                                      |
| qcStatus               | String | Required    | QC Status of Roll. Accepted values - (`Pass`, `Fail`)                               |
