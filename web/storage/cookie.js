const cookieScript = {

    init: function() {
        $('#cookieSubmit').on('click',(e) => {
            let text = $('#cookieInput').val();
            document.cookie = 'text=' + encodeURIComponent(text)  + ';' + this.cookieSetting();
        });

        $('#cookieShow').text(this.getCookieValue('text'));

        $('#cookieDelete').on('click',(e) => {
            document.cookie = 'text=;expires:'+ 0;
        });
    },

    cookieSetting: function() {
        let maxAge = 60*5; // 有効期限 (発効からの期限)
        let expires = 'Sun, 30 Jan 2022 22:22:22 GMT'; // 有効期限
        let secure = false; //httpsのみを許容するか。本来はtrueにすべき
        let domain = ""; //送り先のdomain。特殊な事情がなければ、設定しない方が安全らしい
        let path = ""; // 送り先のpath
        let httpOnly = false; // http内のスクリプトからの操作を許可しないならtrue

        let result = '';
        if (maxAge !== '') {
            result += 'max-age=' + maxAge + ';';
        }
        else if (expires !== '') {
            result += 'expires=' + expires + ';';
        }
        if (secure) {
            result += 'Secure;';
        }
        if (domain) {
            result += 'domain=' + domain + ';';
        }
        if (path) {
            result += 'path=' + path + ';';
        }
        if (httpOnly) {
            result += 'httpOnly;';
        }
        return result;    
    },

    getCookieValue: function(key) {
        const cookies = document.cookie.split(';');
        for(val of cookies){
            let tmp = val.split('=');
            if (tmp[0] == key && tmp.length == 2) {
                return  decodeURIComponent(tmp[1]);
            }
        };
        return null;
    }
}


cookieScript.init();