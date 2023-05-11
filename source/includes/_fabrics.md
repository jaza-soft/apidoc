# Fabrics

## Get All Fabrics

```shell
curl "~/api/fabrics" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the fabrics. Refer `Pagination and Sort` and `Schema` Section for exact response structure

This endpoint retrieves all fabrics. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/api/fabrics`

## Get a Specific Fabric

```shell
curl "~/api/fabrics/{costinId}" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{

    "id": 65,
    "modifiedAt": 1586263862921,
    "lastModifiedBy": "su_dev",
    "itemCode": "TEST FABBIPO 101",
    "articleName": "JETBLACK",
    "color": "BLACK",
    "width": 145,
    "construction": null,
    "content": null,
    "repeatLength": null,
    "repeatWidth": null,
    "desc": null,
    "fabricCategory": {
           "id": 3, 
           "modifiedAt": 1570210572910, 
           "lastModifiedBy": null, 
           "name": "Yarn Dyed", 
           "desc": null
     },
    "fabricType": {
           "id": 4, 
           "modifiedAt": 1570210513111, 
           "lastModifiedBy": null, 
           "name": "Solid", 
           "desc": null
     },
    "mill": {
           "id": 4, 
           "modifiedAt": 1570210266729, 
           "lastModifiedBy": null, 
           "name": "Arvind Mills", 
           "desc": null
     },
    "millId": 4,
    "fabricTypeId": null,
    "fabricCategoryId": null,
    "uid": "Fabric-TEST FABBIPO 101",
    "rollInfoList": "[]",
    "ledgerList": "[]"
}
```

This endpoint retrieves a specific fabric.

### HTTP Request

`GET ~/api/fabrics/{fabricId}`

### URL Parameters

| Parameter | Description                     |
| --------- | ------------------------------- |
| fabricId   | The Id of the fabric to retrieve |

## Create Fabric

```shell
curl "~/api/fabrics" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a fabric.

### HTTP Request

`POST ~/api/fabrics`

### JSON Payload

<pre class="center-column">
{
    "itemCode": "Test Item Code for API Docs",
    "articleName": "Test Article ",
    "color": "Color A",
    "width": "127",
    "repeatLength": 1,
    "fabricTypeId": 1,
    "repeatWidth": 1,
    "millId": 5,
    "desc": "Test Description",
    "fabricCategoryId": 3,
    "construction": "1*1",
    "content": "Test",
}
</pre>

> The above command returns JSON structured like this:

```json
{

    "id": 66,
    "modifiedAt": 1586263862921,
    "lastModifiedBy": "su_dev",
    "itemCode": "Test Item Code for API Docs",
    "articleName": "Test Article",
    "color": "Color A",
    "width": 127,
    "construction": "1*1",
    "content": "Test",
    "repeatLength": 1,
    "repeatWidth": 1,
    "desc": null,
    "fabricCategory": {
           "id": 3, 
           "modifiedAt": 1570210572910, 
           "lastModifiedBy": null, 
           "name": "Yarn Dyed", 
           "desc": null
     },
    "fabricType": {
           "id": 4, 
           "modifiedAt": 1570210513111, 
           "lastModifiedBy": null, 
           "name": "Solid", 
           "desc": null
     },
    "mill": {
           "id": 4, 
           "modifiedAt": 1570210266729, 
           "lastModifiedBy": null, 
           "name": "Arvind Mills", 
           "desc": null
     },
    "millId": 4,
    "fabricTypeId": null,
    "fabricCategoryId": null,
    "uid": "Fabric-TEST FABBIPO 101",
    "rollInfoList": "[]",
    "ledgerList": "[]"
}
```

## Update a Specific Fabric

```shell
curl "~/api/fabrics/{fabricId}" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing fabric.

### HTTP Request

`PUT ~/api/fabrics/{fabricId}`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id of the fabric to update |

### JSON Payload

