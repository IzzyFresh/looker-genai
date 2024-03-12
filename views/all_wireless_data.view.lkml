view: all_wireless_data {
  sql_table_name: `analytics-386417.datawifi.all_wireless_data` ;;

  dimension: alerts {
    type: string
    sql: ${TABLE}.alerts ;;
  }
  dimension: auth_method {
    type: string
    sql: ${TABLE}.authMethod ;;
  }
  dimension: auth_status {
    type: string
    sql: ${TABLE}.authStatus ;;
  }
  dimension: bssid {
    type: string
    sql: ${TABLE}.bssid ;;
  }
  dimension: channel {
    type: number
    description: "Canal de frecuencia donde se despliega la red Wifi"
    sql: ${TABLE}.channel ;;
  }
  dimension: client_mac {
    type: string
    description: "Mac address of user"
    sql: ${TABLE}.clientMac ;;
  }
  dimension: control_plane_name {
    type: string
    sql: ${TABLE}.controlPlaneName ;;
  }
  dimension: cpe_mac {
    type: string
    sql: ${TABLE}.cpeMac ;;
  }
  dimension: data_plane_name {
    type: string
    sql: ${TABLE}.dataPlaneName ;;
  }
  dimension: downlink {
    type: number
    description: "Tráfico de bajada (suele ser el mismo que txBytes)"
    sql: ${TABLE}.downlink ;;
  }
  dimension: downlink_rate {
    type: number
    sql: ${TABLE}.downlinkRate ;;
  }
  dimension: encryption_method {
    type: string
    sql: ${TABLE}.encryptionMethod ;;
  }
  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }
  dimension: ip_address {
    type: string
    description: "user ip address"
    sql: ${TABLE}.ipAddress ;;
  }
  dimension: ipv6_address {
    type: string
    sql: ${TABLE}.ipv6Address ;;
  }
  dimension: median_rx_mcsrate {
    type: number
    description: "Tasa media de recepción MCS (Esquema codificado de modulación, es el índice que muestra la tasa de transmisión máxima con la que pueden comunicarse los dispositivos)"
    sql: ${TABLE}.medianRxMCSRate ;;
  }
  dimension: median_tx_mcsrate {
    type: number
    description: "Tasa media de transmisión MCS (Esquema codificado de modulación, es el índice que muestra la tasa de transmisión máxima con la que pueden comunicarse los dispositivos)"
    sql: ${TABLE}.medianTxMCSRate ;;
  }
  dimension: mp_mac {
    type: string
    description: "Dirección MAC del Access Point"
    sql: ${TABLE}.mpMac ;;
  }
  dimension: new_ssid {
    type: string
    description: "connected ssid"
    sql: ${TABLE}.new_ssid ;;
  }
  dimension: new_zone {
    type: string
    description: "name of zone"
    sql: ${TABLE}.new_zone ;;
  }
  dimension: os_type {
    type: string
    sql: ${TABLE}.osType ;;
  }
  dimension: radio_type {
    type: string
    description: "Protocolos wifi soportrados por el usuario"
    sql: ${TABLE}.radioType ;;
  }
  dimension_group: registry {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registry_time ;;
  }
  dimension: rssi {
    type: number
    description: "Potencia de la conexión (dBm), mientras mas cerca a 0 mejor"
    sql: ${TABLE}.rssi ;;
  }
  dimension: rx_bytes {
    type: number
    description: "Bytes recibidos por el AP desde el usuario"
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
    description: "Relación señal a ruido (dB), mientras más alto mejor"
    sql: ${TABLE}.snr ;;
  }
  dimension: speedflex {
    type: string
    sql: ${TABLE}.speedflex ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: tc_with_quotalist {
    type: string
    sql: ${TABLE}.tcWithQuotalist ;;
  }
  dimension: traffic {
    type: number
    description: "Sumatoria uplink y downlink"
    sql: ${TABLE}.traffic ;;
  }
  dimension: tx_bytes {
    type: number
    description: "Bytes enviados desde el AP al usuario"
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
    description: "Tasa de transmisión en mpbs"
    sql: ${TABLE}.txRatebps ;;
  }
  dimension: tx_rxbytes {
    type: number
    description: "Sumatoria de txBytes y rxBytes"
    sql: ${TABLE}.txRXBytes ;;
  }
  dimension: uplink {
    type: number
    description: "Tráfico de subia (suele ser el mismo que rxBytes)"
    sql: ${TABLE}.uplink ;;
  }
  dimension: uplink_rate {
    type: number
    sql: ${TABLE}.uplinkRate ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.userName ;;
  }
  dimension: vlan {
    type: number
    description: "Identificador de VLAN"
    sql: ${TABLE}.vlan ;;
  }
  dimension: wlan_type {
    type: string
    sql: ${TABLE}.wlanType ;;
  }
  dimension: zone_id {
    type: string
    sql: ${TABLE}.zoneId ;;
  }
  dimension: zone_version {
    type: string
    sql: ${TABLE}.zoneVersion ;;
  }
  measure: count {
    type: count
    drill_fields: [data_plane_name, hostname, control_plane_name, user_name]
  }
}
