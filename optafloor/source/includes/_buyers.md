# Buyers

## Get All Buyers

```shell
curl "~/v1/api/buyers" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the buyers. Refer `Pagination and Sort` and `Schema` Section for exact
> response structure

This endpoint retrieves all buyers. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/v1/api/buyers`

## Get a Specific Buyer

```shell
curl "~/v1/api/buyers/1" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "GANT",
  "code": "GNT",
  "desc": "Test Description"
}
```

This endpoint retrieves a specific buyer.

### HTTP Request

`GET ~/v1/api/buyers/{customerId}`

### URL Parameters

| Parameter  | Description                     |
|------------|---------------------------------|
| customerId | The Id of the buyer to retrieve |

## Create Buyer

```shell
curl "~/v1/api/buyers" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a buyer.

### HTTP Request

`POST ~/v1/api/buyers`

### JSON Payload

<pre class="center-column">
{
    "id" : 1000,
    "name": "GANT",
    "code": "GNT",
    "desc": "Test Description"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1000,
  "name": "GANT",
  "code": "GNT",
  "desc": "Test Description"
}
```

## Create Buyer (Batch)

```shell
curl "~/v1/api/buyers/batch" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a buyers.

### HTTP Request

`POST ~/api/customers/batch`

### JSON Payload

<pre class="center-column">
[
  {
      "id": 1000,
      "name": "GANT",
      "code": "GNT",
      "desc": "Test Description"
  },
  {
      "id": 1001,
      "name": "Dressmann",
      "code": "DM",
      "desc": "Test Description2"
  }
]
</pre>

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1000,
    "name": "GANT",
    "code": "GNT",
    "desc": "Test Description"
  },
  {
    "id": 1001,
    "name": "Dressmann",
    "code": "DM",
    "desc": "Test Description2"
  }
]
```


## Update a Specific Buyer

```shell
curl "~/v1/api/buyers/1" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing buyer.

### HTTP Request

`PUT ~/v1/api/buyers/{customerId}`

| Parameter  | Description                   |
|------------|-------------------------------|
| customerId | The Id of the buyer to update |

### JSON Payload

<pre class="center-column">
{
      "id": 1,
      "name": "GANT-Updated",
      "code": "GNT",
      "desc": "Test Description"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "GANT-Updated",
  "code": "GNT",
  "desc": "Test Description"
}
```

## Delete a Specific Buyer

```shell
curl "~/v1/api/buyers/1"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific buyer.

### HTTP Request

`DELETE ~/v1/api/buyers/{customerId}`

### URL Parameters

| Parameter  | Description                   |
|------------|-------------------------------|
| customerId | The Id of the buyer to delete |

## Schema - Buyer

```json
{
  "id": "long",
  "name": "string",
  "code": "string",
  "desc": "string"
}
```

Schema of Buyer entity

| Field | Type   | Constraints | Description           |
|-------|--------|-------------|-----------------------|
| id    | Number | Primary Key | Internal ID           |
| name  | String | Required    | Name of Buyer         |
| code  | String |             | Short code for Buyer  |
| desc  | Text   |             | description for Buyer |
