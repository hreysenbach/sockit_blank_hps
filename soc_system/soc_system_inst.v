	soc_system u0 (
		.clk_clk                                            (<connected-to-clk_clk>),                                            //                       clk.clk
		.hps_0_f2h_boot_from_fpga_boot_from_fpga_ready      (<connected-to-hps_0_f2h_boot_from_fpga_boot_from_fpga_ready>),      //  hps_0_f2h_boot_from_fpga.boot_from_fpga_ready
		.hps_0_f2h_boot_from_fpga_boot_from_fpga_on_failure (<connected-to-hps_0_f2h_boot_from_fpga_boot_from_fpga_on_failure>), //                          .boot_from_fpga_on_failure
		.hps_0_f2h_cold_reset_req_reset_n                   (<connected-to-hps_0_f2h_cold_reset_req_reset_n>),                   //  hps_0_f2h_cold_reset_req.reset_n
		.hps_0_f2h_debug_reset_req_reset_n                  (<connected-to-hps_0_f2h_debug_reset_req_reset_n>),                  // hps_0_f2h_debug_reset_req.reset_n
		.hps_0_f2h_warm_reset_req_reset_n                   (<connected-to-hps_0_f2h_warm_reset_req_reset_n>),                   //  hps_0_f2h_warm_reset_req.reset_n
		.hps_ddr3_mem_a                                     (<connected-to-hps_ddr3_mem_a>),                                     //                  hps_ddr3.mem_a
		.hps_ddr3_mem_ba                                    (<connected-to-hps_ddr3_mem_ba>),                                    //                          .mem_ba
		.hps_ddr3_mem_ck                                    (<connected-to-hps_ddr3_mem_ck>),                                    //                          .mem_ck
		.hps_ddr3_mem_ck_n                                  (<connected-to-hps_ddr3_mem_ck_n>),                                  //                          .mem_ck_n
		.hps_ddr3_mem_cke                                   (<connected-to-hps_ddr3_mem_cke>),                                   //                          .mem_cke
		.hps_ddr3_mem_cs_n                                  (<connected-to-hps_ddr3_mem_cs_n>),                                  //                          .mem_cs_n
		.hps_ddr3_mem_ras_n                                 (<connected-to-hps_ddr3_mem_ras_n>),                                 //                          .mem_ras_n
		.hps_ddr3_mem_cas_n                                 (<connected-to-hps_ddr3_mem_cas_n>),                                 //                          .mem_cas_n
		.hps_ddr3_mem_we_n                                  (<connected-to-hps_ddr3_mem_we_n>),                                  //                          .mem_we_n
		.hps_ddr3_mem_reset_n                               (<connected-to-hps_ddr3_mem_reset_n>),                               //                          .mem_reset_n
		.hps_ddr3_mem_dq                                    (<connected-to-hps_ddr3_mem_dq>),                                    //                          .mem_dq
		.hps_ddr3_mem_dqs                                   (<connected-to-hps_ddr3_mem_dqs>),                                   //                          .mem_dqs
		.hps_ddr3_mem_dqs_n                                 (<connected-to-hps_ddr3_mem_dqs_n>),                                 //                          .mem_dqs_n
		.hps_ddr3_mem_odt                                   (<connected-to-hps_ddr3_mem_odt>),                                   //                          .mem_odt
		.hps_ddr3_mem_dm                                    (<connected-to-hps_ddr3_mem_dm>),                                    //                          .mem_dm
		.hps_ddr3_oct_rzqin                                 (<connected-to-hps_ddr3_oct_rzqin>),                                 //                          .oct_rzqin
		.hps_io_hps_io_emac1_inst_TX_CLK                    (<connected-to-hps_io_hps_io_emac1_inst_TX_CLK>),                    //                    hps_io.hps_io_emac1_inst_TX_CLK
		.hps_io_hps_io_emac1_inst_TXD0                      (<connected-to-hps_io_hps_io_emac1_inst_TXD0>),                      //                          .hps_io_emac1_inst_TXD0
		.hps_io_hps_io_emac1_inst_TXD1                      (<connected-to-hps_io_hps_io_emac1_inst_TXD1>),                      //                          .hps_io_emac1_inst_TXD1
		.hps_io_hps_io_emac1_inst_TXD2                      (<connected-to-hps_io_hps_io_emac1_inst_TXD2>),                      //                          .hps_io_emac1_inst_TXD2
		.hps_io_hps_io_emac1_inst_TXD3                      (<connected-to-hps_io_hps_io_emac1_inst_TXD3>),                      //                          .hps_io_emac1_inst_TXD3
		.hps_io_hps_io_emac1_inst_RXD0                      (<connected-to-hps_io_hps_io_emac1_inst_RXD0>),                      //                          .hps_io_emac1_inst_RXD0
		.hps_io_hps_io_emac1_inst_MDIO                      (<connected-to-hps_io_hps_io_emac1_inst_MDIO>),                      //                          .hps_io_emac1_inst_MDIO
		.hps_io_hps_io_emac1_inst_MDC                       (<connected-to-hps_io_hps_io_emac1_inst_MDC>),                       //                          .hps_io_emac1_inst_MDC
		.hps_io_hps_io_emac1_inst_RX_CTL                    (<connected-to-hps_io_hps_io_emac1_inst_RX_CTL>),                    //                          .hps_io_emac1_inst_RX_CTL
		.hps_io_hps_io_emac1_inst_TX_CTL                    (<connected-to-hps_io_hps_io_emac1_inst_TX_CTL>),                    //                          .hps_io_emac1_inst_TX_CTL
		.hps_io_hps_io_emac1_inst_RX_CLK                    (<connected-to-hps_io_hps_io_emac1_inst_RX_CLK>),                    //                          .hps_io_emac1_inst_RX_CLK
		.hps_io_hps_io_emac1_inst_RXD1                      (<connected-to-hps_io_hps_io_emac1_inst_RXD1>),                      //                          .hps_io_emac1_inst_RXD1
		.hps_io_hps_io_emac1_inst_RXD2                      (<connected-to-hps_io_hps_io_emac1_inst_RXD2>),                      //                          .hps_io_emac1_inst_RXD2
		.hps_io_hps_io_emac1_inst_RXD3                      (<connected-to-hps_io_hps_io_emac1_inst_RXD3>),                      //                          .hps_io_emac1_inst_RXD3
		.hps_io_hps_io_qspi_inst_IO0                        (<connected-to-hps_io_hps_io_qspi_inst_IO0>),                        //                          .hps_io_qspi_inst_IO0
		.hps_io_hps_io_qspi_inst_IO1                        (<connected-to-hps_io_hps_io_qspi_inst_IO1>),                        //                          .hps_io_qspi_inst_IO1
		.hps_io_hps_io_qspi_inst_IO2                        (<connected-to-hps_io_hps_io_qspi_inst_IO2>),                        //                          .hps_io_qspi_inst_IO2
		.hps_io_hps_io_qspi_inst_IO3                        (<connected-to-hps_io_hps_io_qspi_inst_IO3>),                        //                          .hps_io_qspi_inst_IO3
		.hps_io_hps_io_qspi_inst_SS0                        (<connected-to-hps_io_hps_io_qspi_inst_SS0>),                        //                          .hps_io_qspi_inst_SS0
		.hps_io_hps_io_qspi_inst_CLK                        (<connected-to-hps_io_hps_io_qspi_inst_CLK>),                        //                          .hps_io_qspi_inst_CLK
		.hps_io_hps_io_sdio_inst_CMD                        (<connected-to-hps_io_hps_io_sdio_inst_CMD>),                        //                          .hps_io_sdio_inst_CMD
		.hps_io_hps_io_sdio_inst_D0                         (<connected-to-hps_io_hps_io_sdio_inst_D0>),                         //                          .hps_io_sdio_inst_D0
		.hps_io_hps_io_sdio_inst_D1                         (<connected-to-hps_io_hps_io_sdio_inst_D1>),                         //                          .hps_io_sdio_inst_D1
		.hps_io_hps_io_sdio_inst_CLK                        (<connected-to-hps_io_hps_io_sdio_inst_CLK>),                        //                          .hps_io_sdio_inst_CLK
		.hps_io_hps_io_sdio_inst_D2                         (<connected-to-hps_io_hps_io_sdio_inst_D2>),                         //                          .hps_io_sdio_inst_D2
		.hps_io_hps_io_sdio_inst_D3                         (<connected-to-hps_io_hps_io_sdio_inst_D3>),                         //                          .hps_io_sdio_inst_D3
		.hps_io_hps_io_usb1_inst_D0                         (<connected-to-hps_io_hps_io_usb1_inst_D0>),                         //                          .hps_io_usb1_inst_D0
		.hps_io_hps_io_usb1_inst_D1                         (<connected-to-hps_io_hps_io_usb1_inst_D1>),                         //                          .hps_io_usb1_inst_D1
		.hps_io_hps_io_usb1_inst_D2                         (<connected-to-hps_io_hps_io_usb1_inst_D2>),                         //                          .hps_io_usb1_inst_D2
		.hps_io_hps_io_usb1_inst_D3                         (<connected-to-hps_io_hps_io_usb1_inst_D3>),                         //                          .hps_io_usb1_inst_D3
		.hps_io_hps_io_usb1_inst_D4                         (<connected-to-hps_io_hps_io_usb1_inst_D4>),                         //                          .hps_io_usb1_inst_D4
		.hps_io_hps_io_usb1_inst_D5                         (<connected-to-hps_io_hps_io_usb1_inst_D5>),                         //                          .hps_io_usb1_inst_D5
		.hps_io_hps_io_usb1_inst_D6                         (<connected-to-hps_io_hps_io_usb1_inst_D6>),                         //                          .hps_io_usb1_inst_D6
		.hps_io_hps_io_usb1_inst_D7                         (<connected-to-hps_io_hps_io_usb1_inst_D7>),                         //                          .hps_io_usb1_inst_D7
		.hps_io_hps_io_usb1_inst_CLK                        (<connected-to-hps_io_hps_io_usb1_inst_CLK>),                        //                          .hps_io_usb1_inst_CLK
		.hps_io_hps_io_usb1_inst_STP                        (<connected-to-hps_io_hps_io_usb1_inst_STP>),                        //                          .hps_io_usb1_inst_STP
		.hps_io_hps_io_usb1_inst_DIR                        (<connected-to-hps_io_hps_io_usb1_inst_DIR>),                        //                          .hps_io_usb1_inst_DIR
		.hps_io_hps_io_usb1_inst_NXT                        (<connected-to-hps_io_hps_io_usb1_inst_NXT>),                        //                          .hps_io_usb1_inst_NXT
		.hps_io_hps_io_spim0_inst_CLK                       (<connected-to-hps_io_hps_io_spim0_inst_CLK>),                       //                          .hps_io_spim0_inst_CLK
		.hps_io_hps_io_spim0_inst_MOSI                      (<connected-to-hps_io_hps_io_spim0_inst_MOSI>),                      //                          .hps_io_spim0_inst_MOSI
		.hps_io_hps_io_spim0_inst_MISO                      (<connected-to-hps_io_hps_io_spim0_inst_MISO>),                      //                          .hps_io_spim0_inst_MISO
		.hps_io_hps_io_spim0_inst_SS0                       (<connected-to-hps_io_hps_io_spim0_inst_SS0>),                       //                          .hps_io_spim0_inst_SS0
		.hps_io_hps_io_spim1_inst_CLK                       (<connected-to-hps_io_hps_io_spim1_inst_CLK>),                       //                          .hps_io_spim1_inst_CLK
		.hps_io_hps_io_spim1_inst_MOSI                      (<connected-to-hps_io_hps_io_spim1_inst_MOSI>),                      //                          .hps_io_spim1_inst_MOSI
		.hps_io_hps_io_spim1_inst_MISO                      (<connected-to-hps_io_hps_io_spim1_inst_MISO>),                      //                          .hps_io_spim1_inst_MISO
		.hps_io_hps_io_spim1_inst_SS0                       (<connected-to-hps_io_hps_io_spim1_inst_SS0>),                       //                          .hps_io_spim1_inst_SS0
		.hps_io_hps_io_uart0_inst_RX                        (<connected-to-hps_io_hps_io_uart0_inst_RX>),                        //                          .hps_io_uart0_inst_RX
		.hps_io_hps_io_uart0_inst_TX                        (<connected-to-hps_io_hps_io_uart0_inst_TX>),                        //                          .hps_io_uart0_inst_TX
		.hps_io_hps_io_i2c1_inst_SDA                        (<connected-to-hps_io_hps_io_i2c1_inst_SDA>),                        //                          .hps_io_i2c1_inst_SDA
		.hps_io_hps_io_i2c1_inst_SCL                        (<connected-to-hps_io_hps_io_i2c1_inst_SCL>),                        //                          .hps_io_i2c1_inst_SCL
		.hps_io_hps_io_gpio_inst_HLGPI0                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI0>),                     //                          .hps_io_gpio_inst_HLGPI0
		.hps_io_hps_io_gpio_inst_HLGPI1                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI1>),                     //                          .hps_io_gpio_inst_HLGPI1
		.hps_io_hps_io_gpio_inst_HLGPI2                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI2>),                     //                          .hps_io_gpio_inst_HLGPI2
		.hps_io_hps_io_gpio_inst_HLGPI3                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI3>),                     //                          .hps_io_gpio_inst_HLGPI3
		.hps_io_hps_io_gpio_inst_HLGPI4                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI4>),                     //                          .hps_io_gpio_inst_HLGPI4
		.hps_io_hps_io_gpio_inst_HLGPI5                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI5>),                     //                          .hps_io_gpio_inst_HLGPI5
		.hps_io_hps_io_gpio_inst_HLGPI6                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI6>),                     //                          .hps_io_gpio_inst_HLGPI6
		.hps_io_hps_io_gpio_inst_HLGPI7                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI7>),                     //                          .hps_io_gpio_inst_HLGPI7
		.hps_io_hps_io_gpio_inst_HLGPI8                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI8>),                     //                          .hps_io_gpio_inst_HLGPI8
		.hps_io_hps_io_gpio_inst_HLGPI9                     (<connected-to-hps_io_hps_io_gpio_inst_HLGPI9>),                     //                          .hps_io_gpio_inst_HLGPI9
		.hps_io_hps_io_gpio_inst_HLGPI10                    (<connected-to-hps_io_hps_io_gpio_inst_HLGPI10>),                    //                          .hps_io_gpio_inst_HLGPI10
		.hps_io_hps_io_gpio_inst_HLGPI11                    (<connected-to-hps_io_hps_io_gpio_inst_HLGPI11>),                    //                          .hps_io_gpio_inst_HLGPI11
		.hps_io_hps_io_gpio_inst_HLGPI12                    (<connected-to-hps_io_hps_io_gpio_inst_HLGPI12>),                    //                          .hps_io_gpio_inst_HLGPI12
		.hps_io_hps_io_gpio_inst_HLGPI13                    (<connected-to-hps_io_hps_io_gpio_inst_HLGPI13>),                    //                          .hps_io_gpio_inst_HLGPI13
		.hps_io_hps_io_gpio_inst_GPIO00                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO00>),                     //                          .hps_io_gpio_inst_GPIO00
		.hps_io_hps_io_gpio_inst_GPIO09                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO09>),                     //                          .hps_io_gpio_inst_GPIO09
		.hps_io_hps_io_gpio_inst_GPIO35                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO35>),                     //                          .hps_io_gpio_inst_GPIO35
		.hps_io_hps_io_gpio_inst_GPIO40                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO40>),                     //                          .hps_io_gpio_inst_GPIO40
		.hps_io_hps_io_gpio_inst_GPIO48                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO48>),                     //                          .hps_io_gpio_inst_GPIO48
		.hps_io_hps_io_gpio_inst_GPIO53                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO53>),                     //                          .hps_io_gpio_inst_GPIO53
		.hps_io_hps_io_gpio_inst_GPIO54                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO54>),                     //                          .hps_io_gpio_inst_GPIO54
		.hps_io_hps_io_gpio_inst_GPIO55                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO55>),                     //                          .hps_io_gpio_inst_GPIO55
		.hps_io_hps_io_gpio_inst_GPIO56                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO56>),                     //                          .hps_io_gpio_inst_GPIO56
		.hps_io_hps_io_gpio_inst_GPIO61                     (<connected-to-hps_io_hps_io_gpio_inst_GPIO61>)                      //                          .hps_io_gpio_inst_GPIO61
	);
