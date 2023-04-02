// Antes dos Optional Fields

type person = {
  name: string,
  age: int,
}

type personWithPropsOptional = {
  name: string,
  age: option<int>,
  another: option<string>,
}

let person = {
  name: "Eren",
  age: 20,
}

let personWithPropsOptional = {
  name: "Eren",
  age: None,
  another: None,
}

let makePerson = (~name, ~age=?, ~another=?, ()) => {
  name,
  age,
  another,
}

let person = makePerson(~name="Eren", ~age=20, ())
Js.log(person)

// Agora com Optional Record Fields
type personWithOptionalFields = {
  name: string,
  age?: int,
  another?: int,
}

let person = {
  name: "Eren",
}

Js.log(person)
Js.log(
  switch person.age {
  | None => 0
  | Some(age) => age + 1
  },
)

switch person {
| {name, age: 12} => Js.log(`Name: ${name} - Age: 12`)
| {name, age: ?None} => Js.log(`Name: ${name} - Age: Null`)
| {name} => Js.log(`Name ${name}`)
}
