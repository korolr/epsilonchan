import { Elm } from "./src/Main.elm";

if (module.hot) {
  module.hot.dispose(() => {
    window.location.reload();
  });
}

const app = Elm.Main.init({
  node: document.querySelector("main")
});
