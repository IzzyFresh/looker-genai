view: aggregate {
  sql_table_name: `analytics-386417.datawifi.aggregate` ;;

  dimension: ap_mac {
    type: string
    sql: ${TABLE}.apMac ;;
  }
  dimension: auth_status {
    type: string
    sql: ${TABLE}.authStatus ;;
  }
  dimension: channel {
    type: number
    sql: ${TABLE}.channel ;;
  }
  dimension: client_mac {
    type: string
    sql: ${TABLE}.clientMac ;;
  }
  dimension: downlink {
    type: number
    sql: ${TABLE}.downlink ;;
  }
  dimension: ip_address {
    type: string
    sql: ${TABLE}.ipAddress ;;
  }
  dimension: median_rx_mcsrate {
    type: number
    sql: ${TABLE}.medianRxMCSRate ;;
  }
  dimension: median_tx_mcsrate {
    type: number
    sql: ${TABLE}.medianTxMCSRate ;;
  }
  dimension: new_ssid {
    type: string
    sql: ${TABLE}.new_ssid ;;
  }
  dimension: new_zone {
    type: string
    sql: ${TABLE}.new_zone ;;
  }
  dimension: radio_type {
    type: string
    sql: ${TABLE}.radioType ;;
  }
  dimension_group: registry {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registry_time ;;
  }
  dimension: rssi {
    type: number
    sql: ${TABLE}.rssi ;;
  }
  dimension: rx_bytes {
    type: number
    sql: ${TABLE}.rxBytes ;;
  }
  dimension: rx_frames {
    type: number
    sql: ${TABLE}.rxFrames ;;
  }
  dimension: session_start_time {
    type: number
    sql: ${TABLE}.sessionStartTime ;;
  }
  dimension_group: session_start_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sessionStartTimeDate ;;
  }
  dimension: snr {
    type: number
    sql: ${TABLE}.snr ;;
  }
  dimension: traffic {
    type: number
    sql: ${TABLE}.traffic ;;
  }
  dimension: tx_bytes {
    type: number
    sql: ${TABLE}.txBytes ;;
  }
  dimension: tx_drop_data_frames {
    type: number
    sql: ${TABLE}.txDropDataFrames ;;
  }
  dimension: tx_frames {
    type: number
    sql: ${TABLE}.txFrames ;;
  }
  dimension: tx_ratebps {
    type: number
    sql: ${TABLE}.txRatebps ;;
  }
  dimension: uplink {
    type: number
    sql: ${TABLE}.uplink ;;
  }
  dimension: vlan {
    type: number
    sql: ${TABLE}.vlan ;;
  }
  measure: count {
    type: count
  }
}
