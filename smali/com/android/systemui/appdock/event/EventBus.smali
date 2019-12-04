.class public Lcom/android/systemui/appdock/event/EventBus;
.super Landroid/content/BroadcastReceiver;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/appdock/event/EventBus$InterprocessEvent;,
        Lcom/android/systemui/appdock/event/EventBus$Event;
    }
.end annotation


# static fields
.field private static final EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/appdock/event/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sDefaultBus:Lcom/android/systemui/appdock/event/EventBus;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mEventTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/appdock/event/EventBus$Event;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/event/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInterprocessEventNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/systemui/appdock/event/EventBus$InterprocessEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriberTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/event/EventHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscribers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/appdock/event/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 297
    new-instance v0, Lcom/android/systemui/appdock/event/EventBus$1;

    invoke-direct {v0}, Lcom/android/systemui/appdock/event/EventBus$1;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/event/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/appdock/event/EventBus;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscribers:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/appdock/event/EventBus;Lcom/android/systemui/appdock/event/EventHandler;Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/appdock/event/EventBus;->processEvent(Lcom/android/systemui/appdock/event/EventHandler;Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method

.method private findRegisteredSubscriber(Ljava/lang/Object;Z)Z
    .locals 3

    .line 859
    iget-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 860
    iget-object v2, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appdock/event/Subscriber;

    .line 861
    invoke-virtual {v2}, Lcom/android/systemui/appdock/event/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_0

    .line 863
    iget-object p0, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getDefault()Lcom/android/systemui/appdock/event/EventBus;
    .locals 3

    .line 361
    sget-object v0, Lcom/android/systemui/appdock/event/EventBus;->sDefaultBus:Lcom/android/systemui/appdock/event/EventBus;

    if-nez v0, :cond_1

    .line 362
    sget-object v0, Lcom/android/systemui/appdock/event/EventBus;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    sget-object v1, Lcom/android/systemui/appdock/event/EventBus;->sDefaultBus:Lcom/android/systemui/appdock/event/EventBus;

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Lcom/android/systemui/appdock/event/EventBus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/appdock/event/EventBus;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/systemui/appdock/event/EventBus;->sDefaultBus:Lcom/android/systemui/appdock/event/EventBus;

    .line 369
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 370
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/appdock/event/EventBus;->sDefaultBus:Lcom/android/systemui/appdock/event/EventBus;

    return-object v0
.end method

.method private isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/util/MutableBoolean;",
            ")Z"
        }
    .end annotation

    .line 876
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    .line 877
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 878
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 879
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, p2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 881
    const-class p0, Lcom/android/systemui/appdock/event/EventBus$InterprocessEvent;

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 882
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "onInterprocessBusEvent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 883
    iput-boolean v0, p3, Landroid/util/MutableBoolean;->value:Z

    return v0

    .line 885
    :cond_0
    const-class p0, Lcom/android/systemui/appdock/event/EventBus$Event;

    aget-object p2, p2, v1

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 886
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onBusEvent"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 887
    iput-boolean v1, p3, Landroid/util/MutableBoolean;->value:Z

    return v0

    :cond_1
    return v1
.end method

