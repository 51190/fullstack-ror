const template = document.createElement("template");


template.innerHTML = /*html*/`
<style>
  :host {
    display: flex;
    align-items: center;
    position: fixed;
    width: 100%;
    height: 75px;
    top: 0;
    right: 0;
    z-index: 9999;
		background: #D30001;
    font-family: sans-serif;
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
		height: auto;
		background: #D30001;
    flex-direction: column;
		justify-content: center;
		align-items: center;
		list-style: none;
    margin: 0 auto;
    padding: 4px 0;
    transform: translateY(-100%);
    box-shadow: 3px 9px 12px #00000040 inset;
    transition: transform .4s ease;
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
    transform: translateY(40%);
  }

  @media(min-width: 768px){
    .menu {
      flex-direction: row;
      justify-content: flex-start;
      gap: 20px;
      padding-left: 40px;
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
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM64 256c0-17.7 14.3-32 32-32H480c17.7 0 32 14.3 32 32s-14.3 32-32 32H96c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z" fill="#f9a9a9" /></svg>
  </div>
	<ul class="menu" id="main-menu">
		<li><a href=${import.meta.url.includes("fullstack-ror") ? "/fullstack-ror" : "/"} class="menu__link">Fullstack Ruby On Rails</a></li>
		<li><a href="https://dblogging.github.io/enidev-frontend/" target="_blank" class="menu__link">
    <img src=${import.meta.url.includes("fullstack-ror") ? "/fullstack-ror/assets/img/front-end.png" : "/assets/img/front-end.png"} height="30" alt="imagen">
    &nbsp;
    Blog front-end</a></li>
    <li><a href="http://enidev911.gitbook.io/ruby-on-rails" target="_blank" class="menu__link">
    Gitbook ruby on rails</a></li>
    <li><a href="software.html" class="menu__link">
    Software</a></li>
    <li><a href="recursos.html" class="menu__link">
    Recursos</a></li>
	</ul>
</nav>
`


export class Navigation extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" })
  }


  connectedCallback() {

    this.shadowRoot.appendChild(template.content.cloneNode(true));
    const toggleMenu = this.shadowRoot.querySelector("#toggle-menu");
    const mainMenu = this.shadowRoot.querySelector("#main-menu");

    toggleMenu.addEventListener('click', () => {
      mainMenu.classList.toggle("menu-show");
    });
  }
}