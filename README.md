# Codex Skill Engineering System

该仓库用于构建一套基于 GitHub + Codex 的工程级 Skill 系统，用于算法开发、需求分析、代码生成与版本管理。

---

## 🧠 系统目标

本系统旨在实现：

- 🧩 模块化 Skill 管理（PRD / Design / Code / Review / Git）
- 🧭 流程化开发（需求 → 设计 → 实现 → 审查 → 提交）
- 🌐 GitHub 版本驱动更新
- 🤖 Codex 执行时自动读取 Skill 行为规则
- 🧱 可扩展 Agent 工作流架构

---

## 📁 目录结构
.github/
└── skills/
├── 00_global/ # 全局规则（中文 + 风格约束）
├── 01_router/ # 任务路由分发
├── 02_prd/ # 需求分析（PRD生成）
├── 03_design/ # 架构设计
├── 04_code/ # 代码实现
├── 05_review/ # 代码审查
├── 06_git/ # Git提交与版本管理
└── 07_algorithm_lab/ # 实验性算法研究

---

## 🔁 工作流说明

典型开发流程如下：

```text
用户需求
   ↓
Router Skill（任务识别）
   ↓
PRD Skill（需求结构化）
   ↓
Design Skill（架构设计）
   ↓
Code Skill（分步实现）
   ↓
Review Skill（质量检查）
   ↓
Git Skill（提交与版本记录）
```

🌍 全局规则（Global Skill）

所有 Skill 执行必须遵守：

输出语言：中文
用户称呼：春日
输出结构必须清晰分层
不允许跳过开发流程步骤
复杂任务必须拆解执行

🧩 Skill 设计原则

本系统遵循以下设计原则：

1. 单一职责原则

每个 Skill 只负责一个阶段任务。

2. 流程强约束

必须遵循：

PRD → Design → Code → Review → Git

3. Router 驱动执行

Router Skill 决定当前任务应进入哪个阶段。

4. 可扩展性

支持新增 Skill：

feature skill
model experiment skill
MCP integration skill

⚙️ 使用方式（本地）
1. 克隆仓库
git clone https://github.com/chunriji/alin_skill.git

2. 更新 Skill（手动）
cd .github/skills
git pull

或使用一键同步脚本：
.\sync-skills.ps1

🧪 适用场景
算法设计与实现
多步骤工程任务拆解
LLM Agent 工作流控制
PRD → Code 自动化流程设计
GitHub 驱动开发管理

🚀 未来扩展方向
MCP（Model Context Protocol）集成
自动 Skill Router（无需手动阶段控制）
Codex 自动执行完整工程流程
Skill runtime 热更新机制
多仓库 Skill Registry 管理

⚠️ 注意事项
Skill 修改后必须 git commit + push
本地必须 git pull 才能生效
Codex 不会自动同步 GitHub 更新
Router 决定流程，Global 决定风格
