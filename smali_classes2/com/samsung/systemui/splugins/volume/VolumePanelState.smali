.class public Lcom/samsung/systemui/splugins/volume/VolumePanelState;
.super Ljava/lang/Object;
.source "VolumePanelState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/volume/VolumePanelState$Builder;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;,
        Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
    }
.end annotation


# static fields
.field public static final DEVICE_NONE:I

.field public static final DIALOG_EXPAND_TIMEOUT_MILLIS:I = 0x1388

.field public static final DIALOG_HOVERING_TIMEOUT_MILLIS:I = 0x3e80

.field public static final DIALOG_ODI_CAPTIONS_TOOLTIP_TIMEOUT_MILLIS:I = 0x1388

.field public static final DIALOG_SAFETYWARNING_TIMEOUT_MILLIS:I = 0x1388

.field public static final DIALOG_TIMEOUT_MILLIS:I = 0xbb8

.field public static final FLAG_CONTENT_CONTROLS:I

.field public static final FLAG_CONTENT_TEXT:I


# instance fields
.field private mBooleanState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomState:Ljava/lang/Object;

.field private mIntegerState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLongState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

.field private mStringState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeRowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->DEVICE_NONE:I

    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->DEVICE_NONE:I

    .line 17
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_CONTENT_TEXT:I

    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_TEXT:I

    .line 18
    sget v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->FLAG_CONTENT_CONTROLS:I

    sput v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->FLAG_CONTENT_CONTROLS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mVolumeRowList:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mIntegerState:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mBooleanState:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mLongState:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStringState:Ljava/util/HashMap;

    .line 118
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;->STATE_IDLE:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    iput-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelState$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/List;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mVolumeRowList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mVolumeRowList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;)Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mBooleanState:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mBooleanState:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mIntegerState:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mIntegerState:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mLongState:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mLongState:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStringState:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$602(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStringState:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Ljava/lang/Object;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mCustomState:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mCustomState:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public getCustomState()Ljava/lang/Object;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mCustomState:Ljava/lang/Object;

    return-object p0
.end method

.method public getIntegerValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$IntegerStateKey;)I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mIntegerState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mIntegerState:Ljava/util/HashMap;

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

.method public getLongValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$LongStateKey;)J
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mLongState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mLongState:Ljava/util/HashMap;

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

.method public getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStateType:Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    return-object p0
.end method

.method public getStringValue(Lcom/samsung/systemui/splugins/volume/VolumePanelState$StringStateKey;)Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStringState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mStringState:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getVolumeRowList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/systemui/splugins/volume/VolumePanelRow;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mVolumeRowList:Ljava/util/List;

    return-object p0
.end method

.method public isEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState$BooleanStateKey;)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mBooleanState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->mBooleanState:Ljava/util/HashMap;

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
