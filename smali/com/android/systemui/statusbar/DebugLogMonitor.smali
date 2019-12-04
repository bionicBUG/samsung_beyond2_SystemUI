.class public Lcom/android/systemui/statusbar/DebugLogMonitor;
.super Ljava/lang/Object;
.source "DebugLogMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DebugLogMonitor$MessageObject;
    }
.end annotation


# static fields
.field private static final ENG:Z

.field private static final PANEL_BAR_TRACE_LOG_MAX_NUMBER:I

.field private static final PANEL_VIEW_EXPAND_COLLAPSE_LOG_MAX_COUNT:I

.field private static final TOUCH_LOG_MAX_NUMBER:I

.field private static final mDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mBlockTouchLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private mHandler:Landroid/os/Handler;

.field private mPanelBarTraceLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewAlphaLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelViewVisibilityLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTouchLogArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    .line 34
    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    const/16 v1, 0x3e8

    const/16 v2, 0x1f4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->TOUCH_LOG_MAX_NUMBER:I

    .line 37
    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    goto :goto_1

    :cond_1
    const/16 v0, 0x1e

    :goto_1
    sput v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANEL_VIEW_EXPAND_COLLAPSE_LOG_MAX_COUNT:I

    .line 39
    sget-boolean v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->ENG:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput v1, Lcom/android/systemui/statusbar/DebugLogMonitor;->PANEL_BAR_TRACE_LOG_MAX_NUMBER:I

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mTouchLogArray:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelBarTraceLogArray:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewVisibilityLogArray:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewAlphaLogArray:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mPanelViewExpandCollapseLogArray:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mSecurityLogArray:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBlockTouchLogArray:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor$1;

    sget-object v1, Lcom/android/systemui/Dependency;->DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/DebugLogMonitor$1;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DebugLogMonitor$2;-><init>(Lcom/android/systemui/statusbar/DebugLogMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddTouchDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelBarTraceDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewVisibilityDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewAlphaDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddPanelViewExpandCollapseDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/DebugLogMonitor;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddSecurityDebugLogs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/DebugLogMonitor;Landroid/os/Message;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/DebugLogMonitor;->handleAddBlockTouchDebugLogs(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/DebugLogMonitor;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DebugLogMonitor;->mBootCompleted:Z

    return p1
.end method

.method private dumpBlockTouchDebugLogs(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method private dumpPanelBarTrace(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method private dumpPanelViewTrace(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method private dumpSecurityLog(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method private dumpTouch(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method private handleAddBlockTouchDebugLogs(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method private handleAddPanelBarTraceDebugLogs(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method private handleAddPanelViewAlphaDebugLogs(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method private handleAddPanelViewExpandCollapseDebugLogs(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method private handleAddPanelViewVisibilityDebugLogs(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method private handleAddSecurityDebugLogs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private handleAddTouchDebugLogs(Landroid/os/Message;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 277
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpTouch(Ljava/io/PrintWriter;)V

    .line 278
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelBarTrace(Ljava/io/PrintWriter;)V

    .line 279
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpPanelViewTrace(Ljava/io/PrintWriter;)V

    .line 280
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpSecurityLog(Ljava/io/PrintWriter;)V

    .line 281
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->dumpBlockTouchDebugLogs(Ljava/io/PrintWriter;)V

    return-void
.end method
