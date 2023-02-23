# __Creating env for demo using RISE and Jupyter__

## __Install conda__


```bash
conda create -n demo_env python=3.8 -y
conda activate demo_env
pip install -r requirements.txt
conda deactivate
```

## __Build docker image__

```bash
docker build -t demo_env .
docker run -p 8888:8888 demo_env
```
