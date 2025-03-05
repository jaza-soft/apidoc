# Line Balancing APIs

## Fetch Skill Matrix

### HTTP Request

```shell
curl "/v1/api/external/skill-matrix" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>"
```

This endpoint retrieves an array of **Skill matrix** data. It supports pagination, sorting, searching, and filtering.

### Response Example

```json
{
  "content": [
    {
      "operatorName": "Shilpa",
      "employeeId": "22941",
      "lines": [
        "Line 1"
      ],
      "type": "",
      "peakCapacity": 54,
      "peakPerformance": 36.0,
      "avgCapacity": 54,
      "avgPerformance": 36.0,
      "lastUpdatedAt": "2023-01-19T18:30:00Z",
      "section": "Collar",
      "operationName": "Collar Panel Attach",
      "operationCode": null,
      "machinist": true
    },
    {
      "operatorName": "Mahesh M",
      "employeeId": "22291",
      "lines": [
        "Line 1"
      ],
      "type": "",
      "peakCapacity": 21,
      "peakPerformance": 25.2,
      "avgCapacity": 21,
      "avgPerformance": 25.2,
      "lastUpdatedAt": "2023-02-02T18:30:00Z",
      "section": "Front",
      "operationName": "Concealed Placket Finishing",
      "operationCode": "FR91",
      "machinist": true
    },
    {
      "operatorName": "Sumithra",
      "employeeId": "23980",
      "lines": [
        "Line 4"
      ],
      "type": "",
      "peakCapacity": 30,
      "peakPerformance": 40.0,
      "avgCapacity": 30,
      "avgPerformance": 40.0,
      "lastUpdatedAt": "2023-09-12T18:30:00Z",
      "section": "Cuff",
      "operationName": "Cuff Button Hole (8 Hole in Shirt)",
      "operationCode": "CU24",
      "machinist": true
    },
    {
      "operatorName": "SPUORTHI",
      "employeeId": "25618",
      "lines": [],
      "type": "Primary",
      "peakCapacity": 33,
      "peakPerformance": 82.5,
      "avgCapacity": 18,
      "avgPerformance": 45.0,
      "lastUpdatedAt": "2023-08-02T18:30:00Z",
      "section": "Finishing",
      "operationName": "Trim & Exam",
      "operationCode": "FN01",
      "machinist": false
    },
    {
      "operatorName": "Mangala",
      "employeeId": "25575",
      "lines": [],
      "type": "Secondary",
      "peakCapacity": 31,
      "peakPerformance": 31.0,
      "avgCapacity": 24,
      "avgPerformance": 24.0,
      "lastUpdatedAt": "2023-11-30T18:30:00Z",
      "section": "Assembly",
      "operationName": "Top Stitch Front Placket",
      "operationCode": "AS63",
      "machinist": true
    }
  ],
  "pageable": {
    "sort": {
      "sorted": false,
      "empty": true,
      "unsorted": true
    },
    "pageNumber": 0,
    "pageSize": 5,
    "offset": 0,
    "paged": true,
    "unpaged": false
  },
  "last": false,
  "totalElements": 15381,
  "totalPages": 3077,
  "size": 5,
  "number": 0,
  "sort": {
    "sorted": false,
    "empty": true,
    "unsorted": true
  },
  "first": true,
  "numberOfElements": 5,
  "empty": false
}
```

### URL Parameters

| Parameter | Required | Description                                                                                                                 |
|-----------|----------|-----------------------------------------------------------------------------------------------------------------------------|
| `search`  | No       | Additional filter for **Master Operation**.<br/>Examples:<br/>For Operation Filter: `search=mOperation.name=='Operation 1'` |

---

## Fetch Operation Bulletin

### HTTP Request

```shell
curl "/v1/api/external/ob?poRef=15435&style=300342&color=WHITE" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>"
```

This endpoint retrieves the **Operation Bulletin** along with its operations. It supports pagination, sorting, searching, and filtering.

### Response Example

```json
{
  "poRef": "15435",
  "style": "300342",
  "color": "WHITE",
  "lastUpdatedAt": "2025-02-17T12:34:56Z",
  "operationList": [
    {
      "name": "Operation 1",
      "code": "OP001",
      "type": "Tracking",
      "section": "Front",
      "machinist": true,
      "dependencies": []
    },
    {
      "name": "Operation 2",
      "code": "OP002",
      "type": "Tracking",
      "section": "Sleeve",
      "machinist": true,
      "dependencies": ["Operation 1"]
    },
    {
      "name": "Operation 3",
      "code": "OP003",
      "type":"QC",
      "section": "Back",
      "machinist": true,
      "dependencies": ["Operation 2"]
    }
  ]
}
```

