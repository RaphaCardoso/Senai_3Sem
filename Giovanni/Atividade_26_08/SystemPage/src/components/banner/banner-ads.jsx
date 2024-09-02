import './banner-ads.css'
import ads from '../../assets/propaganda.jpg'

const bannerAds = () => {

    return (

        <div className='publi'>
            <img src={ads} alt="" />
            <p>Anúncio</p>
        </div>

    );

};

export default bannerAds