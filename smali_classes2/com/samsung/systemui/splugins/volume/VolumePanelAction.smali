.class public Lcom/samsung/systemui/splugins/volume/VolumePanelAction;
.super Ljava/lang/Object;
.source "VolumePanelAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;
    }
.end annotation


# instance fields
.field private mActionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

.field private mBool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomAction:Ljava/lang/Object;

.field private mDisabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImportant:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLong:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnImportant:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mInt:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mBool:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mString:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mLong:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mImportant:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mUnImportant:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mEnabled:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mDisabled:Ljava/util/List;

    .line 116
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_NONE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mActionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mInt:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mBool:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mString:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mLong:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mImportant:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mUnImportant:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mEnabled:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mDisabled:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mActionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;Lcom/samsung/systemui/splugins/volume/VolumePanelAction$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mActionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mLong:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mLong:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mActionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/lang/Object;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mCustomAction:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mCustomAction:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Lcom/samsung/systemui/splugins/volume/VolumeState;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/samsung/systemui/splugins/volume/VolumeState;)Lcom/samsung/systemui/splugins/volume/VolumeState;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mImportant:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mImportant:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mUnImportant:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mUnImportant:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mEnabled:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mEnabled:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/List;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mDisabled:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mDisabled:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mInt:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$702(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mInt:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mString:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$802(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mString:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mBool:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$902(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mBool:Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public getActionType()Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mActionType:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    return-object p0
.end method

.method public getCustomAction()Ljava/lang/Object;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mCustomAction:Ljava/lang/Object;

    return-object p0
.end method

.method public getDisabledStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mDisabled:Ljava/util/List;

    return-object p0
.end method

.method public getEnabledStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mEnabled:Ljava/util/List;

    return-object p0
.end method

.method public getImportantStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mImportant:Ljava/util/List;

    return-object p0
.end method

.method public getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$IntegerStateKey;)I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mInt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mInt:Ljava/util/HashMap;

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

.method public getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$LongStateKey;)J
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mLong:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mLong:Ljava/util/HashMap;

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

.method public getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$StringStateKey;)Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mString:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mString:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getUnImportantStreamList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mUnImportant:Ljava/util/List;

    return-object p0
.end method

.method public getVolumeState()Lcom/samsung/systemui/splugins/volume/VolumeState;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mVolumeState:Lcom/samsung/systemui/splugins/volume/VolumeState;

    return-object p0
.end method

.method public isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$BooleanStateKey;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mBool:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction;->mBool:Ljava/util/HashMap;

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
