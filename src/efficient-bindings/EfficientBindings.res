// ----- Aula #02 - Criando e mantendo bindings eficientes ------

// 1. Overview
// 2. Uma abordagem pragmatica sobre bindings
// 3. Como criar bindings eficientes
// 4. Como debugar bindings
// 5. Quando extrair bindings vs Quando criar bindings locais
//   - Observar se os Bindings são parciais. Se for parciais, manter os bindings de maneira local/locais
//   - Se os bindings vão serem utilizados em mais de um projeto, o mais recomendado seria criar bindings externos:
//     - Ao externalizar os bindings o ideal é você deixar público e fazer os bindings completo da lib
//     - Bindings 1:1 ou Bindings Opioneted

let date = Js.Date.make()
let today = DateFns.format(. date, "'Today is a' eeee")
Js.log(today)
