.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegerStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

.field public static final enum TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 67
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v1, 0x0

    const-string v2, "PIN_DEVICE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 68
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v2, 0x1

    const-string v3, "ACTIVE_STREAM"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 69
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v3, 0x2

    const-string v4, "PROGRESS"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 70
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v4, 0x3

    const-string v5, "STREAM"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 71
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v5, 0x4

    const-string v6, "EAR_PROTECT_LEVEL"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 72
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v6, 0x5

    const-string v7, "TIME_OUT_CONTROLS"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 73
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v7, 0x6

    const-string v8, "TIME_OUT_CONTROLS_TEXT"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 74
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/4 v8, 0x7

    const-string v9, "COVER_TYPE"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 75
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v9, 0x8

    const-string v10, "MUSIC_FINE_VOLUME"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 76
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v10, 0x9

    const-string v11, "FLAGS"

    invoke-direct {v0, v11, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 77
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v11, 0xa

    const-string v12, "CUTOUT_HEIGHT"

    invoke-direct {v0, v12, v11}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    .line 66
    sget-object v12, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PIN_DEVICE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v12, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->ACTIVE_STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->STREAM:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->TIME_OUT_CONTROLS_TEXT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->COVER_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->MUSIC_FINE_VOLUME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->FLAGS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->CUTOUT_HEIGHT:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    aput-object v1, v0, v11

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;
    .locals 1

    .line 66
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;
    .locals 1

    .line 66
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;

    return-object v0
.end method
