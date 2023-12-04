/**
 * @param {number[][]} matrix
 * @param {number} target
 * @return {boolean}
 */
var searchMatrix = function(matrix, target) {

    if (matrix.length===0) return false
    let midIdx = Math.floor(matrix.length/2);
    let midRow = matrix[midIdx];
    if (midRow[0]<=target && midRow[midRow.length-1]>=target) {
        return searchRow(midRow, target)
    } else if (midRow[0]>target) {
        return searchMatrix(matrix.slice(0, midIdx), target);
    } else {
        return searchMatrix(matrix.slice(midIdx+1), target);
    }
};

var searchRow = function(row, target) {
    if (row.length===0) return false;
    let mid = Math.floor(row.length/2);
    if (row[mid]===target) {
        return true
    } else if (row[mid]<target) {
        let res = searchRow(row.slice(mid+1), target);
        if (res) return res+mid+1;
        return res
    } else {
        return searchRow(row.slice(0, mid), target);
    }
}