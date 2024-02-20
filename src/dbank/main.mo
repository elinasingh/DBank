import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor DBank {
  var currentValue: Nat = 300;
  currentValue := 100;

  let id = 234567897653344;
  //Debug.print(debug_show(id));

  public func topUp(amount: Nat) {
    currentValue += amount;

    Debug.print(debug_show(currentValue));
  };

  public func withdrawl(amount: Nat) {
    let tempValue: Int = currentValue - amount;
    if (tempValue - amount >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too large, currentValue less than zero.");
    }
  };

  //topUp();
}