<pre class="center-column">
{
    "id": 66,
    "modifiedAt": 1586263862921,
    "lastModifiedBy": "su_dev",
    "itemCode": "Test Item Code for API Docs",
    "articleName": "Test Article",
    "color": "Color A",
    "width": 127,
    "construction": "1*1",
    "content": "Test",
    "repeatLength": 1,
    "repeatWidth": 1,
}
</pre>

> The above command returns JSON structured like this:

```json
{

    "id": 66,
    "modifiedAt": 1586263862921,
    "lastModifiedBy": "su_dev",
    "itemCode": "Test Item Code for API Docs",
    "articleName": "Test Article",
    "color": "Color A",
    "width": 127,
    "construction": "1*1",
    "content": "Test",
    "repeatLength": 1,
    "repeatWidth": 1,
    "desc": null,
    "fabricCategory": {
           "id": 3, 
           "modifiedAt": 1570210572910, 
           "lastModifiedBy": null, 
           "name": "Yarn Dyed", 
           "desc": null
     },
    "fabricType": {
           "id": 4, 
           "modifiedAt": 1570210513111, 
           "lastModifiedBy": null, 
           "name": "Solid", 
           "desc": null
     },
    "mill": {
           "id": 4, 
           "modifiedAt": 1570210266729, 
           "lastModifiedBy": null, 
           "name": "Arvind Mills", 
           "desc": null
     },
    "millId": 4,
    "fabricTypeId": null,
    "fabricCategoryId": null,
    "uid": "Fabric-TEST FABBIPO 101",
    "rollInfoList": "[]",
    "ledgerList": "[]"
}
```

## Update a Specific Fabrics by CAD (Repeat Overide on CutPlan)

```shell
curl "~/api/fabrics?action=cad" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing fabric.

### HTTP Request

`PUT ~/api/fabrics/?action=cad`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id of the fabric to update |
| action     | default value is cad

### JSON Payload

<pre class="center-column">
[{
    "id": 62,
    "fabricTypeId": 2,
    "repeatLength": "1",
    "repeatWidth": null,
}]
</pre>

> The above command returns JSON structured like this:

```json
[{

    "id": 62,
    "modifiedAt": 1586263862921,
    "lastModifiedBy": "su_dev",
    "itemCode": "Test Item Code for API Docs",
    "articleName": "Test Article",
    "color": "Color A",
    "width": 127,
    "construction": "1*1",
    "content": "Test",
    "repeatLength": 1,
    "repeatWidth": null,
    "desc": null,
    "fabricCategory": {
           "id": 3, 
           "modifiedAt": 1570210572910, 
           "lastModifiedBy": null, 
           "name": "Yarn Dyed", 
           "desc": null
     },
    "fabricType": {
           "id": 4, 
           "modifiedAt": 1570210513111, 
           "lastModifiedBy": null, 
           "name": "Solid", 
           "desc": null
     },
    "mill": {
           "id": 4, 
           "modifiedAt": 1570210266729, 
           "lastModifiedBy": null, 
           "name": "Arvind Mills", 
           "desc": null
     },
    "millId": 4,
    "fabricTypeId": 2,
    "fabricCategoryId": null,
    "uid": "Fabric-TEST FABBIPO 101",
    "rollInfoList": "[]",
    "ledgerList": "[]"
}]
```

## Get FabricsRolls [Default and Download]

```shell
curl "~/api/fabrics/{fabricId}/rolls?action=download&ledgerId={ledgerId}" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint updates an existing estimation.

### HTTP Request

`PUT ~/api/estimations/{estimationId}?action=cad}`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id fabric to get rolls |
| ledgerId   | default value is -1 it will fetch the ledger id assigned to any ledger |
| action*    | values - [`default`, `download`]


### Actions

Action    | Description
-------   | -----------
`default`    | When default parameter is called then it will fetch all rolls detail
`download`  | When download parameter is sent then it will prepare all the roll detail data in excel and will return excel sheet


