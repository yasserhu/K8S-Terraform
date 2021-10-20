terraform {
	backend "azurerm" {
		storage_account_name = "cgstfstate"
		container_name = "tfstate"
		key = "cgsksademo/prod.terraform.tfstate"
		access_key = "eQbhdoRacPRLL7D74cbmEfWRtNjP1B73zrD8FXd1oBV0CZFl4E1JPr3d7ewttFcKwB1OvAIGM4b8g+AJSC7dBQ=="
	}
}