const template = document.createElement("template");
template.innerHTML = /*html*/`
<style>
    :host {
        display:block;
        font-family: sans-serif;    
    }
    .card {
        background: linear-gradient(165deg, #D3000130 50%, #fff 50%);
        border-radius: 25px;
        overflow:hidden;
        height: 290px;
        transition: box-shadow .2s linear;
        padding: 15px;
        box-shadow: 2px 0 3px 0 #612121 inset,
                0 2px 3px 2px #F12121 inset,
                0 0 3px 6px #516 inset;
    }
    .card-header {
        display: block;
        width: 11rem;
        padding: 0 10px;
        text-align: center;
        margin: 0 auto;
    }
    ::slotted(img){
        width:100%;
        height: 180px;
        transition: transform .3s ease;
    }
    ::slotted(h5){
        text-transform: uppercase;
        font-size: 1.09rem;
        margin: 0;
        color: #433241;
    }
    ::slotted(h6){
        font-size: 1.03rem;
        margin: 5px 0 0 0;
        font-weight: normal;
    }
    ::slotted(p){
        font-size: 0.8rem;
        margin: 5px 0 0 0;
        font-weight: normal;
        font-style: italic;
        color: #D30001;
    }
 
    .card:hover ::slotted(img) {
        transform: scale(1.1);
    }

    .card-body {
        padding:10px;
        inline-size: 200px;
        overflow-wrap: break-word;
        text-align: center;
        margin: auto;

    }

    @media(hover: hover){
        .card:hover {
            cursor: pointer;
            /*background: #612121;*/
   
        }
    }
</style>
<div class="card">
 <div class="card-header">
    <slot name="imagen">
 </div>
 <div class="card-body">
    <slot name="title"></slot>
    <slot name="subtitle"></slot>
    <slot name="features"></slot>
 </div>
</div>
`

export class Card extends HTMLElement {
    constructor() {
        super();
        this.attachShadow({ mode: "open" })
        console.log("inicializando")
    }
    link = this.getAttribute("data-href");
    connectedCallback() {
        this.shadowRoot.appendChild(template.content.cloneNode(true));

        this.addEventListener("click", () => {
            console.log(this.href)
            window.open(this.link, "_blank")
        })
    }


}

