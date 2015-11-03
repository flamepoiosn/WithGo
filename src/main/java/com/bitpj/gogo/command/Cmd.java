package com.bitpj.gogo.command;

import org.springframework.ui.Model;

public interface Cmd {
	public int execute(Model model);
}
