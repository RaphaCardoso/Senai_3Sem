import { useState } from "react";
import "./form.css"


const form = ({ title }) => {

    // Estado inicial do formulário
    const initialForm = {
        nome: "",
        email: "",
        telefone: ""
    };

    //  Estado do Fomulário
    const [formState, setFormState] = useState(initialForm);

    // Função para lidar com as alterações dos campos de entrada
    const handleInput = (event) => {

        // Obter valor e o nome do campo de entrada
        const target = event.currentTarget;

        // Extrair um valo e o nome do campo de entrada
        const { value, name, mail, fone } = target;

        // Atualizar o estado de formulário com os novos valores
        setFormState({ ...formState, [name]: value, [mail]: value, [fone]: value }); // ... Pegando todas as informações e espalha
    };

    // Função para Lidar com a submissão do formulário
    const handleSubmit = (event) => {

        event.preventDefault();
        console.log(formState);

        setFormState({ ...initialForm })

    };

    return (
        <div className="image-container">
            <div className="containerForm">
                <form className="form-control" onSubmit={handleSubmit}>
                    <h2>{title}</h2>
                    <div>
                        <label htmlFor="nome">Nome: </label>
                        <input type="text" id="nome" name="nome" value={formState.nome} onChange={handleInput} />
                    </div>
                    <div>
                        <label htmlFor="email">Email: </label>
                        <input type="text" id="email" name="email" value={formState.nome} onChange={handleInput} />
                    </div>
                    <div>
                        <label htmlFor="telefone">Telefone: </label>
                        <input type="text" id="telefone" name="telefone" value={formState.nome} onChange={handleInput} />
                    </div>
                    <button type="submit">Enviar</button>
                </form>
            </div>
        </div>
    )
};


export default form