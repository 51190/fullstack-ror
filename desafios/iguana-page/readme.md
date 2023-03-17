## IGUANA PAGE


### 1 Estructura del proyecto:

```bash
📂 root
├── 📂 assets
│   ├── 📂 css # 👈 para las hojas de estilos
│   ├── 📂 img # 👈 para las imágenes
│   └── 📂 favicon # 👈 para los favicon
└── index.html # página de aterrizaje
```

### 2 Uso de Display o float:

```css
/* style.css => 126:142 */
.gallery {
    display: block;
    /*  ... */
}

.gallery__img {
    display: inline-block;
    /*  ... */
}
```

### 3 implementación de Iconos con Font Awesome:

**CDN:**

```html
<!-- index.html:22 -->
<script src="https://kit.fontawesome.com/6b8f0c7049.js" crossorigin="anonymous"></script>
```

**far fa-eye:**

```html
<!-- index.html:58 -->
<i class="far fa-eye"></i>
```


**far fa-hand-peace:**

```html
<!-- index.html:62 -->
<i class="far fa-eye"></i>
```


**fas fa-paint-brush:**

```html
<!-- index.html:66 -->
<i class="fas fa-paint-brush"></i>
```


### 4 Etiquetas semánticas:

```html
<!DOCTYPE html>
<html>
<body>
  <header>
	<!-- ... -->
  </header>
  <main>
	<section>
	  <!-- ... -->
	</section>
	<section>
	  <!-- ... -->
	</section>
	<section>
	  <!-- ... -->
	</section>
  </main>
  <footer>
	<!-- ... -->
  </footer>
</body>	
</html>
```

