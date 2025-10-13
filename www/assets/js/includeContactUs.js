fetch('/partials/contactUs.html')
.then(r => r.text())
.then(html => {
    const contactUs = document.createElement('div');
    contactUs.id = 'contact_us_section';
    const body = document.body;
    body.appendChild(contactUs);
    document.getElementById('contact_us_section').innerHTML = html;
});