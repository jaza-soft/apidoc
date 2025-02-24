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
[
  {
    "operatorName": "Riya Sharma",
    "employeeId": "JZ001",
    "lines": ["Line 1", "Line 2", "Line 3"],
    "type": "Primary",
    "peakCapacity": 24,
    "peakPerformance": 24.01,
    "avgCapacity": 24,
    "avgPerformance": 24.01,
    "lastUpdatedAt": "2025-02-17T12:34:56Z",
    "section": "Section 1",
    "operationName": "D04 - Fil Non Coupé / Uncut Thread",
    "operationCode": "OP001",
    "machinist": true
  },
  {
    "operatorName": "ShahRukh Khan",
    "employeeId": "JZ002",
    "lines": ["Line 1", "Line 2", "Line 3"],
    "type": "Secondary",
    "peakCapacity": 23,
    "peakPerformance": 23.01,
    "avgCapacity": 21,
    "avgPerformance": 21.01,
    "lastUpdatedAt": "2025-02-15T12:34:56Z",
    "section": "Section 1",
    "operationName": "D04 - Fil Non Coupé / Uncut Thread",
    "operationCode": "OP001",
    "machinist": true
  }
]
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
      "machinist": true
    },
    {
      "name": "Operation 2",
      "code": "OP002",
      "type":"QC",
      "section": "Back",
      "machinist": true
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
[
  {
    "department": "Sewing",
    "section": "Front",
    "name": "Operation 1",
    "code": "OP001",
    "machinist": true,
    "type": "No Tracking",
    "sam": 0.5,
    "machineType": "Machine Type"
  },
  {
    "department": "Sewing",
    "section": "Front",
    "name": "Operation 2",
    "code": "OP002",
    "machinist": true,
    "type":"Tracking",
    "sam": 0.3,
    "machineType": "Machine Type"
  }
]
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

