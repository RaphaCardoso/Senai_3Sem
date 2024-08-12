const Header = () => {

    // Uma variável para colocar estilização css via js
    const headerStyle = {

        backgroundColor: "blueviolet",
        padding: "20px",
        textAlign: "center",
        border: "3px solid violet",
        display: "Flex",
        alignContent: "Center",
        justifyContent: "Center",

    }

    const titleStyle = {

        margin: 0,
        fontSize: "30px",
        color: "aliceBlue",
        backgroundColor: "blueviolet"

    }

    return (

        <header style={headerStyle}>
            <h1 style={titleStyle}>File-System</h1>
        </header>

    )

};

export default Header;