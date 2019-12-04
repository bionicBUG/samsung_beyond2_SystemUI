.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSdevice"
.end annotation


# instance fields
.field public final ACCESSORY:B

.field public final AIRPURIFIER:B

.field public final AI_SPEAKER:B

.field public final AV:B

.field public final BAND:B

.field public final BD:B

.field public final CAMCORDER:B

.field public final CAMERA:B

.field public final CAR:B

.field public final CONNECT_TAG:B

.field public final COOKTOP:B

.field public final DISHWASHER:B

.field public final DISPLAY:B

.field public final DRYER:B

.field public final EBOARD:B

.field public final FLOOR_AC:B

.field public final HEADPHONE:B

.field public final HOOD:B

.field public final IOT:B

.field public final KIMCHI_REFRIGERATOR:B

.field public final MICROWAVEOVEN:B

.field public final MONITOR:B

.field public final OVEN:B

.field public final PC:B

.field public final PHONE:B

.field public final PRINTER:B

.field public final RANGE:B

.field public final REFRIGERATOR:B

.field public final ROBOT_VACUUM:B

.field public final ROOM_AC:B

.field public final ROUTER:B

.field public final SIGNAGE:B

.field public final SMART_HOME:B

.field public final SPEAKER:B

.field public final STEAM_CLOSET:B

.field public final SYSTEM_AC:B

.field public final TABLET:B

.field public final TV:B

.field public final WASHER:B

.field public final WATCH:B

.field public final WEARABLE:B

