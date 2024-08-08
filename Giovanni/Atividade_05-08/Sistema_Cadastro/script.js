const nome = document.querySelector('#nome');

const mail = document.querySelector('#email');

const phone = document.querySelector('#telefone');

const btn = document.querySelector('.button-salvar');

const card_delete = document.querySelector('.list-card');

const lista_cadastro = document.querySelector('.list');

var id_list = 0;

btn.addEventListener('click', (event) => {

    event.preventDefault();

    //btn_Excluir.style.visibility = 'visible';

    let cadastro_nome = nome.value;

    let cadastro_email = mail.value;

    let cadastro_telefone = phone.value;

    // Validações here


    //

    const templeteHTML = `
             <li class="list-card" id="${id_list}">
                 <div class="card">
                     <h2 class="nome">${cadastro_nome}</h2>
                     <h3 class="email">${cadastro_email}</h3>
                     <h3 class="Telefone">${cadastro_telefone}</h3>
                 </div>
                 <button class="delete-button"> Excluir cadastro </button>
             </li>
     `;

    lista_cadastro.innerHTML += templeteHTML;

    // carregar no html here

    console.log();

    funcDeletar();

    limpar_campos();
    id_list++;
});



function limpar_campos() {
    nome.value = '';
    mail.value = '';
    phone.value = '';
    return console.log("Faça seu Cadastro!");
};


const btnDelete = document.getElementsByClassName('delete-button')

async function funcDeletar() {

    for (let index = 0; index < btnDelete.length; index++) {
        btnDelete[index].addEventListener('click', (e) => {
            e.preventDefault();

            btnDelete[index].parentElement.remove();

        });
    };

};

// function carregar_html() {

//     lista_cadastro.innerHTML = '';

//     for (let index = 0; index < array.length; index++) {
//         const cadastro_salvo = array[index];

//         const templeteHTML = `
//              <li class="list-card" id="${cadastro_salvo.id}">
//                  <div class="card">
//                      <h2 class="nome">${cadastro_salvo.nome}</h2>
//                      <h3 class="email">${cadastro_salvo.email}</h3>
//                      <h3 class="Telefone">${cadastro_salvo.telefone}</h3>
//                  </div>
//                  <button class="delete-button"> Excluir cadastro </button>
//              </li>
//      `;

//         lista_cadastro.innerHTML += templeteHTML;
//     };
// }

/*btn_Excluir.addEventListener('click', (e) => {

    btn_Excluir.style.visibility = 'hidden';

    lista_cadastro.innerHTML = ''
    //location.reload(); Função para recarregar a página
});*/

/*
    lista_cadastro.querySelector('.delete-button').addEventListener('click', () => {
 
        const cadastro_deletado = document.querySelector('.delete-button').id;
 
        console.log(cadastro_deletado);
 
 
        cadastro_deletado.remove(); // Remove o item da lista
    });
*/