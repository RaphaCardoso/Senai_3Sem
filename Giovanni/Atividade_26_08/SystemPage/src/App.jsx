import { useState } from 'react'
import Header from './components/header/header'
import Form from "./components/form/form"
import Noticias from "./components/notices/notice"
import Banner from './components/banner/banner-ads'

import './components/app.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <Header />
      <Form title="Cadastro" />
      <Noticias />
      <Banner />
    </>
  )
}

export default App
