//UTC denne skal bruges
console.log(new Date());

console.log(Date());

console.log(Date.now());

const date = new Date();

const danishdate = new Intl.DateTimeFormat("da-dk").format(date);

console.log(danishdate);

const amercianDate = new Intl.DateTimeFormat("en-us").format(date);
console.log(amercianDate);