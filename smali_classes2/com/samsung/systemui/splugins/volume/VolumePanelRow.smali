.class public Lcom/samsung/systemui/splugins/volume/VolumePanelRow;
.super Ljava/lang/Object;
.source "VolumePanelRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;
    }
.end annotation


# static fields
.field public static final BASE_PRIORITY:I = 0x2

.field public static final ICON_AUDIO_ACC:I = 0x4

.field public static final ICON_BLUETOOTH:I = 0x2

.field public static final ICON_DEFAULT:I = 0x3

.field public static final ICON_MIRRORING:I = 0x5

.field public static final ICON_MUTE:I = 0x1

.field public static final ICON_REMOTE:I = 0x6

.field public static final ICON_REMOTE_MUTE:I = 0x7

.field public static final ICON_VIBRATE:I = 0x0

.field public static final PROGRESS_BAR_UNIT:I = 0x64

.field public static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L


# instance fields
.field private mBool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLong:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamType:I

.field private mString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mBool:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mInt:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mString:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mLong:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I
    .locals 0

    .line 5
    iget p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mStreamType:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;I)I
    .locals 0

    .line 5
    iput p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mStreamType:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mBool:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mBool:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mInt:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mInt:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mString:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mString:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mLong:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mLong:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$IntegerStateKey;)I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mInt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mInt:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$LongStateKey;)J
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mLong:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mLong:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public getStreamType()I
    .locals 0

    .line 64
    iget p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mStreamType:I

    return p0
.end method

.method public getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$StringStateKey;)Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mString:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mString:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelRow$BooleanStateKey;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mBool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->mBool:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
