# Decentralized Parking System

## 📌 Overview

The **Decentralized Parking System** is a smart contract built on the Ethereum blockchain that enables **parking slot owners** to register their slots and allows **users** to book and pay for parking securely using **cryptocurrency (ETH)**. The system ensures fairness by handling payments, availability, and refunds in a decentralized manner, eliminating the need for middlemen.

## 💡 Why This Project?

### Problems with Traditional Parking Systems:

1. **Lack of Transparency** – Many parking lots have hidden charges, manual errors, and inconsistencies.
2. **Middlemen Costs** – Parking aggregators take commissions, leading to higher costs for users.
3. **Overbooking Issues** – Centralized systems often allow multiple bookings for the same spot.
4. **Delayed Refunds** – If a user leaves early, getting a refund is often a hassle.

### How Our Smart Contract Solves These Issues:

✅ **Immutable Records** – Every transaction and booking is recorded on the blockchain.

✅ **Eliminates Middlemen** – Users pay directly to parking owners without third-party intervention.

✅ **Automated Payments** – Ensures fair payments and refunds via smart contract logic.

✅ **Real-Time Availability** – Users can check the live status of available parking slots.

✅ **Secure and Transparent** – Transactions are executed securely on Ethereum, reducing fraud.

---

## ⚙️ How It Works

1. **Parking Slot Registration** – Owners can register their slots by setting a price per hour.
2. **Booking a Slot** – Users can book available slots by sending ETH equal to the required duration.
3. **Using the Slot** – The booking remains valid for the chosen hours.
4. **Releasing the Slot** – Once the user leaves, the slot becomes available again.
5. **Refund Mechanism** – If a user leaves early, the contract calculates and returns excess ETH.

---

## 🏗️ Smart Contract Features

- **Register Parking Slots** – Parking owners can list their spaces with a price per hour.
- **Book a Slot** – Users can book an available slot and make payments via Ethereum.
- **Release a Slot** – Users can vacate the slot, and if they leave early, they get a refund.
- **Fair Refunds** – The contract calculates time used and refunds unused time.
- **Decentralized Transactions** – No third-party involvement, making the system cost-effective.

---

## 🔧 Tech Stack

- **Solidity** – Smart contract development
- **Ethereum Blockchain** – Decentralized storage and transactions
- **MetaMask / Web3.js / Ethers.js** – User interaction with the smart contract
- **React.js / Next.js (Optional)** – For building a frontend UI

---

## 📜 License

This project is licensed under the **MIT License** – Feel free to modify and use it for your projects.

---

## 📩 Contact & Contributions

We welcome contributions! If you have suggestions or want to improve the contract, feel free to create a pull request or reach out.
