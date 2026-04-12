var payload = nyanAllParams.ws_message_json
if (payload === undefined) {
  payload = nyanAllParams.ws_message_text
}

console.log('[ws_client:' + nyanAllParams.ws_client + '] type=' + nyanAllParams.ws_message_type, payload)

"";
