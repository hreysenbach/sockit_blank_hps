	/*

    Verilog top level project for the Arrow SOC Kit
    
    by Haydn Reysenbach
    haydn.reysenbach@gmail.com
    
    
-------------------------------------------------------------------------------
    Version 0.1:
        Start of module pins
		  
    Version 1.0:
		  Completion of hps

*/ 

module top(


	///////////////////////////////////////////////////////////////////////////////
	/////////////////////////////   HPS Interface   ///////////////////////////////
	///////////////////////////////////////////////////////////////////////////////
		 
	// HPS Memory Interface
	output [14:0]      hps_ddr3_mem_a,
	output [2:0]       hps_ddr3_mem_ba,
	output             hps_ddr3_mem_ck,
	output             hps_ddr3_mem_ck_n,
	output             hps_ddr3_mem_cke,
	output             hps_ddr3_mem_cs_n,
	output             hps_ddr3_mem_ras_n,
	output             hps_ddr3_mem_cas_n,
	output             hps_ddr3_mem_we_n,
	output             hps_ddr3_mem_reset_n,
	inout  [31:0]      hps_ddr3_mem_dq,
	inout  [3:0]       hps_ddr3_mem_dqs,
	inout  [3:0]       hps_ddr3_mem_dqs_n,
	output             hps_ddr3_mem_odt,
	output [3:0]       hps_ddr3_mem_dm,
	input              hps_ddr3_mem_oct_rzqin,
		 
	// HPS MAC Interface
	output             hps_emac1_TX_CLK,
	output             hps_emac1_TX_CTL,
	output [3:0]       hps_emac1_TXD,
	input              hps_emac1_RX_CLK,
	input              hps_emac1_RX_CTL,
	input  [3:0]       hps_emac1_RXD,
	
	inout              hps_emac1_MDIO,
	output             hps_emac1_MDC,
	
	// HPS QSPI Interface
	output             hps_qspi_CLK,
	output             hps_qspi_SS0,
	inout  [3:0]       hps_qspi_IO,
		 
	// HPS MMC Interface
	output             hps_sdio_CLK,
	inout              hps_sdio_CMD,
	inout  [3:0]       hps_sdio_D,
	
	// HPS USB Interface
	input              hps_usb1_CLK,
	input              hps_usb1_DIR,
	input              hps_usb1_NXT,
	output             hps_usb1_STP,
	inout  [7:0]       hps_usb1_D,
	
	// HPS SPI0 Interface
	output             hps_spim0_CLK,
	inout              hps_spim0_SS0,
	output             hps_spim0_MOSI,
	input              hps_spim0_MISO,
		 
	// HPS SPI1 Interface
	output             hps_spim1_CLK,
	inout              hps_spim1_SS0,
	output             hps_spim1_MOSI,
	input              hps_spim1_MISO,
		 
	// HPS UART0 Interface
	output             hps_uart0_TX,
	input              hps_uart0_RX,
		 
	// HPS I2C Interface
	inout              hps_i2c1_SCL,
	inout              hps_i2c1_SDA,
		 
		 
	// HPS GPIO Pins
	inout              hps_gpio_GPIO00,    // LTC GPIO
	inout              hps_gpio_GPIO09,    // HPS_CONV_USB_n
	inout              hps_gpio_GPIO35,    // HPS_PHY_INT_n
   inout              hps_gpio_GPIO40,    // HPS_LCD_BACKLIGHT
	inout              hps_gpio_GPIO48,    // HPS_LCD_RST_n
	inout              hps_gpio_GPIO53,    // HPS_LED0
	inout              hps_gpio_GPIO54,    // HPS_LED1
	inout              hps_gpio_GPIO55,    // HPS_LED2
	inout              hps_gpio_GPIO56,    // HPS_LED3
	inout              hps_gpio_GPIO61,    // HPS_GSEN_INT
	inout              hps_gpio_GPIO62,    // HPS_LCD_CMD_DATA
	
	input              hps_gpio_GPI13,     // NC
	input              hps_gpio_GPI12,     // NC
	input              hps_gpio_GPI11,     // HPS_KEY3
	input              hps_gpio_GPI10,     // HPS_KEY2
	input              hps_gpio_GPI9,      // HPS_KEY1
	input              hps_gpio_GPI8,      // HPS_KEY0
	input              hps_gpio_GPI7,      // HPS_SW0
	input              hps_gpio_GPI6,      // HPS_SW1
	input              hps_gpio_GPI5,      // HPS_SW2
	input              hps_gpio_GPI4,      // HPS_SW3
	input              hps_gpio_GPI3,      // NC
	input              hps_gpio_GPI2,      // NC
	input              hps_gpio_GPI1,      // NC
	input              hps_gpio_GPI0,      // NC
		 
		 
	///////////////////////////////////////////////////////////////////////////////
	/////////////////////////////   FPGA Interface   //////////////////////////////
	///////////////////////////////////////////////////////////////////////////////
		 
	input              fpga_rst_n,
		 
	input              clk_50m_fpga,       // PIN Y26    
	// Preferred CLK to use. Generated from oscillator and not si5338
		 
	// SI5338
	input              si5338_clk0,        // PIIN K14
	input              si5338_clk1,        // PIN AF14
	input              si5338_clk2,        // PIN AA16
		 
	output             si5338_i2c_scl,
	inout              si5338_i2c_sda,
		 
	// User IO
	input  [3:0]       user_dipsw_fpga,    // DIP switch inputs
	input  [3:0]       user_pb_fpga,       // Push button inputs
	output [3:0]       user_led_fpga,      // LEDs 
	input              irda_rx,            // Infrared receiver
	output             fan_ctrl,           // Fan Control
		 
	// FPGA DDR3
	output [14:0]      fpga_ddr3_a,
	output [2:0]       fpga_ddr3_ba,
	output             fpga_ddr3_ck,
	output             fpga_ddr3_ck_n,
	output             fpga_ddr3_cke,
	output             fpga_ddr3_cs_n,
	output             fpga_ddr3_ras_n,
	output             fpga_ddr3_cas_n,
	output             fpga_ddr3_we_n,
	output             fpga_ddr3_reset_n,
	inout  [31:0]      fpga_ddr3_dq,
	inout  [3:0]       fpga_ddr3_dqs,
	inout  [3:0]       fpga_ddr3_dqs_n,
	output             fpga_ddr3_odt,
	output [3:0]       fpga_ddr3_dm,
	input              fpga_ddr3_oct_rzqin,
		 
	// Temp Sensor
	output             temp_cs_n,
	output             temp_clk,
	output             temp_mosi,
	input              temp_miso,
		 
	// VGA DAC
	output             vga_clk,
	output             vga_hsync,
	output             vga_vsync,
	output             vga_blank_n,
	output             vga_sync_n,
	output [7:0]       vga_r,
	output [7:0]       vga_g,
	output [7:0]       vga_b,
		 
	
	// Audio Codec
	output             aud_i2c_scl,    // I2C Clk
	inout              aud_i2c_sda,    // I2C Data
	output             aud_xck,        // MCLK
	output             aud_mute,       // Mute Pin
	input              aud_bclk,       // Bit clock
	output             aud_dacdat,     // DAC Data
	inout              aud_daclrck,    // DAC Left/Right Select
	input              aud_adcdat,     // ADC Data
   inout              aud_adclrck,    // ADC Left/Right Select
    

// HSMC CLKs
// Generated off board and passed through HSMC
    input              hsmc_clkin0,    // PIN J14
    input              hsmc_clkin1,    // PIN AA26
//  input              hsmc_clkin1_n,  // PIN AB27
    input              hsmc_clkin2,    // PIN H15
//  input              hsmc_clkin2_n,  // PIN G15
    output             hsmc_clkout0,   // PIN AD29
    output             hsmc_clkout1,   // PIN E7
//  output             hsmc_clkout1_n, // PIN E6
    output             hsmc_clkout2,   // PIN A11
//  output             hsmc_clkout2_n, // PIN A10
    
// HSMC Connector
    inout  [3:0]       hsmc_d,         // Single Ended (can be differential)
    output             hsmc_i2c_scl,   // I2C Clk
    inout              hsmc_i2c_sda,   // I2C Data
    input  [16:0]      hsmc_rx,        // HSMC Receive pairs
//  input  [16:0]      hsmc_rx_n,      
    output [16:0]      hsmc_tx,        // HSMC Transmit pairs
//  output [16:0]      hsmc_tx_n,      
    
// HSMC Transceivers
    input              gxb_ref_clk,    // Reference clock for transceiver
//  input              gxb_ref_clk_n,
    input  [7:0]       gxb_rx,         // Transceiver receiver pairs
//  input  [7:0]       gxb_tx_n,
    output [7:0]       gxb_tx          // Transceiver transmit pairs
//  output [7:0]       gxb_tx_n,

);

    soc_system u0 (
        .clk_clk                                            (clk_50m_fpga),                     // .clk.clk
        .hps_0_f2h_boot_from_fpga_boot_from_fpga_ready      (fpga_boot),                        // .hps_0_f2h_boot_from_fpga.boot_from_fpga_ready
        .hps_0_f2h_boot_from_fpga_boot_from_fpga_on_failure (boot_from_fpga_on_failure),        // .boot_from_fpga_on_failure
        .hps_0_f2h_cold_reset_req_reset_n                   (cold_rst_req_n),                   // .hps_0_f2h_cold_reset_req.reset_n
        .hps_0_f2h_debug_reset_req_reset_n                  (debug_rst_req_n),                  // .hps_0_f2h_debug_reset_req.reset_n
        .hps_0_f2h_warm_reset_req_reset_n                   (warm_rst_req_n),                   // .hps_0_f2h_warm_reset_req.reset_n
        .hps_io_hps_io_emac1_inst_TX_CLK                    (hps_emac1_TX_CLK),                 // .hps_io.hps_io_emac1_inst_TX_CLK
        .hps_io_hps_io_emac1_inst_TXD0                      (hps_emac1_TXD[0]),                 // .hps_io_emac1_inst_TXD0
        .hps_io_hps_io_emac1_inst_TXD1                      (hps_emac1_TXD[1]),                 // .hps_io_emac1_inst_TXD1
        .hps_io_hps_io_emac1_inst_TXD2                      (hps_emac1_TXD[2]),                 // .hps_io_emac1_inst_TXD2
        .hps_io_hps_io_emac1_inst_TXD3                      (hps_emac1_TXD[3]),                 // .hps_io_emac1_inst_TXD3
        .hps_io_hps_io_emac1_inst_RXD0                      (hps_emac1_RXD[0]),                 // .hps_io_emac1_inst_RXD0
        .hps_io_hps_io_emac1_inst_MDIO                      (hps_emac1_MDIO),                   // .hps_io_emac1_inst_MDIO
        .hps_io_hps_io_emac1_inst_MDC                       (hps_emac1_MDC),                    // .hps_io_emac1_inst_MDC
        .hps_io_hps_io_emac1_inst_RX_CTL                    (hps_emac1_RX_CTL),                 // .hps_io_emac1_inst_RX_CTL
        .hps_io_hps_io_emac1_inst_TX_CTL                    (hps_emac1_TX_CTL),                 // .hps_io_emac1_inst_TX_CTL
        .hps_io_hps_io_emac1_inst_RX_CLK                    (hps_emac1_RX_CLK),                 // .hps_io_emac1_inst_RX_CLK
        .hps_io_hps_io_emac1_inst_RXD1                      (hps_emac1_RXD[1]),                 // .hps_io_emac1_inst_RXD1
        .hps_io_hps_io_emac1_inst_RXD2                      (hps_emac1_RXD[2]),                 // .hps_io_emac1_inst_RXD2
        .hps_io_hps_io_emac1_inst_RXD3                      (hps_emac1_RXD[3]),                 // .hps_io_emac1_inst_RXD3
        .hps_io_hps_io_qspi_inst_IO0                        (hps_qspi_IO[0]),                   // .hps_io_qspi_inst_IO0
        .hps_io_hps_io_qspi_inst_IO1                        (hps_qspi_IO[1]),                   // .hps_io_qspi_inst_IO1
        .hps_io_hps_io_qspi_inst_IO2                        (hps_qspi_IO[2]),                   // .hps_io_qspi_inst_IO2
        .hps_io_hps_io_qspi_inst_IO3                        (hps_qspi_IO[3]),                   // .hps_io_qspi_inst_IO3
        .hps_io_hps_io_qspi_inst_SS0                        (hps_qspi_SS0),                     // .hps_io_qspi_inst_SS0
        .hps_io_hps_io_qspi_inst_CLK                        (hps_qspi_CLK),                     // .hps_io_qspi_inst_CLK
        .hps_io_hps_io_sdio_inst_CMD                        (hps_sdio_CMD),                     // .hps_io_sdio_inst_CMD
        .hps_io_hps_io_sdio_inst_D0                         (hps_sdio_D[0]),                    // .hps_io_sdio_inst_D0
        .hps_io_hps_io_sdio_inst_D1                         (hps_sdio_D[1]),                    // .hps_io_sdio_inst_D1
        .hps_io_hps_io_sdio_inst_CLK                        (hps_sdio_CLK),                     // .hps_io_sdio_inst_CLK
        .hps_io_hps_io_sdio_inst_D2                         (hps_sdio_D[2]),                    // .hps_io_sdio_inst_D2
        .hps_io_hps_io_sdio_inst_D3                         (hps_sdio_D[3]),                    // .hps_io_sdio_inst_D3
        .hps_io_hps_io_usb1_inst_D0                         (hps_usb1_D[0]),                    // .hps_io_usb1_inst_D0
        .hps_io_hps_io_usb1_inst_D1                         (hps_usb1_D[1]),                    // .hps_io_usb1_inst_D1
        .hps_io_hps_io_usb1_inst_D2                         (hps_usb1_D[2]),                    // .hps_io_usb1_inst_D2
        .hps_io_hps_io_usb1_inst_D3                         (hps_usb1_D[3]),                    // .hps_io_usb1_inst_D3
        .hps_io_hps_io_usb1_inst_D4                         (hps_usb1_D[4]),                    // .hps_io_usb1_inst_D4
        .hps_io_hps_io_usb1_inst_D5                         (hps_usb1_D[5]),                    // .hps_io_usb1_inst_D5
        .hps_io_hps_io_usb1_inst_D6                         (hps_usb1_D[6]),                    // .hps_io_usb1_inst_D6
        .hps_io_hps_io_usb1_inst_D7                         (hps_usb1_D[7]),                    // .hps_io_usb1_inst_D7
        .hps_io_hps_io_usb1_inst_CLK                        (hps_usb1_CLK),                     // .hps_io_usb1_inst_CLK
        .hps_io_hps_io_usb1_inst_STP                        (hps_usb1_STP),                     // .hps_io_usb1_inst_STP
        .hps_io_hps_io_usb1_inst_DIR                        (hps_usb1_DIR),                     // .hps_io_usb1_inst_DIR
        .hps_io_hps_io_usb1_inst_NXT                        (hps_usb1_NXT),                     // .hps_io_usb1_inst_NXT
        .hps_io_hps_io_spim0_inst_CLK                       (hps_spim0_CLK),                    // .hps_io_spim0_inst_CLK
        .hps_io_hps_io_spim0_inst_MOSI                      (hps_spim0_MOSI),                   // .hps_io_spim0_inst_MOSI
        .hps_io_hps_io_spim0_inst_MISO                      (hps_spim0_MISO),                   // .hps_io_spim0_inst_MISO
        .hps_io_hps_io_spim0_inst_SS0                       (hps_spim0_SS0),                    // .hps_io_spim0_inst_SS0
        .hps_io_hps_io_spim1_inst_CLK                       (hps_spim1_CLK),                    // .hps_io_spim1_inst_CLK
        .hps_io_hps_io_spim1_inst_MOSI                      (hps_spim1_MOSI),                   // .hps_io_spim1_inst_MOSI
        .hps_io_hps_io_spim1_inst_MISO                      (hps_spim1_MISO),                   // .hps_io_spim1_inst_MISO
        .hps_io_hps_io_spim1_inst_SS0                       (hps_spim1_SS0),                    // .hps_io_spim1_inst_SS0
        .hps_io_hps_io_uart0_inst_RX                        (hps_uart0_RX),                     // .hps_io_uart0_inst_RX
        .hps_io_hps_io_uart0_inst_TX                        (hps_uart0_TX),                     // .hps_io_uart0_inst_TX
        .hps_io_hps_io_i2c1_inst_SDA                        (hps_i2c1_SDA),                     // .hps_io_i2c1_inst_SDA
        .hps_io_hps_io_i2c1_inst_SCL                        (hps_i2c1_SCL),                     // .hps_io_i2c1_inst_SC
        .hps_io_hps_io_gpio_inst_GPIO00                     (hps_gpio_GPIO00),                  // .hps_io_gpio_inst_GPIO00
        .hps_io_hps_io_gpio_inst_GPIO09                     (hps_gpio_GPIO09),                  // .hps_io_gpio_inst_GPIO09
        .hps_io_hps_io_gpio_inst_GPIO35                     (hps_gpio_GPIO35),                  // .hps_io_gpio_inst_GPIO35
        .hps_io_hps_io_gpio_inst_GPIO40                     (hps_gpio_GPIO40),                  // .hps_io_gpio_inst_GPIO40
        .hps_io_hps_io_gpio_inst_GPIO48                     (hps_gpio_GPIO48),                  // .hps_io_gpio_inst_GPIO48
        .hps_io_hps_io_gpio_inst_GPIO53                     (hps_gpio_GPIO53),                  // .hps_io_gpio_inst_GPIO53
        .hps_io_hps_io_gpio_inst_GPIO54                     (hps_gpio_GPIO54),                  // .hps_io_gpio_inst_GPIO54
        .hps_io_hps_io_gpio_inst_GPIO55                     (hps_gpio_GPIO55),                  // .hps_io_gpio_inst_GPIO55
        .hps_io_hps_io_gpio_inst_GPIO56                     (hps_gpio_GPIO56),                  // .hps_io_gpio_inst_GPIO56
        .hps_io_hps_io_gpio_inst_GPIO61                     (hps_gpio_GPIO61),                  // .hps_io_gpio_inst_GPIO61
		  .hps_io_hps_io_gpio_inst_HLGPI0                     (hps_gpio_GPI0),                    // .hps_io_gpio_inst_HLGPI0
        .hps_io_hps_io_gpio_inst_HLGPI1                     (hps_gpio_GPI1),                    // .hps_io_gpio_inst_HLGPI1
        .hps_io_hps_io_gpio_inst_HLGPI2                     (hps_gpio_GPI2),                    // .hps_io_gpio_inst_HLGPI2
        .hps_io_hps_io_gpio_inst_HLGPI3                     (hps_gpio_GPI3),                    // .hps_io_gpio_inst_HLGPI3
        .hps_io_hps_io_gpio_inst_HLGPI4                     (hps_gpio_GPI4),                    // .hps_io_gpio_inst_HLGPI4
        .hps_io_hps_io_gpio_inst_HLGPI5                     (hps_gpio_GPI5),                    // .hps_io_gpio_inst_HLGPI5
        .hps_io_hps_io_gpio_inst_HLGPI6                     (hps_gpio_GPI6),                    // .hps_io_gpio_inst_HLGPI6
        .hps_io_hps_io_gpio_inst_HLGPI7                     (hps_gpio_GPI7),                    // .hps_io_gpio_inst_HLGPI7
        .hps_io_hps_io_gpio_inst_HLGPI8                     (hps_gpio_GPI8),                    // .hps_io_gpio_inst_HLGPI8
        .hps_io_hps_io_gpio_inst_HLGPI9                     (hps_gpio_GPI9),                    // .hps_io_gpio_inst_HLGPI9
        .hps_io_hps_io_gpio_inst_HLGPI10                    (hps_gpio_GPI10),                   // .hps_io_gpio_inst_HLGPI10
        .hps_io_hps_io_gpio_inst_HLGPI11                    (hps_gpio_GPI11),                   // .hps_io_gpio_inst_HLGPI11
        .hps_io_hps_io_gpio_inst_HLGPI12                    (hps_gpio_GPI12),                   // .hps_io_gpio_inst_HLGPI12
        .hps_io_hps_io_gpio_inst_HLGPI13                    (hps_gpio_GPI13),                   // .hps_io_gpio_inst_HLGPI13
        .hps_ddr3_mem_a                                     (hps_ddr3_mem_a),                   // .hps_ddr3.mem_a
        .hps_ddr3_mem_ba                                    (hps_ddr3_mem_ba),                  // .mem_ba
        .hps_ddr3_mem_ck                                    (hps_ddr3_mem_ck),                  // .mem_ck
        .hps_ddr3_mem_ck_n                                  (hps_ddr3_mem_ck_n),                // .mem_ck_n
        .hps_ddr3_mem_cke                                   (hps_ddr3_mem_cke),                 // .mem_cke
        .hps_ddr3_mem_cs_n                                  (hps_ddr3_mem_cs_n),                // .mem_cs_n
        .hps_ddr3_mem_ras_n                                 (hps_ddr3_mem_ras_n),               // .mem_ras_n
        .hps_ddr3_mem_cas_n                                 (hps_ddr3_mem_cas_n),               // .mem_cas_n
        .hps_ddr3_mem_we_n                                  (hps_ddr3_mem_we_n),                // .mem_we_n
        .hps_ddr3_mem_reset_n                               (hps_ddr3_mem_reset_n),             // .mem_reset_n
        .hps_ddr3_mem_dq                                    (hps_ddr3_mem_dq),                  // .mem_dq
        .hps_ddr3_mem_dqs                                   (hps_ddr3_mem_dqs),                 // .mem_dqs
        .hps_ddr3_mem_dqs_n                                 (hps_ddr3_mem_dqs_n),               // .mem_dqs_n
        .hps_ddr3_mem_odt                                   (hps_ddr3_mem_odt),                 // .mem_odt
        .hps_ddr3_mem_dm                                    (hps_ddr3_mem_dm),                  // .mem_dm
        .hps_ddr3_oct_rzqin                                 (hps_ddr3_mem_oct_rzqin)            // .oct_rzqin
    );


endmodule
























