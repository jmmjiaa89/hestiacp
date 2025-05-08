#!/bin/bash
set -e

# 设置 root 密码
echo "root:Qq3758246..com" | chpasswd

# 启用 SSH 服务 (如果尚未启用)
systemctl enable ssh
systemctl start ssh

# 可选: 配置防火墙以允许 SSH (如果尚未配置)
# 注意: 这假设你使用的是 ufw 防火墙。你需要根据你的防火墙配置进行调整。
if command -v ufw &> /dev/null; then
  ufw allow ssh
fi

echo "Ubuntu 实例已启动，SSH 服务已启用，root 密码已设置为 Qq3758246..com。请务必尽快更改密码！"
