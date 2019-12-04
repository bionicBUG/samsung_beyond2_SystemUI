.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntegerStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

.field public static final enum REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 41
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v1, 0x0

    const-string v2, "REAL_LEVEL"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 42
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v2, 0x1

    const-string v3, "LEVEL"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 43
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v3, 0x2

    const-string v4, "LEVEL_MIN"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 44
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v4, 0x3

    const-string v5, "LEVEL_MAX"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 45
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v5, 0x4

    const-string v6, "ICON_TYPE"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 46
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v6, 0x5

    const-string v7, "AUDIBLE_LEVEL"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 47
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v7, 0x6

    const-string v8, "EAR_PROTECT_LEVEL"

    invoke-direct {v0, v8, v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 48
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/4 v8, 0x7

    const-string v9, "PRIORITY"

    invoke-direct {v0, v9, v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 49
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/16 v9, 0x8

    const-string v10, "ORIGINAL_PRIORITY"

    invoke-direct {v0, v10, v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    .line 40
    sget-object v10, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->REAL_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v10, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MIN:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->LEVEL_MAX:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ICON_TYPE:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->AUDIBLE_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->EAR_PROTECT_LEVEL:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->ORIGINAL_PRIORITY:Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    aput-object v1, v0, v9

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
    .locals 1

    .line 40
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;

    return-object v0
.end method