> The above command returns JSON structured like this:

```json
{
  "Will Return Roll details and Excel will be downloaded with rolls": ""
}
```

##Fabric [ Upload and Update Rolls]

```shell
curl "~/api/fabrics/66/rolls/upload?action=upload-and-save" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint updates an existing estimation.

### HTTP Request

`PUT ~/api/fabrics/66/rolls/upload?action=upload-and-save`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id fabric to get rolls |
| file   | Excel File Which will be Uploaded|
|action*  |  values - [`upload`, `upload-and-update`]


### Actions

Action    | Description
-------   | -----------
`upload`    | when upload is called will upload the excel while Update by excel
`upload-and-update`  | This will upload and save the excel while fabric inward

### JSON Payload

<pre class="center-column">
  Excel File
</pre>


> The above command returns JSON structured like this:

```json
[{
      "id": 2004,
      "createdAt": 1587457763302,
      "modifiedAt": 1587457763302,
      "createdBy": "su_dev",
      "lastModifiedBy": "su_dev",
      "rollNumber": "500019",
      "millLength": 106.3,
      "millWidth": 144,
      "length": 106.3,
      "width": 144,
      "shade": "A",
      "effectiveShade": "A",
      "color": null,
      "csv": "No",
      "warpShrinkage": null,
      "weftShrinkage": null,
      "qcStatus": false,
      "reserveType": null,
      "reserved": 0,
      "rollType": "NORMAL",
      "rakeNo": "Floor",
      "used": 0,
      "available": 106.3,
      "unused": 106.3,
      "shortageExcess": 0,
      "endBits": 0,
      "lost": 0,
      "reCutGarment": 0,
      "reCutPart": 0,
      "status": "NOT_USED",
      "remarks": "",
      "uid": "RollInfo-Test Item Code for API Docs-500019",
      "fabricId": null,
      "orderId": null,
      "ledgerInId": null,
      "ledgerOutId": null,
      "groupId": null,
      "remnantGroupId": null,
      "rejected": null,
      "found": null,
      "tempId": null,
      "recutting": 0,
      "chunkLength": null,
      "left": 0,
      "split": false,
      "qty": 0,
      "returned": false,
      "returnedLength": 0,
      "missed": false,
      "index": 0
}]
```

## Fabric [Upload and Save Rolls]

```shell
curl "~/api/fabrics/66/rolls/upload?action=upload-and-save" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing estimation.

### HTTP Request

`PUT ~/api/fabrics/66/rolls/upload?action=upload-and-save&invoiceNo=Test&invoiceQty=391`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id fabric to get rolls |
| invoiceNo   | Invoice Number|
| invoiceQty   | Invoice Qty|
| remarks   | Remarks |

### JSON Payload

<pre class="center-column">
   {
   Excel File
   }
</pre>

> The above command returns JSON structured like this:

```json
[{
      "id": 2004,
      "createdAt": 1587457763302,
      "modifiedAt": 1587457763302,
      "createdBy": "su_dev",
      "lastModifiedBy": "su_dev",
      "rollNumber": "500019",
      "millLength": 106.3,
      "millWidth": 144,
      "length": 106.3,
      "width": 144,
      "shade": "A",
      "effectiveShade": "A",
      "color": null,
      "csv": "No",
      "warpShrinkage": null,
      "weftShrinkage": null,
      "qcStatus": false,
      "reserveType": null,
      "reserved": 0,
      "rollType": "NORMAL",
      "rakeNo": "Floor",
      "used": 0,
      "available": 106.3,
      "unused": 106.3,
      "shortageExcess": 0,
      "endBits": 0,
      "lost": 0,
      "reCutGarment": 0,
      "reCutPart": 0,
      "status": "NOT_USED",
      "remarks": "",
      "uid": "RollInfo-Test Item Code for API Docs-500019",
      "fabricId": null,
      "orderId": null,
      "ledgerInId": null,
      "ledgerOutId": null,
      "groupId": null,
      "remnantGroupId": null,
      "rejected": null,
      "found": null,
      "tempId": null,
      "recutting": 0,
      "chunkLength": null,
      "left": 0,
      "split": false,
      "qty": 0,
      "returned": false,
      "returnedLength": 0,
      "missed": false,
      "index": 0
}]
```

