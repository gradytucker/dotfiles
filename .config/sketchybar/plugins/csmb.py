import time
import hmac
import hashlib
import requests
import json

# Define your CoinSpot API credentials
api_key = b"d87aeebe734d130c950a7e5350442800"
secret = b"KYU27T523T7TV7LHKRWL81WJVTL3VKAJXHKDC27JXU4ZAW5QXF4HYCGEAYLJBD2W8U7W7A59G6PHWTG2"

url = "https://www.coinspot.com.au/api/v2/ro/my/balances"

payload = {
    'nonce': str(int(time.time() * 1000))
}

payload_json = json.dumps(payload, separators=(',', ':'))


sign = hmac.new(secret, payload_json.encode(), hashlib.sha512).hexdigest()

headers = {
    'key': api_key,
    'sign': sign,
}

response = requests.post(url=url, headers=headers, data=payload).json()

balances = response["balances"]

totalBalance = 0;
for item in balances:
        balanceinfo = list(item.values())[0]
        audbalance = balanceinfo['audbalance']
        totalBalance += audbalance

print(str(round(float(totalBalance), 2)))
        