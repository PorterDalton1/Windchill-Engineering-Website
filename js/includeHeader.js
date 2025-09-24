fetch('./partials/header.html')
.then(r => r.text())
.then(html => {
    const header = document.createElement('header');
    header.id = 'main_header';
    const body = document.body;
    if (body.firstChild) {
        body.insertBefore(header, body.firstChild);
    } else {
        body.appendChild(header);
    }
    document.getElementById('main_header').innerHTML = html;
    headerEvents();
});