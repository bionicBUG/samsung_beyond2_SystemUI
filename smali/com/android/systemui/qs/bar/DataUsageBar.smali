.class public Lcom/android/systemui/qs/bar/DataUsageBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "DataUsageBar.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DataUsageBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "DataUsageBar"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    .line 65
    new-instance v0, Lcom/android/systemui/qs/bar/DataUsageBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/DataUsageBar$1;-><init>(Lcom/android/systemui/qs/bar/DataUsageBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.statusbar.ANIMATING"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/DataUsageBar;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/bar/DataUsageBar;)Lcom/android/systemui/qs/DataUsageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    return-object p0
.end method

.method private getBarVisibility()Z
    .locals 2

    .line 95
    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result p0

    .line 96
    sget-boolean v0, Lcom/android/systemui/qs/bar/DataUsageBar;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBarVisibility activeSimCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataUsageBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateVisibility()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->getBarVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_2

    .line 109
    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getBarHeight()I
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->data_usage_view_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_bar_data_usage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->data_usage_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/DataUsageView;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateVisibility()V

    .line 62
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 120
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_DATAUSAGE:Z

    return p0
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->HeaderSettingsTint:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
