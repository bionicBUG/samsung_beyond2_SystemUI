.class public Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;
.super Ljava/lang/Object;
.source "StoreLogUtil.java"


# static fields
.field private static mLoggingStarted:Z


# instance fields
.field private mDisabledEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/store/EventType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LOGGING_BEFORE_BOOT_COMPLETE:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mLoggingStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_TINT:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isEventLogEnabled(Lcom/android/systemui/statusbar/phone/store/EventType;)Z
    .locals 3

    .line 99
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mLoggingStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mDisabledEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$printEventLog$0(Ljava/lang/StringBuilder;Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public debugPrintLog(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public printEventLog(ILjava/lang/Object;Lcom/android/systemui/statusbar/phone/store/EventType;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/statusbar/phone/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/phone/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->isEventLogEnabled(Lcom/android/systemui/statusbar/phone/store/EventType;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "--"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "handleEvent "

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 53
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[EventType] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " [Module] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance p1, Lcom/android/systemui/statusbar/phone/util/-$$Lambda$StoreLogUtil$6CY794JlEDRlvmMXodeMcXWfpSc;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/util/-$$Lambda$StoreLogUtil$6CY794JlEDRlvmMXodeMcXWfpSc;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {p4, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBarStoreImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public printLog(ILjava/lang/String;)V
    .locals 2

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "--"

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBarStoreImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printResultLog(ILcom/android/systemui/statusbar/phone/store/EventType;Ljava/lang/Object;)V
    .locals 2

    .line 67
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->isEventLogEnabled(Lcom/android/systemui/statusbar/phone/store/EventType;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "--"

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getResult("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBarStoreImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public startLogging()V
    .locals 0

    const/4 p0, 0x1

    .line 34
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/util/StoreLogUtil;->mLoggingStarted:Z

    return-void
.end method
