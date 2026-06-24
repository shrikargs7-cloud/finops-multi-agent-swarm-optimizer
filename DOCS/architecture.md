# Multi-Agent Swarm System Architecture

This document provides a deep technical breakdown of the data schemas, node transitions,
and communication mechanics defining the FinOps Multi-Agent Swarm Optimizer.

## 🏗️ Topology & Topology Diagram
The system is constructed as an asynchronous, directed acyclic graph (DAG) 
utilizing stateful sequential routing combined with a synchronization checkpoint (Human-in-the-Loop gate).

[Input Workspace]
│
▼ (State: Raw HCL/YAML Manifest)
[Agent 1: Cost & Latency Auditor]
│
▼ (State: Structured Analysis Table)
[Agent 2: Infrastructure Engineer]
│
▼ (State: Drafted Implementation Code Blocks)
[HITL Interception Gate] ─── (State Paused for Manual Sign-off)
│
▼ (State: User-Authorized Output Vector)
[Agent 3: Compliance & Security Officer]
│
▼ (State: Signed Release Artifact)
[Final Output]

## 🧠 State Mechanics & Communication Layers
Instead of stateless individual completions, the execution environment passes an aggregated context array downstream:

1. **State Injection (`Input $\rightarrow$ Agent 1`):** Raw unparsed infrastructure files are contextualized. 
2. **Context Enrichment (`Agent 1 $\rightarrow$ Agent 2`):** Agent 1 utilizes the native execution platform **Calculator Tool** to benchmark cost anomalies.
 It appends a structured summary matrix to the context layer.
3. **Synthesis & Mutation (`Agent 2 $\rightarrow$ HITL`):** Agent 2 extracts the vulnerability metrics from the context layer and matches them against pre-saved patterns fetched via the **"Walk a bug from..." Engineering Skill** to mutate the infrastructure parameters safely.

## 🛑 Guardrails & Safety Parameters
* **Model Control:** Agent 1 and Agent 3 are locked down to a `0.0` - `0.1` temperature configuration to eliminate
*  structural variance or prompt hallucinations when evaluating system errors.
* **Deterministic Filtering:** Hard PII filtering is enforced server-side across incoming payloads to shield corporate access identifiers, cloud keys, or target IP na
* mespaces from ingestion vectors.
