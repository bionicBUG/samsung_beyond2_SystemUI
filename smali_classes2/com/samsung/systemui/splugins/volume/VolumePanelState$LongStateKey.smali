.class public final enum Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;
.super Ljava/lang/Enum;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LongStateKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

.field public static final enum SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    const/4 v1, 0x0

    const-string v2, "SYSTEM_TIME_NOW"

    invoke-direct {v0, v2, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    .line 108
    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->SYSTEM_TIME_NOW:Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;
    .locals 1

    .line 108
    const-class v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;
    .locals 1

    .line 108
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->$VALUES:[Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    invoke-virtual {v0}, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;

    return-object v0
.end method
