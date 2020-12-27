// test importing both default and named exports from a CommonJS module
// React is the ultimate test of this because its dynamic exports assignments
// are not statically detectable by @rollup/plugin-commonjs.
import React, { useState } from 'react'
import ReactDOM from 'react-dom'

function App() {
  const [count, setCount] = useState(0)

  return React.createElement(
    'button',
    {
      onClick() {
        setCount(count + 1)
      }
    },
    `count is ${count}`
  )
}

ReactDOM.render(React.createElement(App), document.querySelector('.cjs'))
