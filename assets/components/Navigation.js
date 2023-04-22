const template = document.createElement("template");

template.innerHTML = /*html*/`
<style>
  :host {
    display: block;
		background: #D30001;
  }
	nav {
    padding: 4px 0;
    box-shadow: 3px 9px 12px #00000040 inset;
	}
	.menu {
		height: 100%;
		display: flex;
		padding: 0;
		list-style: none;
		justify-content: flex-start;
		align-items: center;
	} 
  .menu li {
    margin: 0 15px;
  }
	.menu__link {
		text-decoration: none;
		color: #fff;
    display:flex;
    justify-content: center;
    align-items: center;
	}

</style>
<nav>
	<ul class="menu">
		<li><a href="/" class="menu__link">Fullstack Ruby On Rails</a></li>
		<li><a href="https://dblogging.github.io/enidev-frontend/" target="_blank" class="menu__link">
    <img src="assets/img/front-end.png" height="30" alt="imagen">
    &nbsp;
    Blog front-end</a></li>
    <li><a href="https://dblogging.github.io/" target="_blank" class="menu__link">
    <img src="assets/img/back-end.png" height="30" alt="imagen">
    &nbsp;
    Blog back-end</a></li>
	</ul>
</nav>
`


export class Navigation extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" })
    console.log("inicializando")
  }

  connectedCallback() {
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}