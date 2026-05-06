# thread-algo-search-lab

`thread-algo-search-lab` keeps a focused OCaml implementation around algorithms. The project goal is to package an OCaml local lab for search analysis with capacity fixtures, allocation and spill reports, and documented operating limits.

## Purpose

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Thread Algo Search Lab Review Notes

`recovery` and `edge` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/thread-algo-search-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `complexity` and `boundary pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The OCaml implementation avoids hidden state so fixture changes are easy to reason about.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 241, which lands in `ship`. The most cautious case is `edge` at 133, which lands in `watch`.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
