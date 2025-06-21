import crypto from "crypto";

function hs(results) {
  const topics = {
    "0": "strings",
    "1": "lists",
    "2": "stacks",
    "3": "trees",
    "4": "recursion"
  }

  // Map filenames to previous names to get the correct hash
  const string = results.map(({ name }) => {
    const filename = name.replace("javascript/", "")
    const number = filename.match(/^\d/)[0];
    return `coding/problems/__tests__/${topics[number]}/${filename}`
  }).join("");

  return crypto.createHash("md5").update(string).digest("hex");
}

export default class SilverReporter {
  onFinished(results) {
    const hasFailures = results.some((test) => test.result.state === "fail");

    if (!hasFailures) {
      console.log("\x1b[32m\x1b[1m✨ All tests passed! Great job! 🎉\x1b[0m");
      console.log(
        `\x1b[32m\x1b[1m✨ Use this password for your Interview Ready Submission: ${hs(
          results
        )} \x1b[0m`
      );
    } else {
      console.log(
        "\x1b[31m\x1b[1m❌ Some tests failed. To pass on Interview Ready, you need the password after all tests passed!\x1b[0m"
      );
    }
  }
}
