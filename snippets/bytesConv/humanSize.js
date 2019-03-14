// We declare a Sizes Array
const decSizes = ['Bytes', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];

// The Following function will map the amount of Bytes in that unit using decimal equivalence as per wikipedia:
// https://en.wikipedia.org/wiki/Megabyte
// n = 0 eqBytes = 10^0 Bytes = 1 Bytes
// n = 4 eqBytes = 10^12 Bytes = 1 TB
// n = 8 eqBytes = 10^24 Bytes = 1 YB
const eqBytes = n => 10 ** (n * 3);

const humanSize = (dataBytes) => {
  if (typeof(dataBytes)!=='number' && dataBytes < 0){
    // Validate that the input is a number and it is positive
    console.log("Provide a non-negative number");
  }
  else {
    // Check the explanation of the inequality solution down below.
    // n = Math.ceil((1/3) * Math.log10(dataBytes) - 1); // (0, 1000]
    n = Math.floor((1/3) * Math.log10(dataBytes) );  // [0, 1000)
    // We are not using Units above 'YB'
    n <= 8 ?
      console.log( `${(dataBytes / eqBytes(n)).toFixed(1)} ${decSizes[n]}` )
      :
      console.log( `${(dataBytes / eqBytes(8)).toFixed(1)} ${decSizes[8]}` )
  }
}

// Let's find the index n according to our previous definition.
// We'll check if the input is lower than the next Byte unit power
// dataBytes < eqBytes(n+1)
// dataBytes < 10^3(n+1)
// log10(dataBytes) < log10(10^3(n+1))
// log10(dataBytes) < 3(n+1)
// (1/3)log10(dataBytes) < (n+1)
// (1/3)log10(dataBytes) - 1 < n
// Getting the result in (0, 1000]
//   n = ceil((1/3)log10(dataBytes) - 1)
// Getting the result in [0, 1000)
//   n = floor((1/3)log10(dataBytes))

humanSize(3);
humanSize(999);
humanSize(1000);
humanSize(1001);
humanSize(1000000);
humanSize(1000000000);
humanSize(1000000000000);
humanSize(1000000000000000);
humanSize(1000000000000000000);
humanSize(1000000000000000000000);
humanSize(1000000000000000000000000);
humanSize(100000000000000000000000000769769);

humanSize(107333333);


