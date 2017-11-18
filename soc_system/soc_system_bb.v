
module soc_system (
	clk_clk,
	hps_0_f2h_boot_from_fpga_boot_from_fpga_ready,
	hps_0_f2h_boot_from_fpga_boot_from_fpga_on_failure,
	hps_0_f2h_cold_reset_req_reset_n,
	hps_0_f2h_debug_reset_req_reset_n,
	hps_0_f2h_warm_reset_req_reset_n,
	hps_ddr3_mem_a,
	hps_ddr3_mem_ba,
	hps_ddr3_mem_ck,
	hps_ddr3_mem_ck_n,
	hps_ddr3_mem_cke,
	hps_ddr3_mem_cs_n,
	hps_ddr3_mem_ras_n,
	hps_ddr3_mem_cas_n,
	hps_ddr3_mem_we_n,
	hps_ddr3_mem_reset_n,
	hps_ddr3_mem_dq,
	hps_ddr3_mem_dqs,
	hps_ddr3_mem_dqs_n,
	hps_ddr3_mem_odt,
	hps_ddr3_mem_dm,
	hps_ddr3_oct_rzqin,
	hps_io_hps_io_emac1_inst_TX_CLK,
	hps_io_hps_io_emac1_inst_TXD0,
	hps_io_hps_io_emac1_inst_TXD1,
	hps_io_hps_io_emac1_inst_TXD2,
	hps_io_hps_io_emac1_inst_TXD3,
	hps_io_hps_io_emac1_inst_RXD0,
	hps_io_hps_io_emac1_inst_MDIO,
	hps_io_hps_io_emac1_inst_MDC,
	hps_io_hps_io_emac1_inst_RX_CTL,
	hps_io_hps_io_emac1_inst_TX_CTL,
	hps_io_hps_io_emac1_inst_RX_CLK,
	hps_io_hps_io_emac1_inst_RXD1,
	hps_io_hps_io_emac1_inst_RXD2,
	hps_io_hps_io_emac1_inst_RXD3,
	hps_io_hps_io_qspi_inst_IO0,
	hps_io_hps_io_qspi_inst_IO1,
	hps_io_hps_io_qspi_inst_IO2,
	hps_io_hps_io_qspi_inst_IO3,
	hps_io_hps_io_qspi_inst_SS0,
	hps_io_hps_io_qspi_inst_CLK,
	hps_io_hps_io_sdio_inst_CMD,
	hps_io_hps_io_sdio_inst_D0,
	hps_io_hps_io_sdio_inst_D1,
	hps_io_hps_io_sdio_inst_CLK,
	hps_io_hps_io_sdio_inst_D2,
	hps_io_hps_io_sdio_inst_D3,
	hps_io_hps_io_usb1_inst_D0,
	hps_io_hps_io_usb1_inst_D1,
	hps_io_hps_io_usb1_inst_D2,
	hps_io_hps_io_usb1_inst_D3,
	hps_io_hps_io_usb1_inst_D4,
	hps_io_hps_io_usb1_inst_D5,
	hps_io_hps_io_usb1_inst_D6,
	hps_io_hps_io_usb1_inst_D7,
	hps_io_hps_io_usb1_inst_CLK,
	hps_io_hps_io_usb1_inst_STP,
	hps_io_hps_io_usb1_inst_DIR,
	hps_io_hps_io_usb1_inst_NXT,
	hps_io_hps_io_spim0_inst_CLK,
	hps_io_hps_io_spim0_inst_MOSI,
	hps_io_hps_io_spim0_inst_MISO,
	hps_io_hps_io_spim0_inst_SS0,
	hps_io_hps_io_spim1_inst_CLK,
	hps_io_hps_io_spim1_inst_MOSI,
	hps_io_hps_io_spim1_inst_MISO,
	hps_io_hps_io_spim1_inst_SS0,
	hps_io_hps_io_uart0_inst_RX,
	hps_io_hps_io_uart0_inst_TX,
	hps_io_hps_io_i2c1_inst_SDA,
	hps_io_hps_io_i2c1_inst_SCL,
	hps_io_hps_io_gpio_inst_HLGPI0,
	hps_io_hps_io_gpio_inst_HLGPI1,
	hps_io_hps_io_gpio_inst_HLGPI2,
	hps_io_hps_io_gpio_inst_HLGPI3,
	hps_io_hps_io_gpio_inst_HLGPI4,
	hps_io_hps_io_gpio_inst_HLGPI5,
	hps_io_hps_io_gpio_inst_HLGPI6,
	hps_io_hps_io_gpio_inst_HLGPI7,
	hps_io_hps_io_gpio_inst_HLGPI8,
	hps_io_hps_io_gpio_inst_HLGPI9,
	hps_io_hps_io_gpio_inst_HLGPI10,
	hps_io_hps_io_gpio_inst_HLGPI11,
	hps_io_hps_io_gpio_inst_HLGPI12,
	hps_io_hps_io_gpio_inst_HLGPI13,
	hps_io_hps_io_gpio_inst_GPIO00,
	hps_io_hps_io_gpio_inst_GPIO09,
	hps_io_hps_io_gpio_inst_GPIO35,
	hps_io_hps_io_gpio_inst_GPIO40,
	hps_io_hps_io_gpio_inst_GPIO48,
	hps_io_hps_io_gpio_inst_GPIO53,
	hps_io_hps_io_gpio_inst_GPIO54,
	hps_io_hps_io_gpio_inst_GPIO55,
	hps_io_hps_io_gpio_inst_GPIO56,
	hps_io_hps_io_gpio_inst_GPIO61);	

	input		clk_clk;
	input		hps_0_f2h_boot_from_fpga_boot_from_fpga_ready;
	input		hps_0_f2h_boot_from_fpga_boot_from_fpga_on_failure;
	input		hps_0_f2h_cold_reset_req_reset_n;
	input		hps_0_f2h_debug_reset_req_reset_n;
	input		hps_0_f2h_warm_reset_req_reset_n;
	output	[14:0]	hps_ddr3_mem_a;
	output	[2:0]	hps_ddr3_mem_ba;
	output		hps_ddr3_mem_ck;
	output		hps_ddr3_mem_ck_n;
	output		hps_ddr3_mem_cke;
	output		hps_ddr3_mem_cs_n;
	output		hps_ddr3_mem_ras_n;
	output		hps_ddr3_mem_cas_n;
	output		hps_ddr3_mem_we_n;
	output		hps_ddr3_mem_reset_n;
	inout	[31:0]	hps_ddr3_mem_dq;
	inout	[3:0]	hps_ddr3_mem_dqs;
	inout	[3:0]	hps_ddr3_mem_dqs_n;
	output		hps_ddr3_mem_odt;
	output	[3:0]	hps_ddr3_mem_dm;
	input		hps_ddr3_oct_rzqin;
	output		hps_io_hps_io_emac1_inst_TX_CLK;
	output		hps_io_hps_io_emac1_inst_TXD0;
	output		hps_io_hps_io_emac1_inst_TXD1;
	output		hps_io_hps_io_emac1_inst_TXD2;
	output		hps_io_hps_io_emac1_inst_TXD3;
	input		hps_io_hps_io_emac1_inst_RXD0;
	inout		hps_io_hps_io_emac1_inst_MDIO;
	output		hps_io_hps_io_emac1_inst_MDC;
	input		hps_io_hps_io_emac1_inst_RX_CTL;
	output		hps_io_hps_io_emac1_inst_TX_CTL;
	input		hps_io_hps_io_emac1_inst_RX_CLK;
	input		hps_io_hps_io_emac1_inst_RXD1;
	input		hps_io_hps_io_emac1_inst_RXD2;
	input		hps_io_hps_io_emac1_inst_RXD3;
	inout		hps_io_hps_io_qspi_inst_IO0;
	inout		hps_io_hps_io_qspi_inst_IO1;
	inout		hps_io_hps_io_qspi_inst_IO2;
	inout		hps_io_hps_io_qspi_inst_IO3;
	output		hps_io_hps_io_qspi_inst_SS0;
	output		hps_io_hps_io_qspi_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_CMD;
	inout		hps_io_hps_io_sdio_inst_D0;
	inout		hps_io_hps_io_sdio_inst_D1;
	output		hps_io_hps_io_sdio_inst_CLK;
	inout		hps_io_hps_io_sdio_inst_D2;
	inout		hps_io_hps_io_sdio_inst_D3;
	inout		hps_io_hps_io_usb1_inst_D0;
	inout		hps_io_hps_io_usb1_inst_D1;
	inout		hps_io_hps_io_usb1_inst_D2;
	inout		hps_io_hps_io_usb1_inst_D3;
	inout		hps_io_hps_io_usb1_inst_D4;
	inout		hps_io_hps_io_usb1_inst_D5;
	inout		hps_io_hps_io_usb1_inst_D6;
	inout		hps_io_hps_io_usb1_inst_D7;
	input		hps_io_hps_io_usb1_inst_CLK;
	output		hps_io_hps_io_usb1_inst_STP;
	input		hps_io_hps_io_usb1_inst_DIR;
	input		hps_io_hps_io_usb1_inst_NXT;
	output		hps_io_hps_io_spim0_inst_CLK;
	output		hps_io_hps_io_spim0_inst_MOSI;
	input		hps_io_hps_io_spim0_inst_MISO;
	output		hps_io_hps_io_spim0_inst_SS0;
	output		hps_io_hps_io_spim1_inst_CLK;
	output		hps_io_hps_io_spim1_inst_MOSI;
	input		hps_io_hps_io_spim1_inst_MISO;
	output		hps_io_hps_io_spim1_inst_SS0;
	input		hps_io_hps_io_uart0_inst_RX;
	output		hps_io_hps_io_uart0_inst_TX;
	inout		hps_io_hps_io_i2c1_inst_SDA;
	inout		hps_io_hps_io_i2c1_inst_SCL;
	input		hps_io_hps_io_gpio_inst_HLGPI0;
	input		hps_io_hps_io_gpio_inst_HLGPI1;
	input		hps_io_hps_io_gpio_inst_HLGPI2;
	input		hps_io_hps_io_gpio_inst_HLGPI3;
	input		hps_io_hps_io_gpio_inst_HLGPI4;
	input		hps_io_hps_io_gpio_inst_HLGPI5;
	input		hps_io_hps_io_gpio_inst_HLGPI6;
	input		hps_io_hps_io_gpio_inst_HLGPI7;
	input		hps_io_hps_io_gpio_inst_HLGPI8;
	input		hps_io_hps_io_gpio_inst_HLGPI9;
	input		hps_io_hps_io_gpio_inst_HLGPI10;
	input		hps_io_hps_io_gpio_inst_HLGPI11;
	input		hps_io_hps_io_gpio_inst_HLGPI12;
	input		hps_io_hps_io_gpio_inst_HLGPI13;
	inout		hps_io_hps_io_gpio_inst_GPIO00;
	inout		hps_io_hps_io_gpio_inst_GPIO09;
	inout		hps_io_hps_io_gpio_inst_GPIO35;
	inout		hps_io_hps_io_gpio_inst_GPIO40;
	inout		hps_io_hps_io_gpio_inst_GPIO48;
	inout		hps_io_hps_io_gpio_inst_GPIO53;
	inout		hps_io_hps_io_gpio_inst_GPIO54;
	inout		hps_io_hps_io_gpio_inst_GPIO55;
	inout		hps_io_hps_io_gpio_inst_GPIO56;
	inout		hps_io_hps_io_gpio_inst_GPIO61;
endmodule
