.class Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;
.super Ljava/lang/Object;
.source "BubbleContainerItemController.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mContext:Landroid/content/Context;

    .line 65
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 66
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private hasSameNotificationKey(Ljava/lang/String;)Z
    .locals 2

    .line 303
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 304
    instance-of v1, v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;

    .line 305
    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private publishItemIfNeeded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->readyToPublishItem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ItemController] publishItemIfNeededs item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->publishCompleted()V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v3, 0x10

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_1

    const-string p1, "[ItemController] publishItemIfNeeded failed because it\'s over the max bubble container count"

    .line 221
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 226
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 228
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 229
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v2}, Landroid/app/ActivityManager;->setTaskWindowingMode(IIZ)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->notifyItemAdded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method addItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->loadItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method

.method addItem(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->hasSameNotificationKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] This item already exists, do nothing item="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleContainerManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->loadItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method

.method animationCompleted(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 3

    .line 178
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ItemController] animationCompleted: item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] animationCompleted failed item(="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is not in list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->animationCompleted()V

    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->publishItemIfNeeded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method

.method countPublishedItem()I
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 273
    invoke-virtual {v1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->isPublishCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method destroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 82
    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    return-void
.end method

.method forceCompleteAnimationOfAllItems()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 191
    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->animationCompleted(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getItemById(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
    .locals 2

    .line 285
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 286
    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
    .locals 2

    .line 294
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 295
    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getItemByPosition(I)Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    return-object p0
.end method

.method iconLoadCompleted(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 3

    .line 196
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ItemController] iconLoadCompleted: item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] iconLoadCompleted failed item(="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is not in list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->iconLoadCompleted()V

    .line 204
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->publishItemIfNeeded(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method

.method init(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;)V
    .locals 7

    .line 70
    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    .line 73
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 74
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public synthetic lambda$loadItem$0$BubbleContainerItemController(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->loadShowingIcon(Landroid/content/Context;)V

    .line 119
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mH:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 120
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] IconInfo is Loaded: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BubbleContainerManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method launchItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 10

    .line 238
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    const-string v1, "BubbleContainerManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ItemController] launchItem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 242
    instance-of v0, p1, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 243
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 v0, 0x5

    .line 244
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 246
    invoke-virtual {p0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 249
    :try_start_0
    check-cast p1, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewItem;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v2, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 250
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 249
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "[ItemController] pendingIntent.send()"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p0, :cond_2

    const-string p0, "2004"

    const-string p1, "Smart pop up view"

    .line 253
    invoke-static {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 258
    :try_start_1
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 265
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "2201"

    .line 266
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method loadItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerItemController$oVTgWcBJMAdgh_Hat298-03RBhw;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$BubbleContainerItemController$oVTgWcBJMAdgh_Hat298-03RBhw;-><init>(Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method rebuildAllItems()V
    .locals 3

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;

    .line 132
    invoke-virtual {v2}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->unsetIconLoadCompleted()V

    .line 133
    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->addItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 2

    .line 138
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ItemController] Run removeItem, item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubbleContainerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->isPublishCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->notifyItemRemoved(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    :cond_1
    return-void
.end method

.method throwAwayAllItems()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFreeformTasks(I)Z

    .line 164
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mViewController:Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerViewController;->removeAllIconViews()V

    .line 167
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->countPublishedItem()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const-string p0, "2212"

    .line 169
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "2202"

    .line 171
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;)V

    .line 174
    :cond_1
    :goto_0
    sget-boolean p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "BubbleContainerManager"

    const-string v0, "[ItemController] removeFreeformTasks runnable is finished"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method throwAwayItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V
    .locals 3

    .line 148
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_0

    const-string v0, "2223"

    .line 149
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->insertLogForMW(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;->getTaskId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    .line 156
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerItemController;->removeItem(Lcom/samsung/android/systemui/minimizecontainer/MinimizeContainerItem;)V

    return-void
.end method
