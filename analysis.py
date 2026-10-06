import csv
from collections import defaultdict

with open("sales_transactions.csv", newline="") as f:
    rows = list(csv.DictReader(f))

revenue = sum(float(r["Revenue"]) for r in rows)
profit = sum(float(r["Profit"]) for r in rows)

print(f"Transactions: {len(rows):,}")
print(f"Revenue: ${revenue:,.2f}")
print(f"Profit: ${profit:,.2f}")
print(f"Profit margin: {profit/revenue:.2%}")

by_region = defaultdict(lambda: [0.0, 0.0])
by_product = defaultdict(lambda: [0.0, 0.0])
by_discount = defaultdict(lambda: [0.0, 0.0, 0])

for r in rows:
    rev, prof = float(r["Revenue"]), float(r["Profit"])
    by_region[r["Region"]][0] += rev
    by_region[r["Region"]][1] += prof
    by_product[r["Product"]][0] += rev
    by_product[r["Product"]][1] += prof
    d = float(r["Discount"])
    by_discount[d][0] += rev
    by_discount[d][1] += prof
    by_discount[d][2] += 1

print("\nRegional performance:")
for region, (rev, prof) in sorted(by_region.items(), key=lambda x: x[1][0], reverse=True):
    print(f"{region:10} revenue=${rev:,.0f} profit=${prof:,.0f} margin={prof/rev:.2%}")

print("\nTop products by profit:")
for product, (rev, prof) in sorted(by_product.items(), key=lambda x: x[1][1], reverse=True)[:5]:
    print(f"{product:28} revenue=${rev:,.0f} profit=${prof:,.0f}")

print("\nDiscount analysis:")
for d, (rev, prof, n) in sorted(by_discount.items()):
    print(f"{d:.0%}: {n:,} transactions, margin={prof/rev:.2%}")
