# Report

## Fetch Report

This endpoint is used to fetch/download specific report. It supports search and filter but **does not** supports pagination, sort.


### HTTP Request

`GET ~/v1/api/reports/download`

### Request Parameters

Parameter | Default | Description
--------- | ------     |--------
download |  false  | if true, excel will be returned. else, JSON value will be returned.
| action*   | values - [`aggregateReconciliation`, `wastage`,`endBits`, `cutAnalysis`, `markerEfficiency`, `rollVariation`]

### Actions

         Action           |    Description
-----------------------   | -----------
`aggregateReconciliation` | When this action is called aggregate report will be returned in Excel
`wastage`                 | When this action is called wastage report is downloaded in excel
`endBits`                 | When this action is called endbits report is downloaded in excel
`cutAnalysis`             | When this action is called CutAnalysis report is downloaded in excel
`markerEfficiency`        | When this action is called marker Efficiency report is downloaded in excel
`rollVariation`           | When this action is called roll Variation report is downloaded in excel


