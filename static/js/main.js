// Navigation mobile
(function () {
  var toggle = document.querySelector('.nav-toggle');
  var menu   = document.querySelector('.nav-links');
  if (!toggle || !menu) return;

  toggle.addEventListener('click', function () {
    var open = menu.classList.toggle('open');
    toggle.setAttribute('aria-expanded', open);
  });

  document.addEventListener('click', function (e) {
    if (!toggle.contains(e.target) && !menu.contains(e.target)) {
      menu.classList.remove('open');
      toggle.setAttribute('aria-expanded', 'false');
    }
  });

  // Lien actif
  var path = window.location.pathname;
  menu.querySelectorAll('a').forEach(function (a) {
    var href = a.getAttribute('href');
    if (href === path || (href !== '/' && path.startsWith(href))) {
      a.classList.add('active');
    }
    if (href === '/' && path === '/') a.classList.add('active');
  });
})();

// Formulaire de contact
(function () {
  var form = document.getElementById('contact-form');
  if (!form) return;
  form.addEventListener('submit', function () {
    var btn = form.querySelector('[type="submit"]');
    if (btn) { btn.textContent = 'Envoi en cours…'; btn.disabled = true; }
  });
})();
