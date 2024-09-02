import "./notice.css";

const Banner = () => {

    const bannerData = [
        {
            titulo: "Corinthians vence Flamengo",
            subtitulo: "Neste domingo, Corinthians em seu aniversário bate rival por 2 a 1 e esta fora do Z4 ",
            noticia: "O jogo que marcava o aniversário do clube, tinha muitas nuances e caminhava para um desfecho ruim, porém com a força da tocida o time encotrou forças para vencer o rival ",
            botao: "Ler matéria completa"
        },
        {
            titulo: "Eleiçoes SP",
            subtitulo: "Confira as principais agendas dos candidatos a governadores de São Paulo",
            noticia: "Boulos visita universidade de Campinas onde fará uma palestra com apoiadores. Marçal tem agenda livre e se reunirá com estrategistas de campanha.",
            botao: "Ler matéria completa"
        },
        {
            titulo: "Mercado Financeiro",
            subtitulo: "Bolsa de valores do Brasil tem um tímido crescimento",
            noticia: "A bolsa de valores brasileira vem apresentando um crescimento na margem de 1%. Apesar de ser uma boa noticía não animas os investidores.",
            botao: "Ler matéria completa"
        },
    ];

    console.log(bannerData);

    return (
        <div className="banner-container">
            {bannerData.map((banner, index) => (
                <div className="banner" key={index} id={index}>
                    <h1>{banner.titulo}</h1>
                    <h2>{banner.subtitulo}</h2>
                    <p>{banner.noticia}</p>
                    <button href="#">{banner.botao}</button>
                </div>
            ))}

        </div>
    )

}

export default Banner;