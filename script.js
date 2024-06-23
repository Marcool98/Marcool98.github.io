let langueActu = 'fr';

function afficheCV(lang = langueActu) {
    var xmlFile = `cv_${lang}.xml`;
    var xslFile = `cv_${lang}.xsl`;

    var xhr = new XMLHttpRequest();
    xhr.open('GET', xmlFile, true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var xml = xhr.responseXML;

            var xsl = new XMLHttpRequest();
            xsl.open('GET', xslFile, true);
            xsl.onreadystatechange = function () {
                if (xsl.readyState == 4 && xsl.status == 200) {
                    var xslDoc = xsl.responseXML;

                    var processor = new XSLTProcessor();
                    processor.importStylesheet(xslDoc);
                    var resultDocument = processor.transformToFragment(xml, document);

                    history.pushState({page: 'cv', lang: lang}, 'CV de Marc LIU', `cv_${lang}`);

                    document.body.innerHTML = '';
                    document.body.appendChild(resultDocument);
                }
            };
            xsl.send();
        }
    };
    xhr.send();
}

function changeLang(lang) {
    langueActu = lang;
    history.pushState({page: 'home', lang: lang}, 'Portfolio de Marc LIU', `?lang=${lang}`);
    chargePageAcc();
}

function chargePageAcc() {
var titleText = {
'fr': 'Portfolio de Marc LIU',
'en': 'Marc LIU\'s Portfolio',
'zh': '马克·刘的作品集'
};
var welcomeText = {
'fr': 'Bienvenue sur mon portfolio.Pour voir mon CV, cliquez ci dessous :',
'en': 'Welcome to my portfolio. To view my resume, click below:',
'zh': '欢迎访问我的作品集。要查看我的简历，请点击下方：'
};
var buttonText = {
'fr': 'Voir le CV',
'en': 'View CV',
'zh': '查看简历'
};

document.title = titleText[langueActu];
    document.body.innerHTML = `
        <div class="container">
            <div class="drapeaux">
                <img src="/images/france.png" alt="Français" onclick="changeLang('fr')">
                <img src="/images/uk.png" alt="English" onclick="changeLang('en')">
                <img src="/images/china.png" alt="中文" onclick="changeLang('zh')">
            </div>
            <h1>${titleText[langueActu]}</h1>
            <p>${welcomeText[langueActu]}</p>
            <button onclick="afficheCV()">${buttonText[langueActu]}</button>
            <div class="video-container">
                <iframe id="youtube-video" width="560" height="315" 
                        src="https://www.youtube.com/embed/0e3GPea1Tyg?cc_lang_pref=${langueActu}&cc_load_policy=1" 
                        title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
        </div>
    `;
}

window.onpopstate = function(event) {
    if (event.state && event.state.page === 'cv') {
        afficheCV(event.state.lang);
    } else if (event.state && event.state.page === 'home') {
        langueActu = event.state.lang;
        chargePageAcc();
    } else {
        chargePageAcc();
    }
};

document.addEventListener("DOMContentLoaded", function() {
    const urlParams = new URLSearchParams(window.location.search);
    const lang = urlParams.get('lang') || 'fr';
    langueActu = lang;
    history.replaceState({page: 'home', lang: lang}, 'Portfolio de Marc LIU', `?lang=${lang}`);
    chargePageAcc();
});
