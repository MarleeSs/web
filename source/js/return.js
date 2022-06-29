const masuk_pengurusButton = document.getElementById('masuk-pengurus');
const masuk_anggotaButton = document.getElementById('masuk-anggota');
const container = document.getElementById('container');

masuk_pengurusButton.addEventListener('click', () => {
  container.classList.add('right-panel-active');
});

masuk_anggotaButton.addEventListener('click', () => {
  container.classList.remove('right-panel-active');
});
