# Seasons

## Get All Seasons

```shell
curl "~/v1/api/seasons" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns list of all the seasons. Refer `Pagination and Sort` and `Schema` Section for exact
> response structure

This endpoint retrieves all seasons. It supports pagination, sort, search and filter

### HTTP Request

`GET ~/api/seasons`

## Get a Specific Season

```shell
curl "~/v1/api/seasons/1" \
  -H "Authorization: Bearer <access_token>"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "AW 24",
  "desc": "Test Description"
}
```

This endpoint retrieves a specific season.

### HTTP Request

`GET ~/v1/api/seasons/{seasonId}`

### URL Parameters

| Parameter | Description                      |
|-----------|----------------------------------|
| seasonId  | The Id of the season to retrieve |

## Create Season

```shell
curl "~/v1/api/seasons" \
  -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint creates a season.

### HTTP Request

`POST ~/v1/api/seasons`

### JSON Payload

<pre class="center-column">
{
    "name": "AW 24",
    "desc": "Test Description"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "AW 24",
  "desc": "Test Description"
}
```

## Update a Specific Season

```shell
curl "~/v1/api/seasons/1" \
  -X PUT \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer <access_token>" \
  -d '<JSON Payload>'
```

This endpoint updates an existing season.

### HTTP Request

`PUT ~/v1/api/seasons/{seasonId}`

| Parameter | Description                    |
|-----------|--------------------------------|
| seasonId  | The Id of the season to update |

### JSON Payload

<pre class="center-column">
{
      "id": 1,
      "name": "AW 24-Updated",
      "desc": "Test Description"
}
</pre>

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "AW 24-Updated",
  "desc": "Test Description"
}
```

## Delete a Specific Season

```shell
curl "~/v1/api/seasons/1"
  -X DELETE
  -H "Authorization: Bearer <access_token>"
```

> The above command returns empty content with response status `204`

This endpoint deletes a specific season.

### HTTP Request

`DELETE ~/v1/api/seasons/{seasonId}`

### URL Parameters

| Parameter | Description                    |
|-----------|--------------------------------|
| seasonId  | The Id of the season to delete |

## Schema - Season

```json
{
  "id": "long",
  "name": "string",
  "desc": "string"
}
```

Schema of season entity

| Field | Type   | Constraints | Description            |
|-------|--------|-------------|------------------------|
| id    | Number | Primary Key | Internal ID            |
| name  | String | Required    | Name of Season         |
| desc  | Text   |             | description for Season |
