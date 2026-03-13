# Makefile principal para todos os laboratórios
SHELL = /bin/bash
.PHONY: all clean help lab-1 lab-2 lab-3 lab-4 lab-5 lab-6 lab-7 lab-8 lab-9 lab-10 lab-11 lab-12 lab-13 lab-14 lab-15 lab-16

# Cores
GREEN = \033[0;32m
YELLOW = \033[1;33m
RED = \033[0;31m
NC = \033[0m

# Lista completa
LAB1 = "lab 1"
LAB2 = "lab 2"
LAB3 = "lab 3"
LAB4 = "lab 4"
LAB5 = "lab 5"
LAB6 = "lab 6"
LAB7 = "lab 7"
LAB8 = "lab 8"
LAB9 = "lab 9"
LAB10 = "lab 10"
LAB11 = "lab 11"
LAB12 = "lab 12"
LAB13 = "lab 13"
LAB14 = "lab 14"
LAB15 = "lab 15"
LAB16 = "lab 16"

# Gerar todos
all: lab-1 lab-2 lab-3 lab-4 lab-5 lab-6 lab-7 lab-8 lab-9 lab-10 lab-11 lab-12 lab-13 lab-14 lab-15 lab-16
	@echo "$(GREEN)✅ TODOS os relatórios gerados com sucesso!$(NC)"

# Regras individuais
lab-1:
	@echo "$(YELLOW)📄 Gerando lab 1...$(NC)"
	@$(MAKE) -C "lab 1" all

lab-2:
	@echo "$(YELLOW)📄 Gerando lab 2...$(NC)"
	@$(MAKE) -C "lab 2" all

lab-3:
	@echo "$(YELLOW)📄 Gerando lab 3...$(NC)"
	@$(MAKE) -C "lab 3" all

lab-4:
	@echo "$(YELLOW)📄 Gerando lab 4...$(NC)"
	@$(MAKE) -C "lab 4" all

lab-5:
	@echo "$(YELLOW)📄 Gerando lab 5...$(NC)"
	@$(MAKE) -C "lab 5" all

lab-6:
	@echo "$(YELLOW)📄 Gerando lab 6...$(NC)"
	@$(MAKE) -C "lab 6" all

lab-7:
	@echo "$(YELLOW)📄 Gerando lab 7...$(NC)"
	@$(MAKE) -C "lab 7" all

lab-8:
	@echo "$(YELLOW)📄 Gerando lab 8...$(NC)"
	@$(MAKE) -C "lab 8" all

lab-9:
	@echo "$(YELLOW)📄 Gerando lab 9...$(NC)"
	@$(MAKE) -C "lab 9" all

lab-10:
	@echo "$(YELLOW)📄 Gerando lab 10...$(NC)"
	@$(MAKE) -C "lab 10" all

lab-11:
	@echo "$(YELLOW)📄 Gerando lab 11...$(NC)"
	@$(MAKE) -C "lab 11" all

lab-12:
	@echo "$(YELLOW)📄 Gerando lab 12...$(NC)"
	@$(MAKE) -C "lab 12" all

lab-13:
	@echo "$(YELLOW)📄 Gerando lab 13...$(NC)"
	@$(MAKE) -C "lab 13" all

lab-14:
	@echo "$(YELLOW)📄 Gerando lab 14...$(NC)"
	@$(MAKE) -C "lab 14" all

lab-15:
	@echo "$(YELLOW)📄 Gerando lab 15...$(NC)"
	@$(MAKE) -C "lab 15" all

lab-16:
	@echo "$(YELLOW)📄 Gerando lab 16...$(NC)"
	@$(MAKE) -C "lab 16" all

# Limpar todos
clean:
	@for i in {1..16}; do \
		echo "$(YELLOW)🧹 Limpando lab $$i...$(NC)"; \
		$(MAKE) -C "lab $$i" clean 2>/dev/null || true; \
	done
	@echo "$(GREEN)✅ Todos os laboratórios limpos!$(NC)"

# Ajuda
help:
	@echo "$(YELLOW)📋 Comandos disponíveis:$(NC)"
	@echo "  make all        - Gerar TODOS os 16 laboratórios"
	@echo "  make lab-1      - Gerar apenas laboratório 1"
	@echo "  make lab-2      - Gerar apenas laboratório 2"
	@echo "  ..."
	@echo "  make lab-16     - Gerar apenas laboratório 16"
	@echo "  make clean      - Limpar todos os arquivos gerados"
