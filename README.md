
# UI Insta (Flutter) — meu clone

Clone **não-oficial** da interface do Instagram, feito por mim pra **estudo** e **portfólio**.  
Tô focando em **arquitetura mais clean (feature-first)**, usando **IndexedStack** pra navegação e umas boas práticas de UI que tô aprendendo no caminho.

> ⚠️ Projeto 100% independente, sem afiliação com Instagram/Meta. Marcas e nomes citados são dos seus donos.

---

## ✨ Features (o que já tem)
- Navegação com **IndexedStack** (mantém estado das abas — nada de resetar toda hora)
- **Theme** dark centralizado (menos `color:` hardcoded perdido pelo code)
- **Stories** em carrossel horizontal
- **Post cards** (header com avatar + menu, imagem 1:1, ações, legenda, time)
- Estrutura **feature-first**: `navigation`, `home`, `stories`, `core/theme`

---

## 🧱 Stack
- Flutter (Material 3)
- Dart
- Lints (`flutter_lints`) apontando: `prefer_const_*`, `avoid_unnecessary_containers`, etc.

