/**
 * @param {number} n
 * @return {string[]}
 */
var generateParenthesis = function(n) {
    let open=[],close=[];
    for (let i=0;i<n;i++) open.push('(');
    let res=[open.pop()];
    close.push(')');
    return recurParenthesis(open, close, res)
};

var recurParenthesis = function(open, close, curr) {
    if (!open.length && !close.length) return curr;
    let openRes=[], closeRes=[];
    if (open.length) {
        let addOpen = curr.map(ele=> ele+'(');
        let newClose = close.concat([')'])
        openRes = recurParenthesis(open.slice(0, open.length-1), newClose, addOpen);

    }
    if (close.length) {
        let addClose = curr.map(ele=>ele+')');
        closeRes = recurParenthesis(open, close.slice(0, close.length-1), addClose);

    }
    return openRes.concat(closeRes);
}