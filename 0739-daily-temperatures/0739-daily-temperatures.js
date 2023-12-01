/**
 * @param {number[]} temperatures
 * @return {number[]}
 */
var dailyTemperatures = function(temperatures) {
    let coldTemp = [], coldDays = [], resDays = [];
    for (let i=1; i<temperatures.length; i++) {
        while(coldTemp.length && coldTemp[coldTemp.length-1]<temperatures[i]) {
            coldTemp.pop();
            let colderDay = coldDays.pop();
            resDays[colderDay] = i-colderDay;
            }
        if (temperatures[i]>temperatures[i-1]) {
            resDays.push(1)
        } else {
            coldTemp.push(temperatures[i-1]);
            coldDays.push(i-1);
            resDays.push(0);
        }
    }
    resDays.push(0)
    return resDays
};
