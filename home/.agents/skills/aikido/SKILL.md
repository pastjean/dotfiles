---
name: aikido-security
description: Enforce mandatory Aikido security scanning for all first-party code changes. Use whenever code is written or changed.
license: MIT
compatibility: pi with pi-mcp-extension
metadata:
  audience: developers
  security: aikido
---

## Purpose

Ensure that all first-party code is scanned for security issues whenever code is written or changed.

## Rules

- Always run **mcp_aikido_aikido_full_scan** on all newly written, generated, added, or modified first-party code.
- Always provide the complete file contents to the scanner.
- If any security issues are reported, apply the fixes using the remediation guidance from Aikido.
- Run **mcp_aikido_aikido_full_scan** again after fixes to confirm that no issues remain and no new ones were introduced.
- Repeat the fix and rescan cycle until the scan passes with zero issues.
- If the Aikido MCP server is not installed or not running, inform the user to install it using the official setup guide at https://help.aikido.dev/ai-and-dev-tools/aikido-mcp/opencode-mcp.
