/* ECMAScript 2015 */

Array.prototype.sample = function(n) {
  const result = [...this];
  const count = Math.min(n, result.length);

  for (let i = 0 ; i < count ; i++) {
    const x = Math.floor(Math.random() * result.length);

    [result[i], result[x]] = [result[x], result[i]];
  }

  return result.slice(0, count);
}

const generate = () =>
  Array(45).fill()
           .map((_, i) => i + 1)
           .sample(6)
           .sort((x, y) => x - y)
           .join(', ');

console.log(generate());
