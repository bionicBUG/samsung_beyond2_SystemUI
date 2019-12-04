.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StringStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

.field public static final enum PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

.field public static final enum PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 113
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    const/4 v1, 0x0

    const-string v2, "PIN_APP_NAME"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    .line 114
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    const/4 v2, 0x1

    const-string v3, "PIN_DEVICE_NAME"

    invoke-direct {v0, v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    .line 112
    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_APP_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    aput-object v3, v0, v1

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->PIN_DEVICE_NAME:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;
    .locals 1

    .line 112
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;
    .locals 1

    .line 112
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;

    return-object v0
.end method
