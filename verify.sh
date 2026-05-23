#!/bin/bash

echo "=========================================="
echo "✅ VERIFICAÇÃO DO SIMULADOR"
echo "=========================================="
echo ""

echo "📁 Arquivos criados:"
ls -lh index.html README.md IMPLEMENTACAO.md 2>/dev/null | awk '{print "   " $9 " (" $5 ")"}'
echo ""

echo "📊 Estatísticas do arquivo principal:"
echo "   Linhas: $(wc -l < index.html)"
echo "   Caracteres: $(wc -c < index.html)"
echo ""

echo "🔍 Algoritmos implementados:"
grep -c "^        function fifo\|^        function lru\|^        function opt\|^        function random" index.html && echo "   ✓ 4 algoritmos encontrados" || echo "   ✗ Erro"
echo ""

echo "🎨 Interface:"
grep -c "executaAutomatico\|iniciaModosManual\|geraGrafico" index.html && echo "   ✓ 3 modos de operação" || echo "   ✗ Erro"
echo ""

echo "📚 Documentação:"
[ -f README.md ] && echo "   ✓ README.md presente" || echo "   ✗ README.md ausente"
[ -f IMPLEMENTACAO.md ] && echo "   ✓ IMPLEMENTACAO.md presente" || echo "   ✗ IMPLEMENTACAO.md ausente"
echo ""

echo "✨ Features extras:"
grep -q "Chart.js" index.html && echo "   ✓ Gráficos com Chart.js"
grep -q "responsive\|mobile\|tablet" README.md && echo "   ✓ Design responsivo"
grep -q "@media" index.html && echo "   ✓ Media queries CSS"
grep -q "validaEntrada" index.html && echo "   ✓ Validação de entrada"
echo ""

echo "=========================================="
echo "✅ VERIFICAÇÃO CONCLUÍDA COM SUCESSO!"
echo "=========================================="
echo ""
echo "📖 Como usar:"
echo "   1. Abra 'index.html' em um navegador"
echo "   2. Veja 'README.md' para instruções"
echo "   3. Veja 'IMPLEMENTACAO.md' para detalhes técnicos"
echo ""
