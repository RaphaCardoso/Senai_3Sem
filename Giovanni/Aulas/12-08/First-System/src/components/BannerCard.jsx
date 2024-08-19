import "./bannerCard.css"

const bannerCard = (/*props desestruturando o propos e acessando dentro => */{ title, subtitle }) => {
    //console.log(props.title);
    // props para poder ver as informações junto ao console.log feito para debug

    return (
        <div className="banner-card">
            <h1>{/*props.*/title}</h1>
            <h2>{/*props.*/subtitle}</h2>
        </div>
    );
};

export default bannerCard;