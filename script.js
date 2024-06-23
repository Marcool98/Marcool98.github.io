function changeLanguage(lang) {
    const page = document.location.pathname.split('/').pop().split('.').shift();
    const fileName = page === 'cv' ? 'cv.xml' : 'translations.xml';
    const xsltFile = page === 'cv' ? 'cv.xsl' : 'transform.xsl';

    const xhr = new XMLHttpRequest();
    xhr.open('GET', fileName, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const xmlString = xhr.responseText;
            const parser = new DOMParser();
            const xml = parser.parseFromString(xmlString, 'application/xml');

            if (xml.documentElement.nodeName === 'parsererror') {
                console.error('Error parsing XML');
                return;
            }

            const xsltProcessor = new XSLTProcessor();
            const xsl = new XMLHttpRequest();
            xsl.open('GET', xsltFile, true);
            xsl.onreadystatechange = function () {
                if (xsl.readyState === 4 && xsl.status === 200) {
                    const xslImport = parser.parseFromString(xsl.responseText, 'application/xml');
                    xsltProcessor.importStylesheet(xslImport);
                    xsltProcessor.setParameter(null, "lang", lang);

                    const resultDocument = xsltProcessor.transformToFragment(xml, document);
                    document.getElementById('content').innerHTML = "";
                    document.getElementById('content').appendChild(resultDocument);
                }
            };
            xsl.send();
        }
    };
    xhr.send();
}

document.addEventListener("DOMContentLoaded", function() {
    changeLanguage('fr');
});
