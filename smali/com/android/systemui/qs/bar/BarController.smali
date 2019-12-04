.class public Lcom/android/systemui/qs/bar/BarController;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/BarController$BarItemCallback;
    }
.end annotation


# static fields
.field public static final BAR_ITEM_TAG:Ljava/lang/String; = "BarItem"

.field private static final TAG:Ljava/lang/String; = "QSBarController"


# instance fields
.field private mBars:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/bar/BarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

.field private mContext:Landroid/content/Context;

.field private mDebugLogStore:Lcom/android/systemui/util/DebugLogStore;

.field private mKeyguardShowing:Z

.field private mOnTopQSBarsHeight:I

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsDisabled:Z

.field private mQsPanel:Landroid/view/ViewGroup;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mKeyguardShowing:Z

    .line 74
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 77
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 78
    const-class p1, Lcom/android/systemui/util/DebugLogStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DebugLogStore;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mDebugLogStore:Lcom/android/systemui/util/DebugLogStore;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->calculateOnTopBarsHeight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController$BarItemCallback;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    return-object p0
.end method

.method private addAllBarItems()V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItem;

    .line 182
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/bar/BarItem;->inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string v3, "BarItem"

    .line 183
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->clearCallback()V

    .line 186
    new-instance v3, Lcom/android/systemui/qs/bar/BarController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/BarController$1;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    invoke-interface {v1, v3}, Lcom/android/systemui/qs/bar/BarItem;->setCallback(Lcom/android/systemui/qs/bar/BarItem$Callback;)V

    .line 208
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    move v1, v5

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v5, v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v3, :cond_1

    move v1, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 217
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private calculateOnTopBarsHeight()V
    .locals 4

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    iput v1, p0, Lcom/android/systemui/qs/bar/BarController;->mOnTopQSBarsHeight:I

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/bar/BarItem;

    .line 240
    invoke-interface {v2}, Lcom/android/systemui/qs/bar/BarItem;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 241
    invoke-interface {v2}, Lcom/android/systemui/qs/bar/BarItem;->getBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 244
    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/bar/BarController;->mOnTopQSBarsHeight:I

    return-void
.end method

.method private createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItem;
    .locals 7

    const-string v0, "QSBarController"

    const/4 v1, 0x0

    .line 138
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.systemui.qs.bar."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createBar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 141
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 142
    iget-object v4, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/bar/BarItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/bar/BarItem;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v2, v1

    .line 146
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v2
.end method

.method static synthetic lambda$onPanelColorChanged$0(Lcom/android/systemui/qs/bar/BarItem;Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 0

    .line 312
    check-cast p0, Lcom/android/systemui/qs/bar/BarItemImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V

    return-void
.end method

.method private loadBarSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ","

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private removeAllBarItems()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "BarItem"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 168
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move v0, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 176
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/BarItem;->clearCallback()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private replaceAllBarItems()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->removeAllBarItems()V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->addAllBarItems()V

    return-void
.end method

.method private updateBarHeight()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->calculateOnTopBarsHeight()V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 278
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 279
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disable : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "QSBarController"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->updateBarHeight()V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast p0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->initLasExpansionHeight()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 302
    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/qs/bar/BarItem;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;
    .locals 2

    .line 319
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 320
    instance-of v1, v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiSimBar()Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
    .locals 2

    .line 326
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 327
    instance-of v1, v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOnTopBarsHeight()I
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/bar/BarController;->mOnTopQSBarsHeight:I

    :goto_0
    return p0
.end method

.method public getQSBarsTranslation()I
    .locals 2

    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/bar/BarController;->mOnTopQSBarsHeight:I

    :goto_0
    return v1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 271
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 272
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 3

    .line 309
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    if-eqz v0, :cond_1

    .line 311
    instance-of v1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;

    if-eqz v1, :cond_1

    .line 312
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/bar/-$$Lambda$BarController$0Ujiah4pxcGveeoegbbyi1hJDRA;

    invoke-direct {v2, v0, p1}, Lcom/android/systemui/qs/bar/-$$Lambda$BarController$0Ujiah4pxcGveeoegbbyi1hJDRA;-><init>(Lcom/android/systemui/qs/bar/BarItem;Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public refreshBarList()V
    .locals 9

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    sget v1, Lcom/android/systemui/R$string;->quick_bar_list_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bar specs newValue :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QSBarController"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/BarController;->loadBarSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bar specs :  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(available list) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "barSpec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/bar/BarItem;

    if-nez v5, :cond_1

    .line 110
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/bar/BarController;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItem;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating tile for spec: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-eqz v5, :cond_0

    const-string v6, "bar != null"

    .line 116
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/systemui/qs/bar/BarItem;->isAvailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v5}, Lcom/android/systemui/qs/bar/BarItem;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_2
    invoke-interface {v5}, Lcom/android/systemui/qs/bar/BarItem;->destroy()V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mDebugLogStore:Lcom/android/systemui/util/DebugLogStore;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QSBarItem"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/util/DebugLogStore;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->replaceAllBarItems()V

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/BarController;->updateBarHeight()V

    return-void
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarController;->mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/bar/BarController$BarItemCallback;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mCallback:Lcom/android/systemui/qs/bar/BarController$BarItemCallback;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 286
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 287
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->setExpanded(Z)V

    .line 288
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/BarItem;->isListening()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/BarItem;->getType()I

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v0}, Lcom/android/systemui/qs/bar/BarItem;->getBarView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setExpandedPosition(F)V
    .locals 1

    .line 227
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItem;

    .line 228
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/bar/BarItem;->setPosition(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 297
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarController;->mKeyguardShowing:Z

    return-void
.end method

.method public setQS(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 257
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast p1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFragment;->getQsPanel()Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Landroid/view/ViewGroup;

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController;->refreshBarList()V

    return-void
.end method
