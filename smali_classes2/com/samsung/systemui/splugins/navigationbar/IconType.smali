.class public final enum Lcom/samsung/systemui/splugins/navigationbar/IconType;
.super Ljava/lang/Enum;
.source "IconType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/navigationbar/IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

.field public static final enum TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v1, 0x0

    const-string v2, "TYPE_BACK"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 8
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v2, 0x1

    const-string v3, "TYPE_BACK_LAND"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 9
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v3, 0x2

    const-string v4, "TYPE_BACK_ALT"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 10
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v4, 0x3

    const-string v5, "TYPE_BACK_ALT_LAND"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 11
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v5, 0x4

    const-string v6, "TYPE_HOME"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 12
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v6, 0x5

    const-string v7, "TYPE_RECENT"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 13
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v7, 0x6

    const-string v8, "TYPE_DOCKED"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 14
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/4 v8, 0x7

    const-string v9, "TYPE_IME"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 15
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v9, 0x8

    const-string v10, "TYPE_MENU"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 16
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v10, 0x9

    const-string v11, "TYPE_SHOW_PIN"

    invoke-direct {v0, v11, v10}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 17
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v11, 0xa

    const-string v12, "TYPE_HIDE_PIN"

    invoke-direct {v0, v12, v11}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 18
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v12, 0xb

    const-string v13, "TYPE_A11Y"

    invoke-direct {v0, v13, v12}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 19
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v13, 0xc

    const-string v14, "TYPE_BACK_CAR"

    invoke-direct {v0, v14, v13}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 20
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v14, 0xd

    const-string v15, "TYPE_BACK_LAND_CAR"

    invoke-direct {v0, v15, v14}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 21
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v15, 0xe

    const-string v14, "TYPE_BACK_ALT_CAR"

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 22
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v14, "TYPE_BACK_ALT_LAND_CAR"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 23
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v14, "TYPE_HOME_CAR"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 24
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v14, "TYPE_RESTART"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 25
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v14, "TYPE_GESTURE_HINT"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 26
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v14, "TYPE_GESTURE_HINT_VI"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 27
    new-instance v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const-string v14, "TYPE_GESTURE_HANDLE_HINT"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/samsung/systemui/splugins/navigationbar/IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

    .line 6
    sget-object v14, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_DOCKED:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_MENU:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_SHOW_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HIDE_PIN:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT_LAND_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME_CAR:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RESTART:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HINT_VI:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_GESTURE_HANDLE_HINT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/navigationbar/IconType;
    .locals 1

    .line 6
    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/IconType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/navigationbar/IconType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->$VALUES:[Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/navigationbar/IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/navigationbar/IconType;

    return-object v0
.end method
