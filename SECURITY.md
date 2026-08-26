# Security Policy

I do vulnerability research and bug bounty for a living, so I know what a good
disclosure experience looks like from the reporter's side, and what a bad one
feels like. You'll get the good kind here.

## Reporting a vulnerability

**Preferred:** [GitHub Private Vulnerability Reporting](https://github.com/sw33tLie/macshot/security/advisories/new).
It's private and structured, and we can work on the fix together in a private fork.

**Also fine:** DM me on X at [x.com/sw33tLie](https://x.com/sw33tLie). Good for a
heads-up or if you can't use GitHub. Please don't put PoCs or exploit details in
public issues, and don't test against infrastructure you don't own.

I aim to respond within 48 hours, usually much faster. High/Critical issues get a
fix or a concrete plan within days, not weeks, and fixes reach users quickly via
Sparkle auto-update.

## Out of scope

Auto-redact regex misses (best-effort, documented as such), issues
requiring a compromised machine or physical access, vulnerabilities in Sparkle/
macOS/dependencies themselves (report upstream, but tell me so I can ship the
bumped version), and DoS of the app's UI.

## Supported versions

Only the latest release of each variant (normal and Offline). Sparkle keeps
almost everyone current within days.

## Credit

No paid bounty (this is a free GPLv3 project), but you'll get credited in the
release notes, CHANGELOG, and the GitHub advisory unless you'd rather stay
anonymous.
