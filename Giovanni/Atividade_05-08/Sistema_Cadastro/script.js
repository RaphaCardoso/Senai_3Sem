const nome = document.querySelector('#nome');

const mail = document.querySelector('#email');

const phone = document.querySelector('#telefone');

const btn = document.querySelector('.button-salvar');

const lista_cadastro = document.querySelector('.list');


btn.addEventListener('click', (event) => {

    event.preventDefault();

    //btn_Excluir.style.visibility = 'visible';

    let cadastro_nome = nome.value;

    let cadastro_email = mail.value;

    let cadastro_telefone = phone.value;

    // Validações here

    if (!cadastro_nome || !cadastro_email || !cadastro_telefone) {
        alert("Campos em branco!");
    } else {
        const templeteHTML = `
        <li class="list-card">
            <div class="card">
                <h2 class="nome">${cadastro_nome}</h2>
                <h3 class="email">${cadastro_email}</h3>
                <h3 class="Telefone">${cadastro_telefone}</h3>
            </div>
            <button class="del"> Excluir cadastro </button>
        </li>`;

        lista_cadastro.innerHTML += templeteHTML;
    }

    funcDeletar();

    limpar_campos();
});



function limpar_campos() {
    nome.value = '';
    mail.value = '';
    phone.value = '';
    return console.log("Faça seu Cadastro!");
};


async function funcDeletar() {

    const deletar = document.querySelectorAll(".del");
    deletar.forEach((btnDeletar) => {
        // Ouvindo o evento no botao de deletar
        btnDeletar.addEventListener("click", (e) => {
            // Removendo a div pai do botão
            btnDeletar.parentElement.remove();
            console.log("Usuario Deletado");
        });
    });
}
