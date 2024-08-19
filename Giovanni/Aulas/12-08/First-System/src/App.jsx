import Header from "./components/header";
import Card from "./components/Card";
import Banner from "./components/banner";
import BannerCard from "./components/BannerCard";
import Form from "./components/form"
import './App.css';

function App() {

  return (
    <>
      <Header></Header>
      <Card />
      <BannerCard
        title="Banner Principal new"
        subtitle="Lorem Ipsum New"
      />
      <Form />
      <Banner />
    </>
  )
};

export default App
