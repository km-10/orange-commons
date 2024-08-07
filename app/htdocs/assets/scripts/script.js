document.addEventListener('DOMContentLoaded', function() {
    const menuIcon = document.querySelector('.menu-icon');
    const toggle = document.getElementById('cp_toggle04');

    menuIcon.addEventListener('click', function() {
        toggle.checked = !toggle.checked;
    });
});
