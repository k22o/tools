$('#sessionSubmit').on('click',(e) => {
    let text = $('#sessionInput').val();
    let data = { 'text': text };
    sessionStorage.setItem('data', JSON.stringify(data));
});

if(sessionStorage.getItem('data') !== null && sessionStorage.getItem('data') !== 'undefined') {
    $('#sessionShow').text(JSON.parse(sessionStorage.getItem('data')).text);
}

$('#sessionDelete').on('click',(e) => {
    sessionStorage.clear();
    // storage.remove('data');
});
