{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": {
          "type": "datasource",
          "uid": "grafana"
        },
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "target": {
          "limit": 100,
          "matchAny": false,
          "tags": [],
          "type": "dashboard"
        },
        "type": "dashboard"
      }
    ]
  },
  "editable": true,
  "fiscalYearStartMonth": 0,
  "graphTooltip": 0,
  "id": 5,
  "links": [],
  "liveNow": false,
  "panels": [
    {
      "collapsed": false,
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 23,
      "panels": [],
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "refId": "A"
        }
      ],
      "title": "App statistics",
      "type": "row"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              }
            ]
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 1
      },
      "id": 4,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {
            "EKS_Namespace": "$namespace",
            "EKS_PodName": "$pod_name",
            "MX_App": "$environment_id"
          },
          "expression": "",
          "hide": false,
          "id": "",
          "label": "",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "mx_runtime_stats_handler_requests_total",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "B",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "groupBy": {
              "expressions": [
                {
                  "property": {
                    "name": "name",
                    "type": "string"
                  },
                  "type": "groupBy"
                }
              ],
              "type": "and"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_handler_requests_total",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_handler_requests_total) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name' GROUP BY name",
          "statistic": "Maximum"
        }
      ],
      "title": "Requests count",
      "transformations": [],
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "yellow"
              }
            ]
          },
          "unit": "short"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "named sessions"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "yellow",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "anonymous sessions"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "yellow",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 1
      },
      "id": 34,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {},
          "expression": "",
          "hide": false,
          "id": "",
          "label": "anonymous sessions",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "A",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_sessions_anonymous_sessions",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_sessions_anonymous_sessions) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
          "statistic": "Average"
        }
      ],
      "title": "Anonymous sessions",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              }
            ]
          },
          "unit": "short"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 9
      },
      "id": 6,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {},
          "expression": "",
          "hide": false,
          "id": "",
          "label": "named sessions",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "A",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_sessions_named_user_sessions",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_sessions_named_user_sessions) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
          "statistic": "Average"
        }
      ],
      "title": "Named sessions",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "yellow"
              }
            ]
          },
          "unit": "short"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "named sessions"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "orange",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "anonymous sessions"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "yellow",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "named users"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "orange",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 9
      },
      "id": 35,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {},
          "expression": "",
          "hide": false,
          "id": "",
          "label": "named users",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "A",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_sessions_named_users",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_sessions_named_users) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
          "statistic": "Average"
        }
      ],
      "title": "Named users",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 17
      },
      "id": 37,
      "panels": [],
      "title": "App database statistics",
      "type": "row"
    },
    {
         "datasource":{
            "type":"cloudwatch",
            "uid":"cloudwatch"
         },
         "description":"",
         "fieldConfig":{
            "defaults":{
               "color":{
                  "mode":"palette-classic"
               },
               "custom":{
                  "axisCenteredZero":false,
                  "axisColorMode":"text",
                  "axisLabel":"",
                  "axisPlacement":"auto",
                  "barAlignment":0,
                  "drawStyle":"line",
                  "fillOpacity":10,
                  "gradientMode":"none",
                  "hideFrom":{
                     "legend":false,
                     "tooltip":false,
                     "viz":false
                  },
                  "insertNulls":false,
                  "lineInterpolation":"linear",
                  "lineWidth":1,
                  "pointSize":5,
                  "scaleDistribution":{
                     "type":"linear"
                  },
                  "showPoints":"never",
                  "spanNulls":true,
                  "stacking":{
                     "group":"A",
                     "mode":"none"
                  },
                  "thresholdsStyle":{
                     "mode":"off"
                  }
               },
               "mappings":[

               ],
               "thresholds":{
                  "mode":"absolute",
                  "steps":[
                     {
                        "color":"green",
                        "value":null
                     }
                  ]
               },
               "unit":"none"
            },
            "overrides":[
               {
                  "matcher":{
                     "id":"byName",
                     "options":"Selects"
                  },
                  "properties":[
                     {
                        "id":"color",
                        "value":{
                           "fixedColor":"purple",
                           "mode":"fixed"
                        }
                     }
                  ]
               },
               {
                  "matcher":{
                     "id":"byName",
                     "options":"Inserts"
                  },
                  "properties":[
                     {
                        "id":"color",
                        "value":{
                           "fixedColor":"semi-dark-green",
                           "mode":"fixed"
                        }
                     }
                  ]
               }
            ]
         },
         "gridPos":{
            "h":8,
            "w":12,
            "x":0,
            "y":18
         },
         "id":41,
         "options":{
            "legend":{
               "calcs":[

               ],
               "displayMode":"list",
               "placement":"bottom",
               "showLegend":true
            },
            "tooltip":{
               "mode":"multi",
               "sort":"none"
            }
         },
         "pluginVersion":"8.1.6",
         "targets":[
            {
               "datasource":{
                  "type":"cloudwatch",
                  "uid":"cloudwatch"
               },
               "dimensions":{

               },
               "expression":"",
               "id":"",
               "label":"Transactions",
               "logGroups":[

               ],
               "matchExact":true,
               "metricEditorMode":0,
               "metricName":"",
               "metricQueryType":1,
               "namespace":"ContainerInsights/Prometheus",
               "period":"",
               "queryMode":"Metrics",
               "refId":"A",
               "region": "${awsRegion}",
               "sql":{
                  "from":{
                     "property":{
                        "name":"ContainerInsights/Prometheus",
                        "type":"string"
                     },
                     "type":"property"
                  },
                  "select":{
                     "name":"MAX",
                     "parameters":[
                        {
                           "name":"mx_runtime_stats_connectionbus_transactions_total",
                           "type":"functionParameter"
                        }
                     ],
                     "type":"function"
                  },
                  "where":{
                     "expressions":[
                        {
                           "operator":{
                              "name":"=",
                              "value":"$namespace"
                           },
                           "property":{
                              "name":"EKS_Namespace",
                              "type":"string"
                           },
                           "type":"operator"
                        },
                        {
                           "operator":{
                              "name":"=",
                              "value":"$environment_id"
                           },
                           "property":{
                              "name":"MX_App",
                              "type":"string"
                           },
                           "type":"operator"
                        },
                        {
                           "operator":{
                              "name":"=",
                              "value":"$pod_name"
                           },
                           "property":{
                              "name":"EKS_PodName",
                              "type":"string"
                           },
                           "type":"operator"
                        }
                     ],
                     "type":"and"
                  }
               },
               "sqlExpression":"SELECT MAX(mx_runtime_stats_connectionbus_transactions_total) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
               "statistic":"Average"
            }
         ],
         "title":"Number of database transactions being executed",
         "type":"timeseries"
      },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Selects"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "purple",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 18
      },
      "id": 36,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {},
          "expression": "",
          "id": "",
          "label": "Selects",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "A",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_connectionbus_selects_total",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_connectionbus_selects_total) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
          "statistic": "Average"
        }
      ],
      "title": "Number of database select queries being executed",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Selects"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "purple",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Inserts"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "blue",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 26
      },
      "id": 38,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {},
          "expression": "",
          "id": "",
          "label": "Inserts",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "A",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_connectionbus_inserts_total",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_connectionbus_inserts_total) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
          "statistic": "Average"
        }
      ],
      "title": "Number of database insert queries being executed",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Selects"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "purple",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Inserts"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "blue",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Updates"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "#6d6c77",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 12,
        "y": 26
      },
      "id": 39,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {},
          "expression": "",
          "id": "",
          "label": "Updates",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "A",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_connectionbus_updates_total",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_connectionbus_updates_total) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
          "statistic": "Average"
        }
      ],
      "title": "Number of database update queries being executed",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "description": "",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 10,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": true,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "Selects"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "purple",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Deletes"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "dark-red",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 12,
        "x": 0,
        "y": 34
      },
      "id": 40,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "none"
        }
      },
      "pluginVersion": "8.1.6",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "dimensions": {},
          "expression": "",
          "id": "",
          "label": "Deletes",
          "logGroups": [],
          "matchExact": true,
          "metricEditorMode": 0,
          "metricName": "",
          "metricQueryType": 1,
          "namespace": "ContainerInsights/Prometheus",
          "period": "",
          "queryMode": "Metrics",
          "refId": "A",
          "region": "${awsRegion}",
          "sql": {
            "from": {
              "property": {
                "name": "ContainerInsights/Prometheus",
                "type": "string"
              },
              "type": "property"
            },
            "select": {
              "name": "MAX",
              "parameters": [
                {
                  "name": "mx_runtime_stats_connectionbus_deletes_total",
                  "type": "functionParameter"
                }
              ],
              "type": "function"
            },
            "where": {
              "expressions": [
                {
                  "operator": {
                    "name": "=",
                    "value": "$namespace"
                  },
                  "property": {
                    "name": "EKS_Namespace",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$environment_id"
                  },
                  "property": {
                    "name": "MX_App",
                    "type": "string"
                  },
                  "type": "operator"
                },
                {
                  "operator": {
                    "name": "=",
                    "value": "$pod_name"
                  },
                  "property": {
                    "name": "EKS_PodName",
                    "type": "string"
                  },
                  "type": "operator"
                }
              ],
              "type": "and"
            }
          },
          "sqlExpression": "SELECT MAX(mx_runtime_stats_connectionbus_deletes_total) FROM \"ContainerInsights/Prometheus\" WHERE EKS_Namespace = '$namespace' AND MX_App = '$environment_id' AND EKS_PodName = '$pod_name'",
          "statistic": "Average"
        }
      ],
      "title": "Number of database delete queries being executed",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 42
      },
      "id": 31,
      "panels": [],
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "refId": "A"
        }
      ],
      "title": "Logs",
      "type": "row"
    },
    {
      "datasource": {
        "type": "cloudwatch",
        "uid": "cloudwatch"
      },
      "gridPos": {
        "h": 13,
        "w": 24,
        "x": 0,
        "y": 54
      },
      "id": 33,
      "options": {
        "dedupStrategy": "none",
        "enableLogDetails": true,
        "prettifyLogMessage": false,
        "showCommonLabels": false,
        "showLabels": false,
        "showTime": false,
        "sortOrder": "Ascending",
        "wrapLogMessage": false
      },
      "pluginVersion": "7.5.0",
      "targets": [
        {
          "datasource": {
            "type": "cloudwatch",
            "uid": "cloudwatch"
          },
          "expression": "fields @timestamp, @message |\n filter kubernetes.namespace_name = '$namespace' and kubernetes.pod_name = '$pod_name' |\n sort @timestamp desc",
          "logGroups": [
            {
              "accountId": "${awsAccountId}",
              "arn": "${awsLogGroupARN}:*",
              "name": "${awsLogGroupName}"
            }
          ],
          "hide": false,
          "instant": false,
          "queryMode": "Logs",
          "region": "default",
          "range": true,
          "refId": "Mendix Runtime logs"
        }
      ],
      "title": "Runtime logs",
      "type": "logs"
    }
  ],
  "refresh": "",
  "schemaVersion": 38,
  "style": "dark",
  "tags": [
    "prometheus"
  ],
  "templating": {
    "list": [
      {
        "current": {
          "selected": false,
          "text": "mendix",
          "value": "mendix"
        },
        "datasource": {
          "type": "cloudwatch",
          "uid": "cloudwatch"
        },
        "definition": "",
        "hide": 0,
        "includeAll": false,
        "label": "Namespace",
        "multi": false,
        "name": "namespace",
        "options": [],
        "query": {
          "dimensionKey": "EKS_Namespace",
          "metricName": "mx_runtime_stats_requests_p_total",
          "namespace": "ContainerInsights/Prometheus",
          "queryType": "dimensionValues",
          "refId": "CloudWatchVariableQueryEditor-VariableQuery",
          "region": "${awsRegion}"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 0,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      },
      {
        "current": {
          "selected": false,
          "text": "ggg",
          "value": "ggg"
        },
        "datasource": {
          "type": "cloudwatch",
          "uid": "cloudwatch"
        },
        "definition": "",
        "hide": 0,
        "includeAll": false,
        "label": "Environment internal name",
        "multi": false,
        "name": "environment_id",
        "options": [],
        "query": {
          "dimensionFilters": {
            "EKS_Namespace": "$namespace"
          },
          "dimensionKey": "MX_App",
          "metricName": "mx_runtime_stats_requests_total",
          "namespace": "ContainerInsights/Prometheus",
          "queryType": "dimensionValues",
          "refId": "CloudWatchVariableQueryEditor-VariableQuery",
          "region": "${awsRegion}"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 0,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      },
      {
        "current": {
          "selected": false,
          "text": "ggg-master-76dbddfb64-x62k7",
          "value": "ggg-master-76dbddfb64-x62k7"
        },
        "datasource": {
          "type": "cloudwatch",
          "uid": "cloudwatch"
        },
        "definition": "",
        "hide": 0,
        "includeAll": false,
        "label": "Pod name",
        "multi": false,
        "name": "pod_name",
        "options": [],
        "query": {
          "dimensionFilters": {
            "EKS_Namespace": "$namespace",
            "MX_App": "$environment_id"
          },
          "dimensionKey": "EKS_PodName",
          "metricName": "mx_runtime_stats_handler_requests_total",
          "namespace": "ContainerInsights/Prometheus",
          "queryType": "dimensionValues",
          "refId": "CloudWatchVariableQueryEditor-VariableQuery",
          "region": "${awsRegion}"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 0,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      }
    ]
  },
  "time": {
    "from": "now-1h",
    "to": "now"
  },
  "timepicker": {},
  "timezone": "",
  "title": "Mendix app dashboard",
  "uid": "vDZHQgA7k1",
  "version": 19,
  "weekStart": ""
}