.method private static logWithPid(Ljava/lang/String;)V
    .locals 2

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EventBus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processEvent(Lcom/android/systemui/appdock/event/EventHandler;Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 2

    const-string p0, "EventBus"

    .line 796
    iget-boolean v0, p2, Lcom/android/systemui/appdock/event/EventBus$Event;->cancelled:Z

    if-eqz v0, :cond_1

    .line 797
    iget-boolean p0, p2, Lcom/android/systemui/appdock/event/EventBus$Event;->trace:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Event dispatch cancelled"

    .line 798
    invoke-static {p0}, Lcom/android/systemui/appdock/event/EventBus;->logWithPid(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 804
    :cond_1
    :try_start_0
    iget-boolean v0, p2, Lcom/android/systemui/appdock/event/EventBus$Event;->trace:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 805
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/appdock/event/EventHandler;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/appdock/event/EventBus;->logWithPid(Ljava/lang/String;)V

    .line 807
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/appdock/event/EventHandler;->subscriber:Lcom/android/systemui/appdock/event/Subscriber;

    invoke-virtual {v0}, Lcom/android/systemui/appdock/event/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 813
    iget-object p1, p1, Lcom/android/systemui/appdock/event/EventHandler;->method:Lcom/android/systemui/appdock/event/EventHandlerMethod;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/appdock/event/EventHandlerMethod;->invoke(Ljava/lang/Object;Lcom/android/systemui/appdock/event/EventBus$Event;)V

    goto :goto_2

    :cond_3
    const-string p1, "Failed to deliver event to null subscriber"

    .line 822
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 827
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 825
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "Failed to invoke method"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private queueEvent(Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 6

    .line 742
    iget-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p1}, Lcom/android/systemui/appdock/event/EventBus$Event;->onPreDispatch()V

    .line 748
    invoke-virtual {p1}, Lcom/android/systemui/appdock/event/EventBus$Event;->onPostDispatch()V

    return-void

    .line 754
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/appdock/event/EventBus$Event;->onPreDispatch()V

    .line 758
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 759
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 761
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appdock/event/EventHandler;

    .line 762
    iget-object v5, v4, Lcom/android/systemui/appdock/event/EventHandler;->subscriber:Lcom/android/systemui/appdock/event/Subscriber;

    invoke-virtual {v5}, Lcom/android/systemui/appdock/event/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 763
    iget-boolean v5, p1, Lcom/android/systemui/appdock/event/EventBus$Event;->requiresPost:Z

    if-eqz v5, :cond_1

    .line 764
    iget-object v3, p0, Lcom/android/systemui/appdock/event/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/appdock/event/EventBus$4;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/systemui/appdock/event/EventBus$4;-><init>(Lcom/android/systemui/appdock/event/EventBus;Lcom/android/systemui/appdock/event/EventHandler;Lcom/android/systemui/appdock/event/EventBus$Event;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    goto :goto_1

    .line 772
    :cond_1
    invoke-direct {p0, v4, p1}, Lcom/android/systemui/appdock/event/EventBus;->processEvent(Lcom/android/systemui/appdock/event/EventHandler;Lcom/android/systemui/appdock/event/EventBus$Event;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 779
    iget-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/appdock/event/EventBus$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/appdock/event/EventBus$5;-><init>(Lcom/android/systemui/appdock/event/EventBus;Lcom/android/systemui/appdock/event/EventBus$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 786
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/appdock/event/EventBus$Event;->onPostDispatch()V

    :goto_2
    return-void
.end method

.method private registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V
    .locals 12

    .line 648
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 649
    iget-object v2, p0, Lcom/android/systemui/appdock/event/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 654
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/appdock/event/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 663
    :cond_0
    new-instance v1, Lcom/android/systemui/appdock/event/Subscriber;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/android/systemui/appdock/event/Subscriber;-><init>(Ljava/lang/Object;J)V

    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 665
    iget-object v2, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 673
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/appdock/event/EventHandlerMethod;

    .line 674
    iget-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v2, p3, Lcom/android/systemui/appdock/event/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 675
    new-instance v2, Lcom/android/systemui/appdock/event/EventHandler;

    invoke-direct {v2, v1, p3, p2}, Lcom/android/systemui/appdock/event/EventHandler;-><init>(Lcom/android/systemui/appdock/event/Subscriber;Lcom/android/systemui/appdock/event/EventHandlerMethod;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-direct {p0, v0}, Lcom/android/systemui/appdock/event/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    goto :goto_0

    .line 678
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 687
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 688
    iget-object v3, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v3, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v3, Landroid/util/MutableBoolean;

    invoke-direct {v3, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 694
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 695
    array-length v4, p1

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, p1, v5

    .line 696
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 697
    iput-boolean v0, v3, Landroid/util/MutableBoolean;->value:Z

    .line 698
    invoke-direct {p0, v6, v7, v3}, Lcom/android/systemui/appdock/event/EventBus;->isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 699
    aget-object v7, v7, v0

    .line 700
    iget-object v8, p0, Lcom/android/systemui/appdock/event/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_3

    .line 702
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 703
    iget-object v9, p0, Lcom/android/systemui/appdock/event/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_3
    iget-boolean v9, v3, Landroid/util/MutableBoolean;->value:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :try_start_0
    new-array v10, v9, [Ljava/lang/Class;

    .line 708
    const-class v11, Landroid/os/Bundle;

    aput-object v11, v10, v0

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 710
    iget-object v10, p0, Lcom/android/systemui/appdock/event/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 713
    iput-boolean v9, p3, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 716
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Expected InterprocessEvent to have a Bundle constructor"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 719
    :cond_4
    :goto_2
    new-instance v9, Lcom/android/systemui/appdock/event/EventHandlerMethod;

    invoke-direct {v9, v6, v7}, Lcom/android/systemui/appdock/event/EventHandlerMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 720
    new-instance v6, Lcom/android/systemui/appdock/event/EventHandler;

    invoke-direct {v6, v1, v9, p2}, Lcom/android/systemui/appdock/event/EventHandler;-><init>(Lcom/android/systemui/appdock/event/Subscriber;Lcom/android/systemui/appdock/event/EventHandlerMethod;I)V

    .line 721
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-direct {p0, v8}, Lcom/android/systemui/appdock/event/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-void

    .line 650
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not register() a subscriber from a non-main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sortEventHandlersByPriority(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/appdock/event/EventHandler;",
            ">;)V"
        }
    .end annotation

    .line 917
    sget-object p0, Lcom/android/systemui/appdock/event/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "interprocess_event_bundle"

    .line 571
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 572
    iget-object v0, p0, Lcom/android/systemui/appdock/event/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 574
    const-class v2, Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 575
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/appdock/event/EventBus$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 580
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "EventBus"

    const-string p2, "Failed to create InterprocessEvent"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public post(Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 1

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p1, Lcom/android/systemui/appdock/event/EventBus$Event;->requiresPost:Z

    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p1, Lcom/android/systemui/appdock/event/EventBus$Event;->cancelled:Z

    .line 517
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/event/EventBus;->queueEvent(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/appdock/event/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    return-void
.end method

.method public send(Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 4

    .line 490
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 491
    iget-object v2, p0, Lcom/android/systemui/appdock/event/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p1, Lcom/android/systemui/appdock/event/EventBus$Event;->requiresPost:Z

    .line 501
    iput-boolean v0, p1, Lcom/android/systemui/appdock/event/EventBus$Event;->cancelled:Z

    .line 502
    invoke-direct {p0, p1}, Lcom/android/systemui/appdock/event/EventBus;->queueEvent(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    return-void

    .line 492
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not send() a message from a non-main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendOntoMainThread(Lcom/android/systemui/appdock/event/EventBus$Event;)V
    .locals 4

    .line 525
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 526
    iget-object v2, p0, Lcom/android/systemui/appdock/event/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/event/EventBus;->post(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/appdock/event/EventBus;->send(Lcom/android/systemui/appdock/event/EventBus$Event;)V

    :goto_0
    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 5

    .line 445
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 446
    iget-object v2, p0, Lcom/android/systemui/appdock/event/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 451
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/appdock/event/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 455
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 456
    iget-object v2, p0, Lcom/android/systemui/appdock/event/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 460
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/appdock/event/EventHandlerMethod;

    .line 461
    iget-object v3, p0, Lcom/android/systemui/appdock/event/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/android/systemui/appdock/event/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 462
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-ltz v3, :cond_1

    .line 463
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/appdock/event/EventHandler;

    iget-object v4, v4, Lcom/android/systemui/appdock/event/EventHandler;->subscriber:Lcom/android/systemui/appdock/event/Subscriber;

    invoke-virtual {v4}, Lcom/android/systemui/appdock/event/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 464
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return-void

    .line 447
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Can not unregister() a subscriber from a non-main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
