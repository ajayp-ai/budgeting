# Participatory Budgeting Platform

A Ruby on Rails application that enables organizations to run democratic budget allocation processes. Supports:

- Multi-phase budget voting (e.g., Pre-selection → Final Voting → Implementation)
- Category-wise spending limits
- Impact assessment of budget proposals

---


### Multi-Phase Budget Voting
- Define custom phases like Idea Submission, Voting, Implementation
- Automatically transitions based on start_date/end_date
- Phase-specific rules for voting eligibility and logic
- Admin dashboard to monitor progress per phase

### Budget Category Limits
- Set max % allocation for categories (e.g., Infra, Social, Education)
- Validates during voting to prevent overspending
- Visual indicators of category utilization

### Impact Assessment Integration
- Collect metrics: Estimated Beneficiaries, Timeline, Sustainability Score
- Filter and sort proposals by impact
- Admin reports on selected projects’ impact

---

## Tech Stack

- ruby-3.2.6
- Ruby on Rails 7
- PostgreSQL
- Hotwire / Turbo (for dynamic updates)

---

## Setup Instructions

### 1. Clone the repo
```bash


git clone https://github.com/ajayp-ai/budgeting
cd budgeting


bundle install

rails db:create
rails db:migrate

rails s

Visit http://localhost:3000


