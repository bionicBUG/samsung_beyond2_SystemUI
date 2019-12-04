.class public Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;
.super Ljava/lang/Object;
.source "KeyguardSecIndicationPolicy.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyguardSecIndicationPolicy"


# instance fields
.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/IndicationPosition;",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/systemui/statusbar/IndicationItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mItemIdSeq:I

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/IndicationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTopItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/IndicationPosition;",
            "Lcom/android/systemui/statusbar/IndicationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mItemIdSeq:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mListenerList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    return-void
.end method

.method private addLogs(Ljava/lang/String;)V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/IndicationPosition;",
            ")",
            "Ljava/util/PriorityQueue<",
            "Lcom/android/systemui/statusbar/IndicationItem;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v0

    return-object v1

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 92
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mIndicationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/PriorityQueue;

    return-object p0
.end method

.method static synthetic lambda$addIndicationEvent$0(Lcom/android/systemui/statusbar/IndicationEventType;Lcom/android/systemui/statusbar/IndicationItem;)Z
    .locals 1

    .line 64
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->getEventType()Lcom/android/systemui/statusbar/IndicationEventType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$addIndicationEvent$1(Lcom/android/systemui/statusbar/IndicationEventType;Lcom/android/systemui/statusbar/IndicationItem;)Z
    .locals 1

    .line 68
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->getEventType()Lcom/android/systemui/statusbar/IndicationEventType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$removeAllIndications$2(Lcom/android/systemui/statusbar/IndicationItem;)Z
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/IndicationItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$removeIndicationEvent$3(Lcom/android/systemui/statusbar/IndicationEventType;Lcom/android/systemui/statusbar/IndicationItem;)Z
    .locals 0

    .line 115
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->getEventType()Lcom/android/systemui/statusbar/IndicationEventType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$removeIndicationItem$4(ILcom/android/systemui/statusbar/IndicationItem;)Z
    .locals 0

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/IndicationItem;->getItemId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$updateTopItem$5(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;Lcom/android/systemui/statusbar/IndicationChangeListener;)V
    .locals 0

    .line 139
    invoke-interface {p2, p0, p1}, Lcom/android/systemui/statusbar/IndicationChangeListener;->onIndicationChanged(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V

    return-void
.end method

.method private removeIndicationItem(Lcom/android/systemui/statusbar/IndicationPosition;I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "remove Item"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%12s pos = %7s %28s, id = %5d, "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$5nzJ_KB3kUDeDJxHA8yoC4B-PKQ;

    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$5nzJ_KB3kUDeDJxHA8yoC4B-PKQ;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void
.end method

.method private updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V
    .locals 5

    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/IndicationItem;

    .line 133
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/IndicationItem;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v0, :cond_1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/IndicationItem;->getItemId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/IndicationItem;->getItemId()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "update top"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string v1, "%12s pos = %7s, item = %s -> %s"

    .line 136
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$zfXsAP1kxXTbuRjJecT01wSX344;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$zfXsAP1kxXTbuRjJecT01wSX344;-><init>(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/IndicationItem;->isPersistantEvent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/IndicationItem;->getDurationTime()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$t4qSQJHWL1OXuoWK4VkK1uxhCNk;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V

    .line 143
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    :cond_2
    return-void
.end method


# virtual methods
.method public addIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p2

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_LOW:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/IndicationEventType;->EMPTY_HIGH:Lcom/android/systemui/statusbar/IndicationEventType;

    if-eq v3, v1, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "remove empty"

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    aput-object v3, v1, v4

    const-string v2, "%12s pos = %7s, type = %20s"

    .line 54
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void

    .line 59
    :cond_0
    iget v7, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mItemIdSeq:I

    add-int/lit8 v1, v7, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mItemIdSeq:I

    .line 60
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v9

    const-wide/16 v10, -0x1

    cmp-long v1, p5, v10

    const/4 v8, 0x5

    const/4 v10, 0x4

    if-nez v1, :cond_2

    .line 63
    invoke-virtual {v9}, Ljava/util/PriorityQueue;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v11, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$tNa_UUidCrBLyifgDUNg1GmDt4U;

    invoke-direct {v11, v3}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$tNa_UUidCrBLyifgDUNg1GmDt4U;-><init>(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 64
    invoke-interface {v1, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    const-string v11, "%12s pos = %7s, type = %20s, id = %5d, text = %s"

    if-lez v1, :cond_1

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "update Event"

    aput-object v8, v1, v5

    aput-object p1, v1, v6

    aput-object v3, v1, v4

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p3, v1, v10

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$A9PhD-uy4mimmk4ZjtgdSVZIOXU;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$A9PhD-uy4mimmk4ZjtgdSVZIOXU;-><init>(Lcom/android/systemui/statusbar/IndicationEventType;)V

    invoke-virtual {v9, v1}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_1
    new-array v1, v8, [Ljava/lang/Object;

    const-string v8, "add Event"

    aput-object v8, v1, v5

    aput-object p1, v1, v6

    aput-object v3, v1, v4

    .line 70
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p3, v1, v10

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    .line 72
    :goto_0
    new-instance v10, Lcom/android/systemui/statusbar/IndicationItem;

    const-wide/16 v11, -0x1

    move-object v1, v10

    move v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide v6, v11

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/IndicationItem;-><init>(ILcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    invoke-virtual {v9, v10}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v11, "add T Event"

    aput-object v11, v1, v5

    aput-object p1, v1, v6

    aput-object v3, v1, v4

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p3, v1, v10

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "%12s pos = %7s, type = %20s, id = %5d, text = %s, duration = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    .line 75
    new-instance v10, Lcom/android/systemui/statusbar/IndicationItem;

    move-object v1, v10

    move v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/IndicationItem;-><init>(ILcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;JZ)V

    invoke-virtual {v9, v10}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void
.end method

.method public addListener(Lcom/android/systemui/statusbar/IndicationChangeListener;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$VL4mU4p1YG_vPccG6nF72tYp5XU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$VL4mU4p1YG_vPccG6nF72tYp5XU;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;Lcom/android/systemui/statusbar/IndicationChangeListener;)V

    .line 152
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "KeyguardSecIndicationPolicy history"

    .line 177
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mDumpLogs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 179
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$addListener$7$KeyguardSecIndicationPolicy(Lcom/android/systemui/statusbar/IndicationChangeListener;Lcom/android/systemui/statusbar/IndicationPosition;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->mTopItemMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/IndicationItem;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/IndicationChangeListener;->onIndicationChanged(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V

    return-void
.end method

.method public synthetic lambda$updateTopItem$6$KeyguardSecIndicationPolicy(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/IndicationItem;->getItemId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeIndicationItem(Lcom/android/systemui/statusbar/IndicationPosition;I)V

    return-void
.end method

.method public removeAllIndications()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "removeAll"

    aput-object v3, v1, v2

    const-string v3, "%12s"

    .line 96
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/systemui/statusbar/IndicationPosition;

    .line 98
    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    aput-object v3, v1, v2

    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    aput-object v3, v1, v0

    .line 100
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 101
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v4

    .line 102
    sget-object v5, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$E9b_IYfyUuvETq2DFBD-NUujghU;

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    .line 103
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeIndicationEvent(Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 1

    .line 108
    sget-object v0, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public removeIndicationEvent(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "remove Item"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string v1, "%12s pos = %7s, type = %20s"

    .line 112
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->addLogs(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->getIndicationList(Lcom/android/systemui/statusbar/IndicationPosition;)Ljava/util/PriorityQueue;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$9tx0NIINuFZ8u9A3GA9RxaByu1g;

    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardSecIndicationPolicy$9tx0NIINuFZ8u9A3GA9RxaByu1g;-><init>(Lcom/android/systemui/statusbar/IndicationEventType;)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->updateTopItem(Lcom/android/systemui/statusbar/IndicationPosition;)V

    return-void
.end method
