const Header = () => {

    // Uma variável para colocar estilização css via js
    const headerStyle = {

        backgroundColor: "blueviolet",
        padding: "20px",
        borderBottom: "3px solid bisque",
        textAlign: "center",
        display: "Flex",
        alignContent: "Center",
        justifyContent: "Center",

    }

    const titleStyle = {

        margin: 0,
        fontSize: "30px",
        color: "aliceblue",
        backgroundColor: "blueviolet"

    }

    return (

        <header style={headerStyle}>
            <h1 style={titleStyle}>File-System</h1>
        </header>

    )

};

export default Header;