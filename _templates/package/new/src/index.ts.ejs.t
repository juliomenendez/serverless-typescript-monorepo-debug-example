---
to: packages/<%= h.changeCase.paramCase(name) %>/src/index.ts
---

export function sum(val1: number, val2: number): number {
    return val1 + val2
}