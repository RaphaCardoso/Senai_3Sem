import { useState } from "react";
import "./form.css"


const form = () => {

    // Estado inicial do formulário
    const initialForm = {
        nome: "",
    };

    //  Estado do Fomulário
    const [formState, setFormState] = useState(initialForm);

    // Função para lidar com as alterações dos campos de entrada
    const handleInput = (event) => {

        // Obter valor e o nome do campo de entrada
        const target = event.currentTarget;

        // Extrair um valo e o nome do campo de entrada
        const { value, name } = target;

        // Atualizar o estado de formulário com os novos valores
        setFormState({ ...formState, [name]: value }); // ... Pegando todas as informações e espalha
    };

    // Função para Lidar com a submissão do formulário
    const handleSubmit = (event) => {

        event.preventDefault();
        console.log(formState);

        setFormState({ ...initialForm })

    };

    return (
        <div className="containerForm">
            <div>
                <form onSubmit={handleSubmit}>
                    <div className="form-control">
                        <label htmlFor="nome">Nome: </label>
                        <input type="text" id="nome" name="nome" value={formState.nome} onChange={handleInput} />
                    </div>
                    <div>
                        <button type="submit">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
    )
};


export default form