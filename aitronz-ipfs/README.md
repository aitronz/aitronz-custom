# IPFS Kubo for Umbrel

Run your own IPFS node on Umbrel for decentralized file storage and content sharing.

## Features

- Full IPFS node with P2P networking
- HTTP Gateway for serving content (`http://umbrel-ip:8080/ipfs/<cid>`)
- WebUI for node management (`http://umbrel-ip:5001/webui`)
- RPC API for programmatic access
- Persistent data storage across app restarts

## Ports

| Port | Protocol | Description |
|------|----------|-------------|
| 4001 | TCP/UDP  | P2P transports (QUIC/TCP) - connects to IPFS network |
| 5001 | HTTP     | RPC API - for programmatic node control and WebUI |
| 8080 | HTTP     | Gateway - serves IPFS content via HTTP |

## Usage

Access the IPFS Gateway in your browser at `http://<umbrel-ip>:8080/ipfs/<cid>`.

To access the WebUI, visit `http://<umbrel-ip>:5001/webui`.

### Adding Files

Copy files to `/export` directory in the container, or use the WebUI to upload files directly.

### Accessing via CLI

```bash
# From within Umbrel
docker exec aitronz-ipfs-ipfs ipfs <command>
```

## Configuration

The app uses the `server` profile by default for optimal performance on dedicated hardware.

Environment variables in `.env`:
- `IPFS_PROFILE=server` - Server profile optimized for dedicated IPFS nodes
- `GOMAXPROCS` - CPU limit (optional)
- `GOMEMLIMIT` - Memory limit (optional)

## Resources

- [IPFS Documentation](https://docs.ipfs.tech/)
- [Kubo GitHub](https://github.com/ipfs/kubo)
- [Docker Hub](https://hub.docker.com/r/ipfs/kubo)