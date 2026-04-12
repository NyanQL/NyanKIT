console.log('hello2.js loaded')

function main () {
  return JSON.stringify({
    success: true,
    status: 200,
    data: {
      message: 'hello! hello'
    }
  })
}

main()
