const nome = document.querySelector("#nome");

const idade = document.querySelector("#idade");

const telefone = document.querySelector("#telefone");

const button = document.querySelector(".button-form");

const lista = document.querySelector(".lista");


button.addEventListener("click", (event) => {

    event.preventDefault()

    let Username = nome.value;

    let age = idade.value;

    let phone = telefone.value;


    const templeteHTML = `<ul class="card">
       
    <div class="card">
    <li> Nome: ${Username} </li>
    <li> Idade: ${age} </li>
    <li> Telefone: ${phone} </li>
    </div>

     </ul>
    `;

    // Condição

    if (Username === "") {
        alert("Digite nome...")
        return false;
    }

    if (age === "") {
        alert("Digite idade...")
        return false;
    }

    if (phone === "") {
        alert("Digite telefone...")
        return false;
    }

    // incluindo itens no HTML
    lista.innerHTML += templeteHTML;

    // Limpando meu campo
    nome.value = "";
    idade.value = "";
    telefone.value = "";

});

