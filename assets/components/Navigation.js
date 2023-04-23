const template = document.createElement("template");

template.innerHTML = /*html*/`
<style>
  :host {
    display: flex;
    align-items: center;
    position: fixed;
    width: 100%;
    top: 0;
    right: 0;
    z-index: 1;
  }
	nav {
    width: 100%;
	}
  .toggle-menu {
    position: absolute;
    width: 40px;
    top: 1rem;
    right: 0.5rem;
    cursor: pointer;
    z-index: 2;
  }
	.menu {
    display: flex;
    width: 100%;
		height: 100%;
		background: #D30001;
    flex-direction: column;
		justify-content: center;
		align-items: center;
		list-style: none;
    margin: 0 auto;
    padding: 4px 0;
    transform: translateY(-100);
    box-shadow: 3px 9px 12px #00000040 inset;
	} 
  .menu li {
    margin-bottom: 20px;
    padding: 10px 0;
  }
	.menu__link {
		text-decoration: none;
		color: #fff;
    display:flex;
    justify-content: center;
    align-items: center;
	}

  .menu-show {
    transform: translateY(0);
  }

  @media(min-width: 768px){
    .menu {
      flex-direction: row;
      justify-content: flex-start;
      gap: 20px;
      transform: translateY(0);
    }
    .menu li {
      margin-bottom: 0;
    }
    .toggle-menu {
      display: none;
    }
  }

</style>
<nav>
  <div id="toggle-menu" class="toggle-menu">
    <img src="" alt="img">
  </div>
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
    const toggleMenu = document.getElementById("toggle-menu");

    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }
}