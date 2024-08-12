import "./card.css";

const Card = () => {

    const cardData = [
        {
            titulo: "Card 1",
            description: "Este é o primeiro card",
            link: "https://www.meutimao.com.br"
        },
        {
            titulo: "Card 2",
            description: "Este é o segundo card",
            link: "https://www.meutimao.com.br"
        },
        {
            titulo: "Card 3",
            description: "Este é o terceiro card",
            link: "https://www.meutimao.com.br"
        },
    ];

    return (
        <div className="card-container">
            {cardData.map((card, index) => (

                <div className="card" key={index} id={index}>
                    <h2>{card.titulo}</h2>
                    <p>{card.description}</p>
                    <a href={card.link}>Veja mais</a>
                </div>

            ))}

            {/* ou Usar return {} na função map*/}
        </div>
    );
}

export default Card;