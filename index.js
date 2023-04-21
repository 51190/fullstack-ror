import { Navigation } from './assets/components/Navigation.js'

customElements.define("main-nav", Navigation);

const main = document.getElementById("main")

const verificar = (item) => {
    return item.length > 0;
}

fetch("assets/data/desafios.json")
    .then(res => res.json())
    .then((desafios) => {
        desafios.forEach((item, index) => {
            const bullet = document.createElement("wc-bullet-chain");
            let li = document.createElement("li");
            li.textContent = item.modulo;
            li.style.fontSize = "22px";
            li.style.color = "#c15";
            bullet.appendChild(li);
            // GUIADOS
            let guiados = desafios.map((item) => item.guiados)
            guiados[index].forEach(desafio => {
                if (verificar(desafio.titulo)) {
                    li = document.createElement("li");
                    const details = document.createElement("details");
                    // STYLE DETAILS
                    details.style.border = "1px solid #aaa";
                    details.style.borderRadius = "4px";
                    details.style.padding = "0.5em 0.5em";
                    details.style.display = "flex";
                    const summary = document.createElement("summary");
                    summary.style.fontWeight = "bold";
                    summary.style.fontWeight = "#82d";
                    summary.style.margin = "-0.5em -0.5em 0";
                    summary.style.padding = "0.5em";
                    summary.style.cursor = "pointer";
                    summary.style.userSelect = "none";
                    summary.style.color = "#777";
                    summary.innerHTML = `${desafio.badge} ${desafio.titulo}`;
                    details.appendChild(summary);
                    let anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.github);
                    anchor.setAttribute("target", "_blank");
                    anchor.style.textDecoration = "none";
                    anchor.textContent = "⚓ github";
                    details.appendChild(anchor);
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.github_page);
                    anchor.setAttribute("target", "_blank");
                    anchor.style.textDecoration = "none";
                    anchor.textContent = "⚓ github-page";
                    details.appendChild(anchor);
                    li.appendChild(details);
                    bullet.appendChild(li);
                }
            })
            // EVALUADOS
            let evaluados = desafios.map((item) => item.evaluados)
            evaluados[index].forEach(desafio => {
                li = document.createElement("li");
                const details = document.createElement("details");
                // STYLE DETAILS
                details.style.border = "1px solid #aaa";
                details.style.borderRadius = "4px";
                details.style.padding = "0.5em 0.5em";
                details.style.display = "flex";
                const summary = document.createElement("summary");
                summary.style.fontWeight = "bold";
                summary.style.fontWeight = "#82d";
                summary.style.margin = "-0.5em -0.5em 0";
                summary.style.padding = "0.5em";
                summary.style.cursor = "pointer";
                summary.style.userSelect = "none";
                summary.style.color = "#555";
                summary.innerHTML = `${desafio.badge} ${desafio.titulo}`;
                details.appendChild(summary);
                let anchor;
                if (desafio.github) {
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.github);
                    anchor.setAttribute("target", "_blank");
                    anchor.style.textDecoration = "none";
                    anchor.textContent = "⚓ github";
                    details.appendChild(anchor);
                }
                if (desafio.gh_page) {
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.github_page);
                    anchor.setAttribute("target", "_blank");
                    anchor.style.textDecoration = "none";
                    anchor.textContent = "⚓ github-page";
                    details.appendChild(anchor);
                }
                if (desafio.youtube) {
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.youtube);
                    anchor.setAttribute("target", "_blank");
                    anchor.style.textDecoration = "none";
                    anchor.textContent = "⚓ youtube";
                    details.appendChild(anchor);
                }
                li.appendChild(details);
                bullet.appendChild(li);

            })
            // EXAMEN
            li = document.createElement("li");
            const details = document.createElement("details");
            // STYLE DETAILS
            details.style.border = "1px solid #aaa";
            details.style.borderRadius = "4px";
            details.style.padding = "0.5em 0.5em";
            details.style.display = "flex";
            const summary = document.createElement("summary");
            summary.style.fontWeight = "bold";
            summary.style.fontWeight = "#82d";
            summary.style.margin = "-0.5em -0.5em 0";
            summary.style.padding = "0.5em";
            summary.style.cursor = "pointer";
            summary.style.color = "#333";
            summary.style.userSelect = "none";
            summary.innerHTML = `${item.examen.badge} ${item.examen.titulo}`;
            details.appendChild(summary);
            let anchor = document.createElement("a");
            anchor.setAttribute("href", item.examen.github);
            anchor.setAttribute("target", "_blank");
            anchor.style.textDecoration = "none";
            anchor.textContent = "⚓ github";
            details.appendChild(anchor);
            if (item.examen.github_page) {
                anchor = document.createElement("a");
                anchor.setAttribute("href", item.examen.github_page);
                anchor.setAttribute("target", "_blank");
                anchor.style.textDecoration = "none";
                anchor.textContent = "⚓ github-page";
                details.appendChild(anchor);
            }
            li.appendChild(details);
            bullet.appendChild(li);
            main.appendChild(bullet)
        })
    })
    .catch(err => console.error(err.message))