## Lambda H100 Quickstart

This guide configures VoxCPM to run on a Lambda Cloud H100 instance (Ubuntu).

### 1) Provision the instance
- Choose an A100 GPU instance in the Lambda UI.
- Add your SSH key.

### 2) Clone your fork and set up the environment
Replace the URL with your fork.

```bash
git clone <your-fork-url> VoxCPM
cd VoxCPM

./scripts/lambda_h100_setup.sh
```

### 3) Run the web UI
This binds to `0.0.0.0` so you can reach it remotely.

```bash
export GRADIO_SERVER_NAME=0.0.0.0
export GRADIO_SERVER_PORT=7861
./scripts/run_lambda_h100.sh
```

### 4) Access the UI
Safer option (no public exposure):

```bash
ssh -L 7861:localhost:7861 ubuntu@<PUBLIC_IP>
```

Then open `http://localhost:7861` on your local machine.

### Notes
- First run downloads model weights (several GB).
- If you want public access, open the port in your firewall/security group.