## Fabric [Save Rolls]

```shell
curl "~/api/fabrics/66/rolls/upload?action=upload-and-save" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing estimation.

### HTTP Request

`PUT ~/api/fabrics/{fabricId}/rolls/upload?action=upload-and-save&invoiceNo=Test&invoiceQty=391`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id fabric to get rolls |
| invoiceNo   | Invoice Number|
| invoiceQty   | Invoice Qty|
| remarks   | Remarks |


### JSON Payload

<pre class="center-column">
[{
      "rollNumber": "500019",
      "millLength": 106.3,
      "millWidth": 144,
      "length": 106.3,
      "width": 144,
      "shade": "A",
      "effectiveShade": "A",
      "color": null,
      "csv": "No",
      "warpShrinkage": null,
      "weftShrinkage": null,
      "qcStatus": false,
      "reserveType": null,
      "reserved": 0,
      "rollType": "NORMAL",
      "rakeNo": "Floor",
      "used": 0,
      "available": 106.3,
      "unused": 106.3,
      "shortageExcess": 0,
      "endBits": 0,
      "lost": 0,
      "reCutGarment": 0,
      "reCutPart": 0,
      "status": "NOT_USED",
      "remarks": "",
      "uid": "RollInfo-Test Item Code for API Docs-500019",
      "fabricId": null,
      "orderId": null,
      "ledgerInId": null,
      "ledgerOutId": null,
      "groupId": null,
      "remnantGroupId": null,
      "rejected": null,
      "found": null,
      "tempId": null,
      "recutting": 0,
      "chunkLength": null,
      "left": 0,
      "split": false,
      "qty": 0,
      "returned": false,
      "returnedLength": 0,
      "missed": false,
      "index": 0
}]
</pre>

> The above command returns JSON structured like this:

```json
[{
      "id": 2004,
      "createdAt": 1587457763302,
      "modifiedAt": 1587457763302,
      "createdBy": "su_dev",
      "lastModifiedBy": "su_dev",
      "rollNumber": "500019",
      "millLength": 106.3,
      "millWidth": 144,
      "length": 106.3,
      "width": 144,
      "shade": "A",
      "effectiveShade": "A",
      "color": null,
      "csv": "No",
      "warpShrinkage": null,
      "weftShrinkage": null,
      "qcStatus": false,
      "reserveType": null,
      "reserved": 0,
      "rollType": "NORMAL",
      "rakeNo": "Floor",
      "used": 0,
      "available": 106.3,
      "unused": 106.3,
      "shortageExcess": 0,
      "endBits": 0,
      "lost": 0,
      "reCutGarment": 0,
      "reCutPart": 0,
      "status": "NOT_USED",
      "remarks": "",
      "uid": "RollInfo-Test Item Code for API Docs-500019",
      "fabricId": null,
      "orderId": null,
      "ledgerInId": null,
      "ledgerOutId": null,
      "groupId": null,
      "remnantGroupId": null,
      "rejected": null,
      "found": null,
      "tempId": null,
      "recutting": 0,
      "chunkLength": null,
      "left": 0,
      "split": false,
      "qty": 0,
      "returned": false,
      "returnedLength": 0,
      "missed": false,
      "index": 0
}]
```

## Fabric [Update Rolls]

```shell
curl "~/api/fabrics/66/rolls/upload?action=upload-and-save" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
```

This endpoint updates an existing estimation.

### HTTP Request

`PUT ~/api/fabrics/66/rolls/upload?action=default`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId  | The Id fabric to get rolls |
| ledgerId  | Ledger Id |
|action*    |  values - [`default`, `by-excel` , `new-roll-addition` , `remove-roll`]


### Actions

Action    | Description
-------   | -----------
`default`    | Will Update Basic Info of Rolls
`by-exce`  | this will update the roll info via Excel upload
`new-roll-addition`  | New Roll will be updated to the Ledger and ledger id will be assigned to that roll
`remove-roll`  | Roll will be removed from the Body ledger and will be removed to balance and ledger id will be removed

### JSON Payload

<pre class="center-column">
  [{
        "id": 2004,
        "rollNumber": "500019",
        "millLength": 106.3,
        "millWidth": 144,
        "length": 106.3,
        "width": 144,
        "shade": "A",
        "effectiveShade": "A",
        "color": null,
        "csv": "No",
        "warpShrinkage": null,
        "weftShrinkage": null,
        "qcStatus": false,
        "reserveType": null,
        "reserved": 0,
        "rollType": "NORMAL",
        "rakeNo": "Floor",
        "used": 0,
        "available": 106.3,
        "unused": 106.3,
        "shortageExcess": 0,
        "endBits": 0,
        "lost": 0,
        "reCutGarment": 0,
        "reCutPart": 0,
        "status": "NOT_USED",
        "remarks": "",
        "uid": "RollInfo-Test Item Code for API Docs-500019",
        "fabricId": null,
        "orderId": null,
        "ledgerInId": null,
        "ledgerOutId": null,
        "groupId": null,
        "remnantGroupId": null,
        "rejected": null,
        "found": null,
        "tempId": null,
        "recutting": 0,
        "chunkLength": null,
        "left": 0,
        "split": false,
        "qty": 0,
        "returned": false,
        "returnedLength": 0,
        "missed": false,
        "index": 0
  }]
</pre>


> The above command returns JSON structured like this:

```json
[{
      "id": 2004,
      "createdAt": 1587457763302,
      "modifiedAt": 1587457763302,
      "createdBy": "su_dev",
      "lastModifiedBy": "su_dev",
      "rollNumber": "500019",
      "millLength": 106.3,
      "millWidth": 144,
      "length": 106.3,
      "width": 144,
      "shade": "A",
      "effectiveShade": "A",
      "color": null,
      "csv": "No",
      "warpShrinkage": null,
      "weftShrinkage": null,
      "qcStatus": false,
      "reserveType": null,
      "reserved": 0,
      "rollType": "NORMAL",
      "rakeNo": "Floor",
      "used": 0,
      "available": 106.3,
      "unused": 106.3,
      "shortageExcess": 0,
      "endBits": 0,
      "lost": 0,
      "reCutGarment": 0,
      "reCutPart": 0,
      "status": "NOT_USED",
      "remarks": "",
      "uid": "RollInfo-Test Item Code for API Docs-500019",
      "fabricId": null,
      "orderId": null,
      "ledgerInId": null,
      "ledgerOutId": null,
      "groupId": null,
      "remnantGroupId": null,
      "rejected": null,
      "found": null,
      "tempId": null,
      "recutting": 0,
      "chunkLength": null,
      "left": 0,
      "split": false,
      "qty": 0,
      "returned": false,
      "returnedLength": 0,
      "missed": false,
      "index": 0
}]
```

## Fabric Issue

```shell
curl "~/api/fabrics/{fabricId}/ledger?action=association&orderId=61" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a fabric.

