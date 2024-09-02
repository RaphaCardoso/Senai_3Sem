import './header.css'
import logo from '../../assets/logoJornal.png'

const Header = () => {

    return (
        <div className="container-header">
            <img className='logo' src={logo} alt="" />
            <ul className="container-list">
                <li className='list'>Home</li>
                <li className='list'>Info</li>
                <li className='list'>About us</li>
                <li className='list'>Help</li>
            </ul>
        </div>

    );

};

export default Header;