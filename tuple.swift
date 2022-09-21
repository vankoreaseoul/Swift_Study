import UIKit

// Tuples (n짝, n쌍) -> 서로 매칭되어야하는 경우 사용.
var topTitle = ("메인화면", "mainIcon.png") // 메인회면은 이 아이콘으로 되어야 한다.
topTitle.0  // (1) indexing으로 값 호출.
topTitle.1

// http status code
var httpError = (statusCode: 404, description: "not found")
httpError.statusCode  // (2) 설명(?)을 붙여서, 그걸로 호출.
httpError.description //       -> 더 직관적이고 널리 사용되는 방식.
