.class public Lcom/android/systemui/bubbles/BubbleController;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;,
        Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;,
        Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;,
        Lcom/android/systemui/bubbles/BubbleController$DismissReason;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

.field private final mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

.field private final mContext:Landroid/content/Context;

.field private final mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

.field private final mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private mOrientation:I

.field private final mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

.field private mStackView:Lcom/android/systemui/bubbles/BubbleStackView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStateChangeListener:Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;

.field private mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 1
    .param p4    # Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    .line 430
    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$2;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    .line 470
    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$3;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 518
    new-instance v0, Lcom/android/systemui/bubbles/BubbleController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/bubbles/BubbleController$4;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    .line 224
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    .line 225
    iput-object p6, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 226
    iput-object p7, p0, Lcom/android/systemui/bubbles/BubbleController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 227
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance p6, Lcom/android/systemui/bubbles/BubbleController$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/bubbles/BubbleController$1;-><init>(Lcom/android/systemui/bubbles/BubbleController;)V

    invoke-interface {p1, p6}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 239
    invoke-interface {p5, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 241
    iput-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    .line 242
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/systemui/bubbles/BubbleData$Listener;

    invoke-virtual {p1, p3}, Lcom/android/systemui/bubbles/BubbleData;->setListener(Lcom/android/systemui/bubbles/BubbleData$Listener;)V

    .line 244
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 245
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 246
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mRemoveInterceptor:Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->setNotificationRemoveInterceptor(Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;)V

    .line 248
    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 249
    new-instance p1, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    .line 250
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 252
    new-instance p1, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    .line 253
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleController;->mTaskStackListener:Lcom/android/systemui/bubbles/BubbleController$BubbleTaskStackListener;

    invoke-virtual {p1, p3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 256
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$1;)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    :goto_0
    iput-object p4, p0, Lcom/android/systemui/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    const-string/jumbo p1, "statusbar"

    .line 263
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 262
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 215
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateStackViewForZenConfig()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->updateShowInShadeForSuppressNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->ensureStackViewCreated()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/bubbles/BubbleController;)Landroid/content/Context;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/Context;)Z
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->areBubblesEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    return-object p0
.end method

.method private static areBubblesEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "experiment_enable_bubbles"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static canLaunchInActivityView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    .line 847
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "BubbleController"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p0, "Unable to create bubble -- no intent"

    .line 851
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 855
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_2

    .line 857
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 861
    :cond_2
    iget v2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 862
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 866
    :cond_3
    iget v2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 867
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- activity is not documentLaunchMode=always for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 871
    :cond_4
    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr p0, v2

    if-nez p0, :cond_5

    .line 872
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send as bubble -- activity is not embeddable for intent: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private ensureStackViewCreated()V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/bubbles/BubbleData;Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getStatusBarView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 276
    sget v1, Lcom/android/systemui/R$id;->scrim_behind:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 277
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bubbles/BubbleController;->updateStackViewForZenConfig()V

    :cond_1
    return-void
.end method

.method public static isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 760
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 761
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 762
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method private static shouldAutoBubbleAll(Landroid/content/Context;)Z
    .locals 2

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "experiment_autobubble_all"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static shouldAutoBubbleMessages(Landroid/content/Context;)Z
    .locals 2

    .line 799
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "experiment_autobubble_messaging"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static shouldAutoBubbleOngoing(Landroid/content/Context;)Z
    .locals 2

    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "experiment_autobubble_ongoing"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateShowInShadeForSuppressNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 730
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 732
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/bubbles/BubbleController;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    .line 733
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setShowInShadeWhenBubble(Z)V

    return-void
.end method

