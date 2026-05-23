# 🖥️ Simulador de Substituição de Páginas

Um simulador interativo e educacional para algoritmos de substituição de páginas em gerenciamento de memória.

## 📋 Características

### Algoritmos Implementados
- **FIFO (First In First Out)**: Substitui a página que está há mais tempo na memória
- **LRU (Least Recently Used)**: Substitui a página menos recentemente usada
- **OPT (Ótimo/Belády)**: Substitui a página cujo próximo uso ocorrerá mais tarde (algoritmo teórico)
- **RANDOM**: Escolhe uma página aleatória para substituição

### Modos de Operação

#### 🚀 Modo Automático
- Executa todos os 4 algoritmos simultaneamente
- Exibe o número total de falhas de página para cada algoritmo
- Apresenta resultados em cards visuais coloridos
- Permite gerar gráfico comparativo

#### 👆 Modo Manual (FIFO)
- Execução passo a passo do algoritmo FIFO
- Clique em cada página para ver a evolução
- Visualiza estado da memória em tempo real
- Mostra indicador de HIT ou FALTA
- Exibe estatísticas de progresso (faltas e hits)
- Permite resetar e recomeçar

#### 📊 Modo Gráfico
- Gera gráfico de barras comparando falhas de página
- Visualiza diferenças entre algoritmos
- Facilita análise de desempenho

### Validação de Entrada
- Número mínimo de quadros: 1
- Sequência de páginas: números inteiros separados por espaço
- Mensagens de erro claras e informativas
- Notificações de sucesso

## 🚀 Como Usar

### Abrir o Simulador
1. Abra o arquivo `index.html` em qualquer navegador moderno
2. A interface é responsiva e funciona em desktop e mobile

### Passo a Passo

1. **Defina o número de quadros** (memória física)
   - Exemplo: 3, 4, 8, etc.
   - Mínimo: 1

2. **Insira a sequência de páginas**
   - Digite números separados por espaço
   - Exemplo: `7 0 1 2 0 3 0 4`

3. **Escolha um modo:**

   **Modo Automático:**
   - Clique em "🚀 Executar Automático"
   - Veja os resultados de todos os 4 algoritmos
   - Clique em "📊 Gerar Gráfico" para visualizar comparação

   **Modo Manual:**
   - Clique em "👆 Modo Manual (FIFO)"
   - Clique em cada página sequencialmente
   - Observe a evolução do algoritmo
   - Use "🔄 Resetar Manual" para começar novamente

## 💡 Exemplos de Uso

### Exemplo 1: Sequência Clássica
```
Quadros: 3
Sequência: 7 0 1 2 0 3 0 4
```

**Resultados esperados:**
- FIFO: 6 falhas
- LRU: 5 falhas
- OPT: 4 falhas (melhor resultado possível)
- RANDOM: ~5-6 falhas (aleatório)

### Exemplo 2: Sequência com Localidade
```
Quadros: 2
Sequência: 0 0 0 1 1 1 0 0 0 1 1 1
```

### Exemplo 3: Teste com Muitos Quadros
```
Quadros: 5
Sequência: 1 2 3 4 5 1 2 3 4 5
```

## 🎨 Interface

### Componentes

**Seção de Entrada:**
- Campo para número de quadros
- Campo para sequência de páginas
- Três botões principais

**Seção de Resultados:**
- Cards com resultados de cada algoritmo
- Gráfico comparativo interativo
- Modo manual com visualização passo a passo

**Indicadores:**
- ✅ HIT: Página já estava na memória
- ❌ FALTA: Página não estava, houve substituição
- Cores visuais para feedback imediato

## 🔧 Estrutura do Código

### Funções de Algoritmos
```javascript
fifo(seq, quadros)      // FIFO implementation
lru(seq, quadros)       // LRU implementation
opt(seq, quadros)       // OPT implementation
random(seq, quadros)    // RANDOM implementation
```

Cada função retorna:
```javascript
{
    faults: número_de_falhas,
    history: [{page, memory, isFault}, ...]
}
```

### Funções Principais
- `validaEntrada()`: Valida inputs
- `executaAutomatico()`: Executa todos algoritmos
- `iniciaModosManual()`: Inicia modo manual
- `geraGrafico()`: Cria gráfico comparativo

## 📱 Compatibilidade

- Chrome/Chromium ✓
- Firefox ✓
- Safari ✓
- Edge ✓
- Navegadores mobile ✓
- Responsivo (tablet e celular)

## 📊 Dependências

- **Chart.js 3.9.1**: Para gráficos (carregado via CDN)
- **Nenhuma outra dependência externa**

## 🎓 Conceitos Educacionais

### FIFO
- Mais simples de implementar
- Pode sofrer com padrões de acesso desfavoráveis
- Anomalia de Belády possível

### LRU
- Baseado em princípio de localidade temporal
- Bom desempenho em muitos casos
- Caro de implementar em hardware real

### OPT (Ótimo)
- Algoritmo teórico (não implementável na prática)
- Produz menor número possível de falhas
- Útil como limite superior para comparação
- Requer conhecimento do futuro

### RANDOM
- Baseline para comparação
- Desempenho imprevisível
- Às vezes surpreendentemente competitivo

## 🔍 Visualização

### Estado da Memória
- Mostra páginas carregadas em quadros coloridos
- Quadros vazios indicados com "—"
- Animação visual para mudanças

### Gráfico
- Comparação clara entre algoritmos
- Eixo Y: Número de falhas
- Cores distintas para cada algoritmo
- Título com informações da simulação

## 📝 Notas Importantes

1. **RANDOM é aleatório**: Diferentes execuções podem ter resultados diferentes
2. **OPT é teórico**: Não implementável na prática, serve como limite
3. **Sequência válida**: Use apenas números inteiros positivos
4. **Memória mínima**: Pelo menos 1 quadro é necessário

## 🐛 Tratamento de Erros

O simulador valida:
- Número de quadros >= 1
- Sequência de páginas não vazia
- Todos os valores são números válidos
- Exibe mensagens claras em português

## 💻 Como Estender

### Adicionar Novo Algoritmo
1. Crie função `novoAlgoritmo(seq, quadros)`
2. Retorne `{faults, history}`
3. Chame em `executaAutomatico()`
4. Adicione ao gráfico e resultados

### Modificar Estilo
- Altere variáveis CSS no `<style>`
- Cores, tamanhos, e animações personalizáveis

## 📄 Arquivo

- **index.html**: Arquivo único contendo HTML, CSS e JavaScript

## 👥 Informações da Equipe

Este projeto foi desenvolvido como miniprojeto da disciplina **Sistemas Operacionais** do curso **Tecnologia em ADS** do IFSC - Campus São José, sob orientação do Professor **Eraldo Silveira e Silva**.

## 📚 Referências

- Maziero, C. A. (2018). Sistemas Operacionais Modernos
- Stallings, W. (2018). Operating Systems: Internals and Design Principles
- Tanenbaum, A. S. (2009). Structured Computer Organization

---

**Versão**: 1.0  
**Última atualização**: Maio 2026  
**Licença**: MIT

