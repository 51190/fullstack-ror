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
            li.innerHTML = item.modulo;
            li.style.fontSize = "22px";
            li.style.color = "#c15";
            li.style.fontWeight = "bold";
            bullet.appendChild(li);
            // GUIADOS
            let guiados = desafios.map((item) => item.guiados)
            guiados[index].forEach(desafio => {
                let anchor;
                if (verificar(desafio.titulo)) {
                    li = document.createElement("li");
                    const details = document.createElement("details");
                    // STYLE DETAILS
                    details.style.border = "1px solid #aaa";
                    details.style.borderRadius = "4px";
                    details.style.padding = "0.5em 0.5em";
                    const summary = document.createElement("summary");
                    summary.style.fontWeight = "bold";
                    summary.style.fontWeight = "#82d";
                    summary.style.margin = "-0.5em -0.5em 0";
                    summary.style.padding = "0.5em";
                    summary.style.cursor = "pointer";
                    summary.style.userSelect = "none";
                    summary.style.color = "#777";
                    summary.innerHTML = `${item.badges.guiado} ${desafio.titulo}`;
                    details.appendChild(summary);
                    if (verificar(desafio.github)) {
                        anchor = document.createElement("a");
                        anchor.setAttribute("href", desafio.github);
                        anchor.setAttribute("target", "_blank");
                        anchor.style.textDecoration = "none";
                        anchor.style.color = "#333";
                        anchor.innerHTML = item.badges.github;
                        details.appendChild(anchor);
                    }
                    if (verificar(desafio.github_page)) {
                        anchor = document.createElement("a");
                        anchor.setAttribute("href", desafio.github_page);
                        anchor.setAttribute("target", "_blank");
                        anchor.style.textDecoration = "none";
                        anchor.style.color = "#333";
                        anchor.innerHTML = item.badges.github_page;
                        details.appendChild(anchor);
                    }
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
                const summary = document.createElement("summary");
                summary.style.fontWeight = "bold";
                summary.style.fontWeight = "#82d";
                summary.style.margin = "-0.5em -0.5em 0";
                summary.style.padding = "0.5em";
                summary.style.cursor = "pointer";
                summary.style.userSelect = "none";
                summary.style.color = "#555";
                summary.innerHTML = `${item.badges.evaluado} ${desafio.titulo}`;
                details.appendChild(summary);
                let anchor;
                if (desafio.github) {
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.github);
                    anchor.setAttribute("target", "_blank");
                    anchor.setAttribute("title", "Github");
                    anchor.style.textDecoration = "none";
                    anchor.style.color = "#333";
                    anchor.innerHTML = item.badges.github;
                    details.appendChild(anchor);
                }
                if (desafio.github_page) {
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.github_page);
                    anchor.setAttribute("target", "_blank");
                    anchor.setAttribute("title", "Github Page");
                    anchor.style.textDecoration = "none";
                    anchor.style.color = "#333";
                    anchor.innerHTML = item.badges.github_page;
                    details.appendChild(anchor);
                }
                if (desafio.youtube) {
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.youtube);
                    anchor.setAttribute("target", "_blank");
                    anchor.style.textDecoration = "none";
                    anchor.style.color = "#333";
                    anchor.textContent = "⚓ youtube";
                    details.appendChild(anchor);
                }
                if (desafio.zip) {
                    anchor = document.createElement("a");
                    anchor.setAttribute("href", desafio.zip);
                    anchor.setAttribute("title", "Descargar");
                    anchor.style.textDecoration = "none";
                    anchor.style.color = "#333";
                    anchor.innerHTML = item.badges.zip;
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