.method private updateStackViewForZenConfig()V
    .locals 7

    .line 607
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 609
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v1, :cond_0

    goto :goto_6

    .line 613
    :cond_0
    iget v0, v0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    .line 621
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/bubbles/BubbleController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v3

    .line 623
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {v6, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->setSuppressNewDot(Z)V

    .line 625
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v5, :cond_6

    if-nez v4, :cond_7

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move v2, v3

    :cond_7
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/bubbles/BubbleStackView;->setSuppressFlyout(Z)V

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public collapseStack()V
    .locals 1

    .line 360
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method dismissStack(I)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->dismissAll(I)V

    return-void
.end method

.method public expandStackAndSelectBubble(Ljava/lang/String;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    .line 382
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method public getExpandedDisplayId(Landroid/content/Context;)I
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 678
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/systemui/bubbles/Bubble;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 682
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getPanelExpanded()Z

    move-result p0

    if-nez p0, :cond_2

    .line 683
    iget-object p0, v0, Lcom/android/systemui/bubbles/Bubble;->expandedView:Lcom/android/systemui/bubbles/BubbleExpandedView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleExpandedView;->getVirtualDisplayId()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method getStackView()Lcom/android/systemui/bubbles/BubbleStackView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 690
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    return-object p0
.end method

.method public getTouchableRegion()Landroid/graphics/Rect;
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 667
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mTempRect:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasBubbles()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 339
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbles()Z

    move-result p0

    return p0
.end method

.method public isStackExpanded()Z
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleData;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setExpandListener$0$BubbleController(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 322
    invoke-interface {p1, p2, p3}, Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBubbleExpanded(Z)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->onOrientationChanged()V

    .line 305
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mOrientation:I

    :cond_0
    return-void
.end method

.method public onOverlayChanged()V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->onThemeChanged()V

    :cond_0
    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->onThemeChanged()V

    :cond_0
    return-void
.end method

.method public performBackPressIfNeeded()V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->performBackPressIfNeeded()Z

    :cond_0
    return-void
.end method

.method removeBubble(Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    iget-object p1, p1, Lcom/android/systemui/bubbles/Bubble;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    :cond_0
    return-void
.end method

.method selectBubble(Lcom/android/systemui/bubbles/Bubble;)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->setSelectedBubble(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method selectBubble(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleController;->selectBubble(Lcom/android/systemui/bubbles/Bubble;)V

    return-void
.end method

.method public setBubbleStateChangeListener(Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStateChangeListener:Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;

    return-void
.end method

.method public setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V
    .locals 1

    .line 320
    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$B9Rf-8Lqgsvsjhuncdnt9rJlYfA;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$B9Rf-8Lqgsvsjhuncdnt9rJlYfA;-><init>(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    .line 326
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz p1, :cond_0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mExpandListener:Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bubbles/BubbleStackView;->setExpandListener(Lcom/android/systemui/bubbles/BubbleController$BubbleExpandListener;)V

    :cond_0
    return-void
.end method

.method protected shouldAutoBubbleForFlags(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 698
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubbleDismissed()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 701
    :cond_0
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 703
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->shouldAutoBubbleMessages(Landroid/content/Context;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 704
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->shouldAutoBubbleOngoing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 705
    :goto_1
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->shouldAutoBubbleAll(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    .line 708
    :goto_2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_5

    .line 709
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v4, v3

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 710
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v6

    if-eqz v6, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v3, v0

    .line 716
    :goto_4
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v5, "call"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 717
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_5

    :cond_6
    move v4, v0

    .line 718
    :goto_5
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    move v4, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v4, v1

    .line 721
    :goto_7
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v5

    .line 722
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v6, "msg"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 723
    const-class v6, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz p0, :cond_9

    if-nez v3, :cond_a

    :cond_9
    if-eqz v5, :cond_b

    :cond_a
    if-nez p2, :cond_d

    :cond_b
    if-eqz v4, :cond_c

    if-nez v2, :cond_d

    :cond_c
    if-eqz p1, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    return v0
.end method

.method updateBubble(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 410
    iget v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setInterruption()V

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mBubbleData:Lcom/android/systemui/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public updateStack()V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarStateListener:Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController$StatusBarStateListener;->getCurrentState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    if-eqz v0, :cond_3

    .line 645
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 649
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getBubblesShowing()Z

    move-result v0

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleController;->hasBubbles()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 651
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setBubblesShowing(Z)V

    .line 652
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController;->mStateChangeListener:Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;

    if-eqz v2, :cond_5

    if-eq v0, v1, :cond_5

    .line 653
    invoke-interface {v2, v1}, Lcom/android/systemui/bubbles/BubbleController$BubbleStateChangeListener;->onHasBubblesChanged(Z)V

    .line 656
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController;->mStackView:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->updateContentDescription()V

    return-void
.end method
