fetch('/partials/footer.html')
.then(r => r.text())
.then(html => {
    const footer = document.createElement('footer');
    footer.id = 'main_footer';
    const body = document.body;
    if (body.lastChild) {
        body.lastChild.after(footer, body.lastChild);
    } else {
        body.appendChild(footer);
    }
    document.getElementById('main_footer').innerHTML = html;
});