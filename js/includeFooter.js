fetch('/partials/footer.html')
.then(r => r.text())
.then(html => {
    const footer = document.createElement('footer');
    footer.id = 'main_footer';
    const body = document.body;
    body.appendChild(footer);
    document.getElementById('main_footer').innerHTML = html;
});