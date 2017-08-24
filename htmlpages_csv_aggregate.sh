sudo curl -XPOST "http://10.92.104.207:9200/htmlpages1/_search?size=0" -H 'Content-Type: application/json' -d'
{
  "aggs": {
    "site_noms": {
      "terms": {
        "field": "nom_site.keyword",
        "size": 20000
      },
      "aggs": {
        "maxlevel": {
          "max": {
            "field": "page_level"
          }
        }
      }
    }
  }
}' -o /home/ubuntu/elk_hello_world/htmlpages2.log
