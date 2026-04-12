function main () {
  let name = 'NyanQL'
  if (typeof nyanAllParams.name !== 'undefined') {
    name = nyanAllParams.name
  }

  return JSON.stringify({
    success: true,
    status: 200,
    data: {
      message: 'hello! ' + name,
      api: nyanAllParams.api || 'hello'
    }
  })
}

main()
