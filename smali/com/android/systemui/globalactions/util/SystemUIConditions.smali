.class public final enum Lcom/android/systemui/globalactions/util/SystemUIConditions;
.super Ljava/lang/Enum;
.source "SystemUIConditions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/globalactions/util/SystemUIConditions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CALLED_FROM_QUICK_PANEL:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

.field public static final enum PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v1, 0x0

    const-string v2, "IS_CLEAR_COVER_CLOSED"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 5
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v2, 0x1

    const-string v3, "IS_WHITE_THEME"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 6
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v3, 0x2

    const-string v4, "IS_SETTINGS_CHANGES_ALLOWED"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 7
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v4, 0x3

    const-string v5, "IS_CELLULAR_DATA_ALLOWED"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 8
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v5, 0x4

    const-string v6, "IS_POWER_OFF_ALLOWED"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 9
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v6, 0x5

    const-string v7, "IS_SAFE_MODE_ALLOWED"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 10
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v7, 0x6

    const-string v8, "IS_ENABLE_USE_OF_PACKET_DATA"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 11
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/4 v8, 0x7

    const-string v9, "IS_COM_CONTAINER_MODE"

    invoke-direct {v0, v9, v8}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 12
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v9, 0x8

    const-string v10, "GET_PROKIOSK_STATE"

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 13
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v10, 0x9

    const-string v11, "GET_POWER_DIALOG_CUSTOM_ITEMS_STATE"

    invoke-direct {v0, v11, v10}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 14
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v11, 0xa

    const-string v12, "IS_ALLOWED_SHOW_ACTIONS"

    invoke-direct {v0, v12, v11}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 15
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v12, 0xb

    const-string v13, "IS_KIOSK_MODE"

    invoke-direct {v0, v13, v12}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 16
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v13, 0xc

    const-string v14, "IS_DO_PROVISIONING_MODE"

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 17
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v14, 0xd

    const-string v15, "IS_STATUSBAR_EXPAND_DISABLED"

    invoke-direct {v0, v15, v14}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 18
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v15, 0xe

    const-string v14, "IS_BIXBY_PACKAGE_ENABLED"

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 19
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v14, "PWD_CHANGE_ENFORCED"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 20
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v14, "IS_CLEAR_SIDE_VIEW_COVER_CLOSED"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 21
    new-instance v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const-string v14, "IS_CALLED_FROM_QUICK_PANEL"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/globalactions/util/SystemUIConditions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CALLED_FROM_QUICK_PANEL:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    .line 3
    sget-object v14, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_WHITE_THEME:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ENABLE_USE_OF_PACKET_DATA:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_COM_CONTAINER_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_STATUSBAR_EXPAND_DISABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_BIXBY_PACKAGE_ENABLED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CALLED_FROM_QUICK_PANEL:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    .line 3
    const-class v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/globalactions/util/SystemUIConditions;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->$VALUES:[Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v0}, [Lcom/android/systemui/globalactions/util/SystemUIConditions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/globalactions/util/SystemUIConditions;

    return-object v0
.end method
