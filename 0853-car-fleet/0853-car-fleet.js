/**
 * @param {number} target
 * @param {number[]} position
 * @param {number[]} speed
 * @return {number}
 */
var carFleet = function(target, position, speed) {
    const n = speed.length;
    const v = [];
    for (let i = 0; i < n; i++) {
        v.push([position[i], speed[i]]);
    }
    v.sort((a, b) => a[0] - b[0]);
    const time = [];
    for (let i = 0; i < n; i++) {
        time.push((target - v[i][0]) / v[i][1]);
    }

    let curr = Number.NEGATIVE_INFINITY;
    let res = 0;

    for (let i = n - 1; i >= 0; i--) {
        if (time[i] > curr) {
            curr = time[i];
            res++;
        }
    }

    return res;
};