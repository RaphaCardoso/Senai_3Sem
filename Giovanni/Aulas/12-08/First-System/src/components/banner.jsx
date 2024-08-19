import "./banner.css";

const Banner = () => {

    const bannerData = [
        {
            titulo: "Criação de Sites Raphaboot",
            subtitulo: "Alcance resultados reais com um novo site",
            descricao: "tenha um site com alto poder de Alcance e visibilidade para expor sua marca e produtos, adquirindo maior respeito e facilidade no atendimento ao cliente",
            botao: "Falar com Expecialista"
        },
        {
            titulo: "Criação de Sites Raphaboot",
            subtitulo: "Alcance resultados reais com um novo site",
            descricao: "tenha um site com alto poder de Alcance e visibilidade para expor sua marca e produtos, adquirindo maior respeito e facilidade no atendimento ao cliente",
            botao: "Falar com Expecialista"
        },
        {
            titulo: "Criação de Sites Raphaboot",
            subtitulo: "Alcance resultados reais com um novo site",
            descricao: "tenha um site com alto poder de Alcance e visibilidade para expor sua marca e produtos, adquirindo maior respeito e facilidade no atendimento ao cliente",
            botao: "Falar com Expecialista"
        },
    ];

    console.log(bannerData);

    return (
        <div className="banner-container">
            {bannerData.map((banner, index) => (
                <div className="banner" key={index} id={index}>
                    <h1>{banner.titulo}</h1>
                    <h2>{banner.subtitulo}</h2>
                    <p>{banner.descricao}</p>
                    <button href="#">{banner.botao}</button>
                </div>
            ))}

        </div>
    )

}

export default Banner;