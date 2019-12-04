.class public Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
.super Ljava/lang/Object;
.source "MultiWindowManagerProxy.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;


# instance fields
.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;-><init>()V

    sput-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->sInstance:Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerDividerCloseEventListener(Lcom/samsung/android/multiwindow/IDividerCloseEventListener;)V

    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    return-void
.end method

.method public setCustomDensityEnabled(Z)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setCustomDensityEnabled(Z)V

    return-void
.end method

.method public setPreQMultiResumeInProcessEnabled(Z)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setPreQMultiResumeInProcessEnabled(Z)V

    return-void
.end method
