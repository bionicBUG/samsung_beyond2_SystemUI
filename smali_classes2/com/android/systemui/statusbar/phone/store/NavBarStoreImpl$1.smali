.class synthetic Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;
.super Ljava/lang/Object;
.source "NavBarStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

.field static final synthetic $SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

.field static final synthetic $SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

.field static final synthetic $SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$ValueType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 765
    invoke-static {}, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->values()[Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v2, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v3, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v4, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GONE_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v5, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v6, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_VISIBLE_DIABLED_BY_KNOX:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v7, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISABLE_NAVBAR_FADEIN_ANIM:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v8, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_DISABLED_FLAGS:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v9, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_OPAQUE_COLOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v10, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DO_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v11, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESTORE_NAVBAR_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v12, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESTORE_NAVIGATION_ICON_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v13, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESTORE_NAVIGATION_FULLSCREEN_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v12, 0xd

    :try_start_c
    sget-object v13, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v14, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SAVE_NAVIGATION_ICON_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aput v12, v13, v14
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v13, 0xe

    :try_start_d
    sget-object v14, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SAVE_NAVIGATION_FULLSCREEN_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v13, v14, v15
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v14, 0xf

    :try_start_e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_LIGHT_TRUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_LIGHT_FALSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v15, v16
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_OPAQUE_TRUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x11

    aput v17, v15, v16
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_OPAQUE_FALSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x12

    aput v17, v15, v16
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_SUW_TYPE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x13

    aput v17, v15, v16
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_SEC_TYPE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x14

    aput v17, v15, v16
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_SUW_ICON_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x15

    aput v17, v15, v16
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_SUW_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x16

    aput v17, v15, v16
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REEVALUATE_NAVBAR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x17

    aput v17, v15, v16
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REEVALUATE_NAVBAR_ICON:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x18

    aput v17, v15, v16
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x19

    aput v17, v15, v16
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1a

    aput v17, v15, v16
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1b

    aput v17, v15, v16
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->THEME_DEFAULT_ENABLED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1c

    aput v17, v15, v16
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->THEME_DEFAULT_DISABLED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1d

    aput v17, v15, v16
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_THEME_DEFAULT_SETTING_VALUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1e

    aput v17, v15, v16
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_ICON_AND_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1f

    aput v17, v15, v16
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->CONNECT_MIRROR_LINK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x20

    aput v17, v15, v16
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISCONNECT_MIRROR_LINK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x21

    aput v17, v15, v16
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RE_INFLATE_NAVBAR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x22

    aput v17, v15, v16
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_SIDE_BOTTOM_GESTURAL_LAYOUT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x23

    aput v17, v15, v16
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_BOTTOM_GESTURAL_LAYOUT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x24

    aput v17, v15, v16
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_DEFAULT_LAYOUT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x25

    aput v17, v15, v16
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_INFLATE_VERTICAL_LAYOUT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x26

    aput v17, v15, v16
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_INFLATE_HORIZONTAL_LAYOUT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x27

    aput v17, v15, v16
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_MAIN_KEY_WIDTH:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x28

    aput v17, v15, v16
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GESTURE_HINT_WIDTH:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x29

    aput v17, v15, v16
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_EXTRA_KEY_WIDTH:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2a

    aput v17, v15, v16
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_KEYMARGIN_WIDTH:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2b

    aput v17, v15, v16
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_EXTRA_KEY_SIDE_PADDING_WIDTH:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2c

    aput v17, v15, v16
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_LAYOUT_PROVIDER:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2d

    aput v17, v15, v16
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_REMOTEVIEW_LIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2e

    aput v17, v15, v16
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->INVALIDATE_NAVBAR_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2f

    aput v17, v15, v16
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_REMOTEVIEW_CONTAINER:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x30

    aput v17, v15, v16
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_REMOTEVIEW_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x31

    aput v17, v15, v16
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_NAVBAR_RIGHT_REMOTEVIEW_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x32

    aput v17, v15, v16
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GAMETOOLS_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x33

    aput v17, v15, v16
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_GAMETOOLS_INVISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x34

    aput v17, v15, v16
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_FLOATING_GAMETOOLS_ICON:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x35

    aput v17, v15, v16
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_DEADZONE_MIN_SIZE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x36

    aput v17, v15, v16
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_DEADZONE_MAX_SIZE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x37

    aput v17, v15, v16
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_DISABLE_ROTATE_SUGGESTION:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x38

    aput v17, v15, v16
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_GESTURE_HINT_GROUP:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x39

    aput v17, v15, v16
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3a

    aput v17, v15, v16
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3b

    aput v17, v15, v16
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3c

    aput v17, v15, v16
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3d

    aput v17, v15, v16
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_HOME_HANDLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3e

    aput v17, v15, v16
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_HOME_HANDLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x3f

    aput v17, v15, v16
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x40

    aput v17, v15, v16
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ICON_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x41

    aput v17, v15, v16
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_ICON_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x42

    aput v17, v15, v16
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_CURRENT_LUMA_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x43

    aput v17, v15, v16
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_CURRENT_LUMA_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x44

    aput v17, v15, v16
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->ADD_PAY_INTERACTOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x45

    aput v17, v15, v16
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->ENABLE_EDGE_BACK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x46

    aput v17, v15, v16
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISABLE_EDGE_BACK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x47

    aput v17, v15, v16
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_DISABLE_SUW_BACK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x48

    aput v17, v15, v16
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->CLEAR_DISABLE_SUW_BACK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x49

    aput v17, v15, v16
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_SWIPE_UP_AND_HOLD_POPUP:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4a

    aput v17, v15, v16
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_TWO_FINGER_SWIPE_UP_POPUP:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4b

    aput v17, v15, v16
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4c

    aput v17, v15, v16
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->DISMISS_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4d

    aput v17, v15, v16
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_KNOX_HARD_KEY_INTENT_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4e

    aput v17, v15, v16
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->CLEAR_KNOX_HARD_KEY_INTENT_STATE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x4f

    aput v17, v15, v16
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SEND_BROADCAST_INTENT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x50

    aput v17, v15, v16
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->ADD_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x51

    aput v17, v15, v16
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->UPDATE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x52

    aput v17, v15, v16
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x53

    aput v17, v15, v16
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SHOW_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x54

    aput v17, v15, v16
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->HIDE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x55

    aput v17, v15, v16
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->BYPASS_MOTION_EVENT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x56

    aput v17, v15, v16
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Actions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;->SET_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Actions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x57

    aput v17, v15, v16
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    .line 744
    :catch_56
    invoke-static {}, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->values()[Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$ValueType:[I

    :try_start_57
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$ValueType:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;->ICON_COLOR_UPDATE_TIME:Lcom/android/systemui/statusbar/phone/store/NavBarStore$ValueType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    .line 579
    :catch_57
    invoke-static {}, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->values()[Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    :try_start_58
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_SHADE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_KEYGUARD:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v1, v15, v16
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v2, v15, v16
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SEMI_TRANSPARENT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v3, v15, v16
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->STATUSBAR_FOCUSED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v4, v15, v16
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SAVED_STATE_ENABLED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v5, v15, v16
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->KEYGUARD_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v6, v15, v16
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NIGHT_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v7, v15, v16
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->ACTIVE_THEME_PACKAGE_EXIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v8, v15, v16
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_VISIBLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v9, v15, v16
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NO_COVER_OR_OPENED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v10, v15, v16
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_HIDDEN_BY_KNOX:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v11, v15, v16
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SUW_TYPE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v12, v15, v16
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_LIGHT_OPAQUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v13, v15, v16
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v14, v15, v16
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->DATA_ENCRYPTED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v15, v16
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->ROTATION_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x11

    aput v17, v15, v16
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x12

    aput v17, v15, v16
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x13

    aput v17, v15, v16
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_SIDE_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x14

    aput v17, v15, v16
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_BOTTOM_GESTURAL_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x15

    aput v17, v15, v16
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_VERTICAL_LAYOUT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x16

    aput v17, v15, v16
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_MAIN_KEY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x17

    aput v17, v15, v16
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_EXTRA_KEY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x18

    aput v17, v15, v16
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_KEY_MARGIN:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x19

    aput v17, v15, v16
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->MIRROR_LINK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1a

    aput v17, v15, v16
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->LEFT_REMOTEVIEW_EXIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1b

    aput v17, v15, v16
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    :try_start_73
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->RIGHT_REMOTEVIEW_EXIST:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1c

    aput v17, v15, v16
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    :catch_73
    :try_start_74
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_REMOTEVIEW_DARKINTENSITY_CHANGED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1d

    aput v17, v15, v16
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    :catch_74
    :try_start_75
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GAME_MODE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1e

    aput v17, v15, v16
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    :catch_75
    :try_start_76
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->FLOATING_GAMETOOLS_SUPPORT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x1f

    aput v17, v15, v16
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    :catch_76
    :try_start_77
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->FLOATING_GAMETOOLS_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x20

    aput v17, v15, v16
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    :catch_77
    :try_start_78
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->IME_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x21

    aput v17, v15, v16
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    :catch_78
    :try_start_79
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->MAX_DEADZONE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x22

    aput v17, v15, v16
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    :catch_79
    :try_start_7a
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x23

    aput v17, v15, v16
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7b
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->ICONS_DARK:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x24

    aput v17, v15, v16
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7c
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x25

    aput v17, v15, v16
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7d
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_HINT:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x26

    aput v17, v15, v16
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7e
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->BUTTON_REVERSE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x27

    aput v17, v15, v16
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    :catch_7e
    :try_start_7f
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SPAY_HANDLER_SHOWING:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x28

    aput v17, v15, v16
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_80
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->PHYSICAL_KEYBOARD_ATTACHED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x29

    aput v17, v15, v16
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    :catch_80
    :try_start_81
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2a

    aput v17, v15, v16
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    :catch_81
    :try_start_82
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2b

    aput v17, v15, v16
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    :catch_82
    :try_start_83
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->GESTURE_INTERCEPT_WINDOW_ATTACHED:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2c

    aput v17, v15, v16
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    :catch_83
    :try_start_84
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->DESKTOP_DUAL_VIEW:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2d

    aput v17, v15, v16
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    :catch_84
    :try_start_85
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SWIPE_UP_AND_HOLE_POPUP_ENALBE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2e

    aput v17, v15, v16
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    :catch_85
    :try_start_86
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$NavBarStore$Conditions:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;->SWIPE_TWO_FINGER_POPUP_ENABLE:Lcom/android/systemui/statusbar/phone/store/NavBarStore$Conditions;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    const/16 v17, 0x2f

    aput v17, v15, v16
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    .line 336
    :catch_86
    invoke-static {}, Lcom/android/systemui/statusbar/phone/store/EventType;->values()[Lcom/android/systemui/statusbar/phone/store/EventType;

    move-result-object v15

    array-length v15, v15

    new-array v15, v15, [I

    sput-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    :try_start_87
    sget-object v15, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v16, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BOOT_COMPLETE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aput v0, v15, v16
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    :catch_87
    :try_start_88
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v15, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_FRAGMENT_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aput v1, v0, v15
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_88

    :catch_88
    :try_start_89
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_LIGHTBAR_CONTROLLER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_89

    :catch_89
    :try_start_8a
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_8a

    :catch_8a
    :try_start_8b
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_8b

    :catch_8b
    :try_start_8c
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_BAR_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8d
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_WINDOW_FOCUS_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8e
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8f
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_90
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SAVE_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_90

    :catch_90
    :try_start_91
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_FULLVIS_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_91

    :catch_91
    :try_start_92
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_ICONHINT_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_92

    :catch_92
    :try_start_93
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NIGHT_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_93

    :catch_93
    :try_start_94
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_94

    :catch_94
    :try_start_95
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_NAVBAR_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_95

    :catch_95
    :try_start_96
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_96

    :catch_96
    :try_start_97
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_OPEN_THEME_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_97

    :catch_97
    :try_start_98
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MIRROR_LINK_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_98

    :catch_98
    :try_start_99
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_99

    :catch_99
    :try_start_9a
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_9a

    :catch_9a
    :try_start_9b
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9c
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9d
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_SIDE_PADDING:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9e
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_LAYOUT_ID:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9f
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_SCREEN_INFO:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_a0
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_a0

    :catch_a0
    :try_start_a1
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a2
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_REMOTEVIEW_MANAGER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_a2

    :catch_a2
    :try_start_a3
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a4
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_a4

    :catch_a4
    :try_start_a5
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a6
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_a6

    :catch_a6
    :try_start_a7
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a8
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a9
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_a9} :catch_a9

    :catch_a9
    :try_start_aa
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_ab
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_ab} :catch_ab

    :catch_ab
    :try_start_ac
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_ac} :catch_ac

    :catch_ac
    :try_start_ad
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_ad} :catch_ad

    :catch_ad
    :try_start_ae
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ae} :catch_ae

    :catch_ae
    :try_start_af
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_DARK_ICONS:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_af} :catch_af

    :catch_af
    :try_start_b0
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_ICONS_DARK:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b1
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HIDE_KEYBOARD_BUTTON_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b2
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_ON_KEYBOARD_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_b2} :catch_b2

    :catch_b2
    :try_start_b3
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_GESTURE_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b4
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_BUTTON_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b5
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_CHANGE_PAY_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_b5} :catch_b5

    :catch_b5
    :try_start_b6
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_SENSITIVITY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b7
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_TYPE_CHANGED_FROM_NAVBAR_TILE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b8
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b9
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$statusbar$phone$store$EventType:[I

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DESKTOP_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_b9} :catch_b9

    :catch_b9
    return-void
.end method
