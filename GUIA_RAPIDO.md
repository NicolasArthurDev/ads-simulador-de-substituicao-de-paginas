# 🚀 Guia Rápido - Simulador de Substituição de Páginas

## ⚡ Início Rápido

### 1. Abrir o Simulador
```
1. Localize o arquivo 'index.html'
2. Clique duplo ou abra com um navegador (Chrome, Firefox, Safari, etc.)
```

### 2. Exemplo Básico
```
Quadros: 3
Sequência: 7 0 1 2 0 3 0 4

Resultado esperado:
- FIFO: 6 falhas
- LRU: 5 falhas
- OPT: 4 falhas
```

## 🎯 Os 3 Modos Principais

### Modo 1: 🚀 Automático (Recomendado para Comparação)
```
1. Digite número de quadros
2. Digite sequência de páginas
3. Clique "Executar Automático"
4. Veja resultados de todos os algoritmos
5. Clique "Gerar Gráfico" para visualizar
```

### Modo 2: 👆 Manual (Recomendado para Aprendizado)
```
1. Digite número de quadros
2. Digite sequência de páginas
3. Clique "Modo Manual (FIFO)"
4. Clique em cada página sequencialmente
5. Observe estado da memória
6. Use "Resetar Manual" para recomeçar
```

### Modo 3: 📊 Gráfico (Recomendado para Apresentação)
```
1. Execute o Modo Automático
2. Clique "Gerar Gráfico"
3. Gráfico de barras compara os algoritmos
4. Captura de tela para slides/relatório
```

## 📚 Algoritmos Resumo

| Algoritmo | O quê substitui? | Desempenho | Implementável? |
|-----------|-----------------|-----------|----------------|
| **FIFO** | Página mais antiga | Ruim em alguns casos | Sim |
| **LRU** | Menos recentemente usada | Bom | Sim (caro) |
| **OPT** | Usada mais tarde | Ótimo | Não (requer futuro) |
| **RANDOM** | Aleatória | Pior caso | Sim |

## 🎮 Controles

### Inputs
- **Número de Quadros**: Campo numérico (min: 1)
- **Sequência**: Números separados por espaço (ex: 1 2 3 4)

### Botões
- **Automático**: Executa todos os 4 algoritmos
- **Manual**: Modo interativo FIFO passo-a-passo
- **Gráfico**: Visualização comparativa
- **Resetar**: Recomeça modo manual

### Manual Mode
- Clique nos números para avançar
- Cor verde = processado
- Cor azul = próximo
- Observe hits/faults em tempo real

## 💡 Dicas de Uso

### Para Aprender
```
1. Use Modo Manual com sequência pequena (5-8 páginas)
2. Observe como cada hit/falta acontece
3. Entenda a lógica do FIFO antes de comparar
```

### Para Comparar
```
1. Use Modo Automático com vários tamanhos de memória
2. Observe como OPT é sempre melhor ou igual
3. Veja como LRU geralmente fica entre FIFO e OPT
4. Note que RANDOM é imprevisível
```

### Para Apresentação
```
1. Use Modo Manual com projetor (mais visual)
2. Gere gráficos para slides
3. Use sequência do livro para validação
```

## 🔢 Sequências de Exemplo

### Exemplo 1: Fácil (Pouca Reação)
```
Quadros: 3
Sequência: 1 1 2 2 3 3
Resultado: 3 falhas (todos iguais)
```

### Exemplo 2: Médio (Diferenças Aparecem)
```
Quadros: 3
Sequência: 1 2 3 1 2 3 1 2 3
Resultado: FIFO=3, LRU=3, OPT=3
```

### Exemplo 3: Clássico (Grandes Diferenças)
```
Quadros: 3
Sequência: 7 0 1 2 0 3 0 4
Resultado: FIFO=6, LRU=5, OPT=4
```

### Exemplo 4: Pior Caso FIFO
```
Quadros: 3
Sequência: 1 2 3 4 1 2 3 4 1 2 3 4
Resultado: FIFO=9, LRU=10, OPT=4
```

## ⚠️ Validação

### Erros Comuns
```
❌ "O número de quadros deve ser pelo menos 1"
   → Digite um número >= 1

❌ "Por favor, insira uma sequência de páginas"
   → Não deixe sequência vazia

❌ "A sequência de páginas inválida"
   → Use APENAS números separados por espaço
   → Exemplo correto: 1 2 3 4
   → Exemplo errado: 1, 2, 3, 4 (vírgulas)
```

## 🎨 Cores e Significados

- 🔵 **Azul FIFO**: First-In First-Out
- 🟣 **Roxo LRU**: Least Recently Used
- 🩷 **Rosa OPT**: Ótimo/Belády
- 🔷 **Azul Claro RANDOM**: Aleatório
- 🟢 **Verde HIT**: Página já em memória
- 🔴 **Vermelho FALTA**: Página não em memória, substituição

## 📊 Interpretando Resultados

### Expectativas
- **OPT <= LRU <= FIFO**: OPT é melhor ou igual sempre
- **RANDOM**: Imprede (muda a cada execução)
- **Diferença aumenta**: Com mais acesso à memória vs quadros

### Análise
```
Se FIFO == OPT → Sequência favorável, pouca substituição
Se LRU >> OPT → Sequência desfavorável para LRU
Se RANDOM << FIFO → Muita sorte! (pode variar)
```

## 🔧 Troubleshooting

### Não carrega?
- Atualize a página (F5)
- Use navegador moderno (Chrome, Firefox, Safari, Edge)
- Verifique conexão (precisa baixar Chart.js)

### Gráfico não aparece?
- Execute modo automático primeiro
- Espere Chart.js carregar
- Se ainda não funcionar, reconecte-se

### Modo manual lento?
- É normal em sequências grandes
- Use sequências <= 20 páginas para melhor experiência

## 📱 Mobile

- ✅ Funciona em tablets
- ✅ Funciona em celulares
- ⚠️ Modo manual melhor em tela maior
- ⚠️ Gráfico fica vertical em celular

## 🎓 Próximos Passos

1. **Entenda**: FIFO, LRU, OPT, RANDOM
2. **Experimente**: Diferentes sequências e tamanhos
3. **Analise**: Por que um é melhor que outro
4. **Crie**: Seu próprio exemplo didático
5. **Apresente**: Seu aprendizado aos colegas

## 📞 Suporte

Se tiver problemas:
1. Veja `README.md` para documentação completa
2. Veja `IMPLEMENTACAO.md` para detalhes técnicos
3. Verifique se arquivos estão no mesmo diretório
4. Teste em navegador diferente

---

**Dica Ouro**: Use Modo Manual com projetor em sala para ensinar. Use Modo Automático para pesquisa. Use Gráfico para apresentação!

