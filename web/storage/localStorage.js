$('#localSubmit').on('click',(e) => {
    let text = $('#localInput').val();
    let data = { 'text': text };
    localStorage.setItem('data', JSON.stringify(data));
});

if(localStorage.getItem('data') !== null && localStorage.getItem('data') !== 'undefined') {
    $('#localShow').text(JSON.parse(localStorage.getItem('data')).text);
}

$('#localDelete').on('click',(e) => {
    localStorage.clear();
    // storage.remove('data');
});