.field private final mCategoryPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 81
    iput-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 83
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PHONE:B

    const/4 v1, 0x2

    .line 84
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->TABLET:B

    const/4 v1, 0x3

    .line 85
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WEARABLE:B

    const/4 v1, 0x4

    .line 86
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PC:B

    const/4 v1, 0x5

    .line 87
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ACCESSORY:B

    const/4 v1, 0x6

    .line 88
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->TV:B

    const/4 v1, 0x7

    .line 89
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AV:B

    const/16 v1, 0x8

    .line 90
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SIGNAGE:B

    const/16 v1, 0x9

    .line 91
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->REFRIGERATOR:B

    const/16 v1, 0xa

    .line 92
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WASHER:B

    const/16 v1, 0xb

    .line 93
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->DRYER:B

    const/16 v1, 0xc

    .line 94
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->FLOOR_AC:B

    const/16 v1, 0xd

    .line 95
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROOM_AC:B

    const/16 v1, 0xe

    .line 96
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SYSTEM_AC:B

    const/16 v1, 0xf

    .line 97
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AIRPURIFIER:B

    const/16 v1, 0x10

    .line 98
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->OVEN:B

    const/16 v1, 0x11

    .line 99
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->RANGE:B

    const/16 v1, 0x12

    .line 100
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROBOT_VACUUM:B

    const/16 v1, 0x13

    .line 101
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SMART_HOME:B

    const/16 v1, 0x14

    .line 102
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->PRINTER:B

    const/16 v1, 0x15

    .line 103
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->HEADPHONE:B

    const/16 v1, 0x16

    .line 104
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->SPEAKER:B

    const/16 v1, 0x17

    .line 105
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->MONITOR:B

    const/16 v1, 0x18

    .line 106
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->EBOARD:B

    const/16 v1, 0x19

    .line 107
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->IOT:B

    const/16 v1, 0x1a

    .line 108
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAMERA:B

    const/16 v1, 0x1b

    .line 109
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAMCORDER:B

    const/16 v1, 0x1c

    .line 110
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->COOKTOP:B

    const/16 v1, 0x1d

    .line 111
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->DISHWASHER:B

    const/16 v1, 0x1e

    .line 112
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->MICROWAVEOVEN:B

    const/16 v1, 0x1f

    .line 113
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->HOOD:B

    const/16 v1, 0x20

    .line 114
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->KIMCHI_REFRIGERATOR:B

    const/16 v1, 0x21

    .line 115
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->WATCH:B

    const/16 v1, 0x22

    .line 116
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->BAND:B

    const/16 v1, 0x23

    .line 117
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->ROUTER:B

    const/16 v1, 0x24

    .line 118
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->BD:B

    const/16 v1, 0x25

    .line 119
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CONNECT_TAG:B

    const/16 v1, 0x26

    .line 120
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->CAR:B

    const/16 v1, 0x27

    .line 121
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->STEAM_CLOSET:B

    const/16 v1, 0x28

    .line 122
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->AI_SPEAKER:B

    const/16 v1, 0x29

    .line 123
    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->DISPLAY:B

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "[Phone] "

    const-string v3, "[Tablet] "

    const-string v4, "[Wearable] "

    const-string v5, "[PC] "

    const-string v6, "[Accessory] "

    const-string v7, "[TV] "

    const-string v8, "[AV] "

    const-string v9, "[Signage] "

    const-string v10, "[Refrigerator] "

    const-string v11, "[Washer] "

    const-string v12, "[Dryer] "

    const-string v13, "[Floor A/C] "

    const-string v14, "[Room A/C] "

    const-string v15, "[System A/C] "

    const-string v16, "[Air Purifier] "

    const-string v17, "[Oven] "

    const-string v18, "[Range] "

    const-string v19, "[Robot Vacuum] "

    const-string v20, "[Smart Home] "

    const-string v21, "[Printer] "

    const-string v22, "[Headphone] "

    const-string v23, "[Speaker] "

    const-string v24, "[Monitor] "

    const-string v25, "[E-Board] "

    const-string v26, "[IoT] "

    const-string v27, "[Camera] "

    const-string v28, "[Camcorder] "

    const-string v29, "[Cooktop] "

    const-string v30, "[Dish Washer] "

    const-string v31, "[Microwave Oven] "

    const-string v32, "[Hood] "

    const-string v33, "[KimchiRef] "

    const-string v34, "[Watch] "

    const-string v35, "[Band] "

    const-string v36, "[Router] "

    const-string v37, "[BD] "

    const-string v38, "[Tag] "

    const-string v39, "[Car] "

    const-string v40, "[Airdresser] "

    const-string v41, "[AI Speaker] "

    filled-new-array/range {v2 .. v41}, [Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCategoryPrefix(B)Ljava/lang/String;
    .locals 1

    if-lez p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p1, p1, -0x1

    if-le v0, p1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->mCategoryPrefixList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getDeviceIcon(BB)I
    .locals 2

    const/4 p0, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    if-eq p2, v1, :cond_0

    .line 297
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_signage:I

    return p0

    .line 294
    :cond_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_the_wall:I

    return p0

    :pswitch_1
    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    .line 289
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker:I

    return p0

    .line 287
    :cond_1
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_ai_speaker_galaxy_home_mini:I

    return p0

    .line 285
    :cond_2
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_samsung_ai_speaker:I

    return p0

    .line 281
    :pswitch_2
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_steam_closet:I

    return p0

    .line 279
    :pswitch_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_car:I

    return p0

    :pswitch_4
    if-eq p2, v1, :cond_3

    .line 276
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tag:I

    return p0

    .line 274
    :cond_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_connect_tag:I

    return p0

    .line 270
    :pswitch_5
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_blueray_player:I

    return p0

    .line 268
    :pswitch_6
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_router:I

    return p0

    .line 266
    :pswitch_7
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_band:I

    return p0

    .line 264
    :pswitch_8
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 262
    :pswitch_9
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_kimchi_refrigerator:I

    return p0

    .line 260
    :pswitch_a
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_hood:I

    return p0

    .line 258
    :pswitch_b
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_microwaveoven:I

    return p0

    .line 256
    :pswitch_c
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dishwasher:I

    return p0

    .line 254
    :pswitch_d
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_cooktop:I

    return p0

    .line 252
    :pswitch_e
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camcoder:I

    return p0

    .line 250
    :pswitch_f
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_camera:I

    return p0

    .line 248
    :pswitch_10
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_samsung_connect:I

    return p0

    .line 246
    :pswitch_11
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_eboard:I

    return p0

    .line 244
    :pswitch_12
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    :pswitch_13
    if-eq p2, v1, :cond_4

    .line 241
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0

    .line 239
    :cond_4
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    :pswitch_14
    if-eq p2, v1, :cond_7

    if-eq p2, v0, :cond_6

    if-eq p2, p0, :cond_5

    .line 234
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return p0

    .line 232
    :cond_5
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_true_wireless_earbuds:I

    return p0

    .line 230
    :cond_6
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mono_headset:I

    return p0

    .line 228
    :cond_7
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    return p0

    .line 224
    :pswitch_15
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_printer:I

    return p0

    .line 222
    :pswitch_16
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_smart_home:I

    return p0

    .line 220
    :pswitch_17
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_cleaner:I

    return p0

    .line 218
    :pswitch_18
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_range:I

    return p0

    .line 216
    :pswitch_19
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_oven:I

    return p0

    .line 214
    :pswitch_1a
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_air_purifier:I

    return p0

    .line 212
    :pswitch_1b
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_system_airconditioner:I

    return p0

    .line 210
    :pswitch_1c
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_airconditioner:I

    return p0

    .line 208
    :pswitch_1d
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_floor_airconditioner:I

    return p0

    .line 206
    :pswitch_1e
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dryer:I

    return p0

    .line 204
    :pswitch_1f
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_washer:I

    return p0

    .line 202
    :pswitch_20
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_refrigerator:I

    return p0

    .line 200
    :pswitch_21
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_signage:I

    return p0

    :pswitch_22
    if-eq p2, v1, :cond_b

    if-eq p2, v0, :cond_a

    const/4 p0, 0x5

    if-eq p2, p0, :cond_9

    const/4 p0, 0x6

    if-eq p2, p0, :cond_8

    .line 197
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    .line 195
    :cond_8
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    return p0

    .line 193
    :cond_9
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_dlna_audio:I

    return p0

    .line 191
    :cond_a
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_av360r7:I

    return p0

    .line 189
    :cond_b
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_soundbar:I

    return p0

    :pswitch_23
    if-eq p2, v1, :cond_e

    if-eq p2, v0, :cond_d

    if-eq p2, p0, :cond_c

    .line 184
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    .line 182
    :cond_c
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_the_wall:I

    return p0

    .line 180
    :cond_d
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sero_tv:I

    return p0

    .line 178
    :cond_e
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    return p0

    :pswitch_24
    if-eq p2, v1, :cond_11

    if-eq p2, v0, :cond_10

    if-eq p2, p0, :cond_f

    .line 173
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_accessory_default:I

    return p0

    .line 171
    :cond_f
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_keyboard:I

    return p0

    .line 169
    :cond_10
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_game_device:I

    return p0

    .line 167
    :cond_11
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mouse:I

    return p0

    :pswitch_25
    if-eq p2, v1, :cond_13

    if-eq p2, v0, :cond_12

    .line 162
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 160
    :cond_12
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    return p0

    .line 158
    :cond_13
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_pc:I

    return p0

    .line 154
    :pswitch_26
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_wearable:I

    return p0

    .line 152
    :pswitch_27
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_tablet:I

    return p0

    .line 150
    :pswitch_28
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
