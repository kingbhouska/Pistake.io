<!DOCTYPE html>
<index.html>
<html>
<head>
  <title>Pi Staking Platform</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: #0f172a;
      color: white;
    }

    header {
      display: flex;
      justify-content: space-between;
      padding: 20px 40px;
      background: #111827;
      align-items: center;
    }

    .logo {
      font-weight: bold;
      font-size: 20px;
      color: #fbbf24;
    }

    .wallet-btn {
      background: #fbbf24;
      border: none;
      padding: 10px 15px;
      border-radius: 8px;
      cursor: pointer;
      font-weight: bold;
    }

    .demo-banner {
      background: red;
      text-align: center;
      padding: 10px;
      font-weight: bold;
    }

    .container {
      max-width: 900px;
      margin: auto;
      padding: 40px 20px;
    }

    .card {
      background: #1e293b;
      padding: 30px;
      border-radius: 15px;
      margin-bottom: 30px;
      box-shadow: 0 0 15px rgba(0,0,0,0.4);
    }

    h2 {
      color: #fbbf24;
    }

    select, input {
      padding: 10px;
      border-radius: 8px;
      border: none;
      margin-top: 10px;
      width: 100%;
    }

    button.action {
      margin-top: 15px;
      padding: 10px;
      background: #fbbf24;
      border: none;
      border-radius: 8px;
      font-weight: bold;
      cursor: pointer;
      width: 100%;
    }

    .value {
      font-size: 20px;
      margin-top: 10px;
    }
  </style>
</head>

<body>

<div class="demo-banner">
  ⚠ DEMO PLATFORM ONLY – NO REAL PI STAKING
</div>

<header>
  <div class="logo">PiStake</div>
  <button class="wallet-btn" onclick="connectWallet()">Connect Wallet</button>
</header>

<div class="container">

  <!-- Dashboard -->
  <div class="card">
    <h2>Dashboard</h2>
    <div class="value">Account: Kingsley (Demo)</div>
    <div class="value">Staked Amount: 1,060 PI</div>
    <div class="value">APR: 12%</div>
    <div class="value">Live Profit: <span id="profit">0.00</span> PI</div>
  </div>

  <!-- Staking Options -->
  <div class="card">
    <h2>Stake PI</h2>

    <label>Choose Lock Period:</label>
    <select id="lockPeriod">
      <option value="30">30 Days - 8% APR</option>
      <option value="90">90 Days - 12% APR</option>
      <option value="180">180 Days - 18% APR</option>
    </select>

    <label>Amount to Stake (PI):</label>
    <input type="number" id="stakeAmount" placeholder="Enter amount">

    <button class="action" onclick="calculateROI()">Calculate Estimated ROI</button>

    <div class="value" id="roiResult"></div>
  </div>

</div>

<script>
  let profit = 0;

  // Simulated Live Profit Counter
  setInterval(() => {
    profit += 0.03;
    document.getElementById("profit").innerText = profit.toFixed(2);
  }, 1000);

  // Fake Wallet Connect (UI Only)
  function connectWallet() {
    alert("Demo Wallet Connected Successfully!");
  }

  // ROI Calculator
  function calculateROI() {
    const amount = parseFloat(document.getElementById("stakeAmount").value);
    const period = document.getElementById("lockPeriod").value;

    if (!amount) {
      alert("Enter staking amount");
      return;
    }

    let apr;

    if (period == 30) apr = 0.08;
    if (period == 90) apr = 0.12;
    if (period == 180) apr = 0.18;

    const reward = amount * apr;
    const total = amount + reward;

    document.getElementById("roiResult").innerHTML =
      `Estimated Reward: ${reward.toFixed(2)} PI<br>
       Total After Lock: ${total.toFixed(2)} PI`;
  }
</script>

</body>
</html>
