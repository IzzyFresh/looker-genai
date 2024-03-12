
view: average_rssi {
  derived_table: {
    sql: --the closer to 0, the better the signal strength
      SELECT 
        EXTRACT(DAY FROM sessionStartTimeDate) AS day_of_month,
        AVG(rssi) AS avg_rssi
      FROM `datawifi.aggregate`
      GROUP BY day_of_month
      ORDER BY day_of_month ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: day_of_month {
    type: number
    sql: ${TABLE}.day_of_month ;;
  }

  dimension: avg_rssi {
    type: number
    sql: ${TABLE}.avg_rssi ;;
  }

  set: detail {
    fields: [
        day_of_month,
	avg_rssi
    ]
  }
}
