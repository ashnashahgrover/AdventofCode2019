let lines = document.querySelectorAll(".line-content")
let empty = []

lines.forEach(e=>{
empty.push(e.innerText)
})

let total1 = 0
let total2 = 0
let i = 0

empty.forEach(e=>{
  total += Math.floor(e/3)-2
  console.log(e, i, total)
  i++
})

empty.forEach(e=>{
  total += Math.floor(e/3)-2
  console.log(e, i, total)
  i++
})

console.log(total)

console.log(empty)