### HTTP Request

`POST ~/api/fabrics/{fabricId}/ledger?action=association&orderId=61`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId  | The Id fabric to get rolls |
|action*    | values - [`association`, `sampling` , `write-off` , `return-mill`]
| orderId   | Order Id |


### Actions

Action    | Description
-------   | -----------
`association`    | Will Associate the fabric from balance ledger to specific order
`sampling`  | Will add for sampling from balance to to sampling corresponding to any order
`write-off`  | will allow to write off the fabric from balance
`return-mill`  | Will allow to return to disassociate/return fabric from any order to balance

### JSON Payload

<pre class="center-column">
{
    "color": "Color A",
    "invoiceList": [
          0: "Test"
    ],
    "invoices": "Test",
    "lot": 1,
    "part": "Body",
    "qty": 200
}
</pre>

> The above command returns JSON structured like this:

```json
{
   "returns": null
}
```

## Fabric [Update Ledger]

```shell
curl "~/api/fabrics/{fabricId}/ledgers/{ledgerId}" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing estimation.

### HTTP Request

`PUT ~/api/fabrics/66/rolls/upload?action=upload-and-save&invoiceNo=Test&invoiceQty=391`

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id fabric for Which the ledger is getting Updated |
| ledgerId   | Ledger Id each ledger in the fabric has its id Either Body or Sampling|


### JSON Payload

<pre class="center-column">
{
     "createdAt": 1587797730430,
     "createdBy": "su_dev",
     "date": "Apr 25, 2020",
     "fabricId": null,
     "fabricQty": "200.0",
     "grouped": null,
     "id": 334,
     "invoiceNo": null,
     "invoices": "Test",
     "isUsed": false,
     "lastModifiedBy": "su_dev",
     "lot": 1,
     "modifiedAt": 1587797730430,
     "orderId": 61,
     "partId": 197,
     "particulars": "Body: PO - Test Po For API Doc Updated, Color - Color A, Lot1",
     "qcStatus": "",
     "qty": 205,
     "rollCount": 0,
     "serialNo": 1,
     "type": "OUT",
     "uid": "Ledger-Body: PO - Test Po For API Doc Updated, Color - Color A, Lot1",
}
</pre>

> The above command returns JSON structured like this:

```json
{
     "createdAt": 1587797730430,
     "createdBy": "su_dev",
     "date": "Apr 25, 2020",
     "fabricId": null,
     "fabricQty": "205.0",
     "grouped": null,
     "id": 334,
     "invoiceNo": null,
     "invoices": "Test",
     "isUsed": false,
     "lastModifiedBy": "su_dev",
     "lot": 1,
     "modifiedAt": 1587797730430,
     "orderId": 61,
     "partId": 197,
     "particulars": "Body: PO - Test Po For API Doc Updated, Color - Color A, Lot1",
     "qcStatus": "",
     "qty": 205,
     "rollCount": 0,
     "serialNo": 1,
     "type": "OUT",
     "uid": "Ledger-Body: PO - Test Po For API Doc Updated, Color - Color A, Lot1",
}
```

## Delete  Ledger

```shell
curl "~/api/fabrics/{fabricId}/ledgers/{ledgerId}"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific fabric.

### HTTP Request

`DELETE ~/api/fabrics/{fabricId}/ledgers/{ledgerId}`

### URL Parameters

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id fabric for Which the ledger is getting Updated |
| ledgerId   | Ledger Id each ledger in the fabric has its id Either Body or Sampling|

## Delete  Fabric

```shell
curl "~/api/fabrics/{fabricId}"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific fabric.

### HTTP Request

`DELETE ~/api/fabrics/{fabricId}`

### URL Parameters

| Parameter | Description                   |
| --------- | ----------------------------- |
| fabricId   | The Id of the fabric to delete |

## Schema

```json
{
  "modifiedAt": "timestamp",
  "lastModifiedBy": "string",
  "id": "long",
  "itemCode": "string",
  "articleName": "string",
  "color": "string",
  "width": "double",
  "construction": "string",
  "content": "string",
  "repeatLength": "double",
  "repeatWidth": "double",
  "desc": "string",
  "millId": "long",
  "fabricTypeId": "long",
  "fabricCategoryId": "long",
  "rollInfoList": "RollInfo[]",
  "ledgerList": "Ledger[]"
}
```

This is schema of Fabric entity
