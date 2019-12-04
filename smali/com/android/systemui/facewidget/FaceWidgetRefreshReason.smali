.class public final enum Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;
.super Ljava/lang/Enum;
.source "FaceWidgetRefreshReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum ADAPTIVE_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum BOOT_COMPLETED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum CLOCK_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum CLOCK_PACKAGE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum CLOCK_STYLE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum DEFAULT:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum DOZE_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum ON_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum RTL_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum SCREEN_ORIENTATION_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum SHADOW_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum VISIBILITY_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

.field public static final enum WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 4
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->DEFAULT:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 5
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v2, 0x1

    const-string v3, "DOZE_TIME_TICK"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->DOZE_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 6
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v3, 0x2

    const-string v4, "ON_TIME_TICK"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->ON_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 7
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v4, 0x3

    const-string v5, "CLOCK_PACKAGE_CHANGED"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_PACKAGE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 8
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v5, 0x4

    const-string v6, "CLOCK_STYLE_CHANGED"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_STYLE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 9
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v6, 0x5

    const-string v7, "CLOCK_COLOR_CHANGED"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 10
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v7, 0x6

    const-string v8, "RTL_CHANGED"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->RTL_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 11
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v8, 0x7

    const-string v9, "SCREEN_ORIENTATION_CHANGED"

    invoke-direct {v0, v9, v8}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->SCREEN_ORIENTATION_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 12
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/16 v9, 0x8

    const-string v10, "BOOT_COMPLETED"

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->BOOT_COMPLETED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 13
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/16 v10, 0x9

    const-string v11, "VISIBILITY_CHANGED"

    invoke-direct {v0, v11, v10}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->VISIBILITY_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 14
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/16 v11, 0xa

    const-string v12, "WHITE_BG_CHANGED"

    invoke-direct {v0, v12, v11}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 15
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/16 v12, 0xb

    const-string v13, "SHADOW_CHANGED"

    invoke-direct {v0, v13, v12}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->SHADOW_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 16
    new-instance v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/16 v13, 0xc

    const-string v14, "ADAPTIVE_COLOR_CHANGED"

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->ADAPTIVE_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    .line 3
    sget-object v14, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->DEFAULT:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->DOZE_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->ON_TIME_TICK:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_PACKAGE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_STYLE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->RTL_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->SCREEN_ORIENTATION_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->BOOT_COMPLETED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->VISIBILITY_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->SHADOW_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->ADAPTIVE_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->$VALUES:[Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;
    .locals 1

    .line 3
    const-class v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->$VALUES:[Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-virtual {v0}, [Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    return-object v0
.end method
