const nome = document.querySelector('#nome');

const mail = document.querySelector('#email');

const phone = document.querySelector('#telefone');

const btn = document.querySelector('.button-salvar');

const btn_Excluir = document.querySelector('.button-excluir');

const lista_cadastro = document.querySelector('.list');

btn.addEventListener('click', (event) => {

    event.preventDefault();

    btn_Excluir.style.visibility = 'visible';

    let cadastro_nome = nome.value;

    let cadastro_email = mail.value;

    let cadastro_telefone = phone.value;

    const templeteHTML = `
            <li class="list-card">
                <div class="card">
                    <h2 class="nome">${cadastro_nome}</h2>
                    <h3 class="email">${cadastro_email}</h3>
                    <h3 class="Telefone">${cadastro_telefone}</h3>
                </div>
            </li>
    `

    lista_cadastro.innerHTML += templeteHTML
    limpar_campos()
});

function limpar_campos() {
    nome.value = '';
    mail.value = '';
    phone.value = '';
    return console.log("Faça seu Cadastro!");
};

btn_Excluir.addEventListener('click', (e) => {

    btn_Excluir.style.visibility = 'hidden';

    lista_cadastro.innerHTML = ''
    //location.reload(); Função para recarregar a página
});
