# Makefile para laboratório
PANDOC = pandoc
PDF_ENGINE = wkhtmltopdf
SOURCES = relatorio.md

PDF_TARGET = relatorio.pdf
DOCX_TARGET = relatorio.docx

GREEN = \033[0;32m
YELLOW = \033[1;33m
RED = \033[0;31m
NC = \033[0m

.PHONY: all pdf word clean

all: pdf word
	@echo "$(GREEN)✅ Relatório gerado em $(shell pwd)!$(NC)"

pdf: $(SOURCES)
	@echo "$(YELLOW)📄 Gerando PDF...$(NC)"
	$(PANDOC) $(SOURCES) -o $(PDF_TARGET) --pdf-engine=$(PDF_ENGINE) || \
		echo "$(RED)❌ Erro ao gerar PDF. Verifique se o arquivo relatorio.md existe$(NC)"
	@echo "$(GREEN)✅ PDF gerado: $(PDF_TARGET)$(NC)"

word: $(SOURCES)
	@echo "$(YELLOW)📄 Gerando Word...$(NC)"
	$(PANDOC) $(SOURCES) -o $(DOCX_TARGET) || \
		echo "$(RED)❌ Erro ao gerar Word. Verifique se o arquivo relatorio.md existe$(NC)"
	@echo "$(GREEN)✅ Word gerado: $(DOCX_TARGET)$(NC)"

clean:
	@rm -f $(PDF_TARGET) $(DOCX_TARGET)
	@echo "$(GREEN)🧹 Limpeza concluída em $(shell pwd)!$(NC)"
