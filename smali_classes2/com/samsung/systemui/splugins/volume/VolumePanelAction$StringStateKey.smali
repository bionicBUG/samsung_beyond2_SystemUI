.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum BTSCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

.field public static final enum SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 107
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v1, 0x0

    const-string v2, "SMART_VIEW_DEVICE_NAME"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 108
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v2, 0x1

    const-string v3, "BTSCO_DEVICE_NAME"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BTSCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 109
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v3, 0x2

    const-string v4, "ACTIVE_BT_DEVICE_NAME"

    invoke-direct {v0, v4, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 110
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v4, 0x3

    const-string v5, "PIN_APP_NAME"

    invoke-direct {v0, v5, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 111
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v5, 0x4

    const-string v6, "PIN_DEVICE_NAME"

    invoke-direct {v0, v6, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 112
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v6, 0x5

    const-string v7, "BT_SCO_DEVICE_NAME"

    invoke-direct {v0, v7, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    .line 106
    sget-object v7, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->SMART_VIEW_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    aput-object v7, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BTSCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->ACTIVE_BT_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->BT_SCO_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
    .locals 1

    .line 106
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;
    .locals 1

    .line 106
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;

    return-object v0
.end method
