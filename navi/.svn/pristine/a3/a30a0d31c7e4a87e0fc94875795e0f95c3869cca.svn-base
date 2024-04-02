// 프로젝트상태 배경
var stateElements = document.querySelectorAll('.projectState');
stateElements.forEach(function(element) {
    var cmName = element.textContent.trim();

    if (cmName === '안정') {
        element.classList.toggle('ordinary', true);
    } else if (cmName === '긴급') {
        element.classList.toggle('emergency', true);
    } else if (cmName === '신규') {
        element.classList.toggle('project', true);
    }
});