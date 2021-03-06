// inject properties for audio

    External(_SB.PCI0.HDEF, DeviceObj)
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            "layout-id", Buffer(4) { 4, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
            "PinConfigurations", Buffer() { },
        })
    }

// CodecCommander configuration

    Name(_SB.PCI0.HDEF.RMCF, Package()
    {
        "CodecCommanderProbeInit", Package()
        {
            "Version", 0x020600,
            "10ec_0280", Package()
            {
                "PinConfigDefault", Package()
                {
                    Package(){},
                    Package()
                    {
                        "LayoutID", 4,
                        "PinConfigs", Package()
                        {
                            Package(){},
                            0x12, 0x90a00010,
                            0x14, 0x90170020,
                            0x15, 0x02211030,
                            0x1a, 0x02811040,
                        },
                    },
                },
                "Custom Commands", Package()
                {
                    Package(){},
                    Package()
                    {
                        "LayoutID", 4,
                        "Command", Buffer()
                        {
                            0x01, 0x47, 0x0c, 0x02,
                            0x01, 0x57, 0x0c, 0x02
                        },
                    },
                },
            },
        },
        "CodecCommander", Package()
        {
            "Version", 0x020600,
            "10ec_0280", Package()
            {
                "Custom Commands", Package()
                {
                    Package(){}, // signifies Array instead of Dictionary
                    Package()
                    {
                        // 0x1a SET_PIN_WIDGET_CONTROL 0x25
                        // Node 0x1a - Pin Control (In Enable / VRefEn)
                        "Command", Buffer() { 0x01, 0x1a, 0x07, 0x25 },
                        "On Init", ">y",
                        "On Sleep", ">n",
                        "On Wake", ">y",
                    },
                    Package()
                    {
                        // 0x15 SET_UNSOLICITED_ENABLE 0x83
                        "Command", Buffer() { 0x01, 0x57, 0x08, 0x83 },
                        "On Init", ">y",
                        "On Sleep", ">n",
                        "On Wake", ">y",
                    },
                },
            },
        },
    })

//EOF
