"""Local regression checks; oversized inputs are sent only to the fixed binary."""
from pathlib import Path
import subprocess

build = Path(__file__).resolve().parents[1] / "build"
cases = [("vulnerable", 5, 0), ("vulnerable", 31, 0),
         ("fixed", 5, 0), ("fixed", 31, 0),
         ("fixed", 32, 2), ("fixed", 64, 2)]
for name, length, expected in cases:
    value = "A" * length
    result = subprocess.run([str(build / name), value], capture_output=True,
                            text=True, timeout=5, check=False)
    print(f"{name}: length={length}, return={result.returncode}")
    if result.returncode != expected:
        raise SystemExit(f"FAIL: expected return code {expected}")
    if expected == 0 and result.stdout != value + "\n":
        raise SystemExit("FAIL: unexpected output")
    if expected == 2 and "Input too long" not in result.stderr:
        raise SystemExit("FAIL: missing rejection message")
print("PASS: all selected cases completed")
