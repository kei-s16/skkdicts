DICT_PREFIX := SKK-JISYO
DICT_FILES  := $(sort $(wildcard $(DICT_PREFIX)*))

all: check install

check:
	@$(foreach dictfile, $(DICT_FILES), /bin/ls -dF $(dictfile);)

install:
	@$(foreach dictfile, $(DICT_FILES), ln -sfnv $(abspath $(dictfile)) "$(HOME)/.skk/$(dictfile)";)

clean:
	@-$(foreach dictfile, $(DICT_FILES), rm -vrf $(HOME)/.skk/$(dictfile);)
