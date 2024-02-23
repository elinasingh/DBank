import { dbank } from "../../declarations/dbank";


window.addEventListener("load", async function() {
    // console.log("Finished Loading");
    const currentAmount = await dbank.checkBalance();
    document.getElementById("value").innerText = currentAmount;
});