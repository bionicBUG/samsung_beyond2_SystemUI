.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BooleanStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

.field public static final enum VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 28
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v1, 0x0

    const-string v2, "IMPORTANT"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 29
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v2, 0x1

    const-string v3, "DYNAMIC"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 30
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v3, 0x2

    const-string v4, "ROUTED_TO_BLUETOOTH"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 31
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v4, 0x3

    const-string v5, "MUTED"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 32
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v5, 0x4

    const-string v6, "SLIDER_ENABLED"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 33
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v6, 0x5

    const-string v7, "TRACKING"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 34
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v7, 0x6

    const-string v8, "VISIBILITY"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 35
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/4 v8, 0x7

    const-string v9, "ICON_CLICKABLE"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 36
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/16 v9, 0x8

    const-string v10, "ICON_ENABLED"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 37
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/16 v10, 0x9

    const-string v11, "ACTIVE_NOW"

    invoke-direct {v0, v11, v10}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    .line 27
    sget-object v11, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->IMPORTANT:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v11, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->DYNAMIC:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ROUTED_TO_BLUETOOTH:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->MUTED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->SLIDER_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->VISIBILITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_CLICKABLE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ICON_ENABLED:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->ACTIVE_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
    .locals 1

    .line 27
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;

    return-object v0
.end method