### URL Parameters

| Parameter | Required | Description                                                  |
|-----------|----------|--------------------------------------------------------------|
| `poRef`   | Yes      | **PO Reference No./ OC No / Con. No** of the Order.          |
| `style`   | Yes      | **Style** for which the Operation Bulletin is being fetched. |
| `color`   | Yes      | **Color** for which the Operation Bulletin is being fetched. |

---

## Fetch Master Operations

### HTTP Request

```shell
curl "/v1/api/external/operations" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>"
```

This endpoint retrieves an array of **Master operations** data. It supports pagination, sorting, searching, and filtering.

### Response Example

```json
{
  "content": [
    {
      "department": "Sewing",
      "section": "Front",
      "name": "Exam Front",
      "code": "FR25",
      "machinist": false,
      "type": "QC",
      "sam": 0.24,
      "machineType": "INSPECTION TABLE"
    },
    {
      "department": "Sewing",
      "section": "Front",
      "name": "Left Front BIB Attach",
      "code": "FR93",
      "machinist": true,
      "type": "Tracking",
      "sam": 1.97,
      "machineType": "SNLS"
    },
    {
      "department": "Sewing",
      "section": "Front",
      "name": "Flap Button Attach",
      "code": "FR118",
      "machinist": true,
      "type": "Tracking",
      "sam": 0.28,
      "machineType": "BUTTON SEW "
    },
    {
      "department": "Sewing",
      "section": "Front",
      "name": "Flap Button Hole",
      "code": "FR119",
      "machinist": true,
      "type": "Tracking",
      "sam": 0.28,
      "machineType": "BUTTON HOLE"
    },
    {
      "department": "Sewing",
      "section": "Front",
      "name": "Front Panel Top Stitch",
      "code": "FR120",
      "machinist": true,
      "type": "Tracking",
      "sam": 1.8,
      "machineType": "SNLS"
    }
  ],
  "pageable": {
    "sort": {
      "sorted": false,
      "empty": true,
      "unsorted": true
    },
    "pageNumber": 0,
    "pageSize": 5,
    "offset": 0,
    "paged": true,
    "unpaged": false
  },
  "last": false,
  "totalElements": 617,
  "totalPages": 124,
  "size": 5,
  "number": 0,
  "sort": {
    "sorted": false,
    "empty": true,
    "unsorted": true
  },
  "first": true,
  "numberOfElements": 5,
  "empty": false
}
```

### URL Parameters

| Parameter    | Required | Description                                                                      |
|--------------|----------|----------------------------------------------------------------------------------|
| `search`     | No       | Additional filter for User or Master Operation.                                  |
| `department` | No       | Department name for which master operations should be fetched (Default: Sewing). |

---

## Fetch WIP

### HTTP Request

```shell
curl "/v1/api/external/wip?poRef=15435&style=300342&color=WHITE&line=Line%201&section=Front" \
  -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>"
```

This endpoint retrieves the **WIP (Work in Progress)** in a given line and section of operations.

**Rate Limiting:** This API is limited to **3 calls per day**.

### Response Example

```json
[
  {
    "line": "Line 1",
    "section": "Front",
    "operationName": "Operation 1",
    "operationCode": "OP001",
    "cumInputQty": 300,
    "cumOutputQty": 200,
    "wipQty": 100
  },
  {
    "line": "Line 1",
    "section": "Front",
    "operationName": "Operation 2",
    "operationCode": "OP002",
    "cumInputQty": 200,
    "cumOutputQty": 0,
    "wipQty": 200
  }
]
```

### URL Parameters

| Parameter | Required | Description                                                |
|-----------|----------|------------------------------------------------------------|
| `poRef`   | Yes      | **PO Reference No./ OC No / Con. No** of the Order.        |
| `style`   | Yes      | **Style** for which the WIP is being fetched.              |
| `color`   | Yes      | **Color** for which the WIP is being fetched.              |
| `line`    | Yes      | **Line** for which the WIP is being fetched.               |
| `section` | No       | **Section** for which the WIP is being fetched (Optional). |

