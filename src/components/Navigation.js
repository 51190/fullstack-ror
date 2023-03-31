const template = document.createElement("template");

template.innerHTML = /*html*/`
<style>
	nav {
		background: #234;
		height: 80px;
	}
	.menu {
		height: 100%;
		display: flex;
		padding: 0;
		list-style: none;
		justify-content: flex-start;
		align-items: center;
	} 
	.menu__link {
		text-decoration: none;
		color: #fff;
	}
</style>
<nav>
	<ul class="menu">
		<li><a href="/" class="menu__link">inicio</a></li>
	</ul>
</nav>
`


export class Navigation extends HTMLElement {
	constructor() {
		super();
		this.attachShadow({mode: "open"})
		console.log("inicializando")
	}

	connectedCallback() {
		this.shadowRoot.appendChild(template.content.cloneNode(true));
	}
}