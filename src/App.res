@react.component
let make = () => {
  <div className="main-container">
    <h1> {`Hello from ReScript and Vite 😄`->React.string} </h1>
    <JsCrazyLib.Cube cubeness={JsCrazyLib.Cube.cubeness(#bool(false))} />
  </div>
}
