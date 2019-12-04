.class public Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomDetailAdapter"
.end annotation


# instance fields
.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mService:Landroid/service/quicksettings/IQSTileService;

.field final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/IQSTileService;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    new-instance p1, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 826
    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    return-void
.end method

.method private shouldBeUnlock(Z)Z
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$1000(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$1000(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    return v1

    .line 953
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->access$1000(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 868
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    .line 873
    :cond_0
    :try_start_0
    invoke-interface {p2}, Landroid/service/quicksettings/IQSTileService;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 874
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$200(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDetailView remoteViews = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    return-object p3

    .line 878
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 879
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p2, p1, v0, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object p0

    .line 880
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p3
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x10c

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 890
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 894
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 831
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 836
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->access$100(Lcom/android/systemui/qs/external/CustomTile;)Z

    move-result p0

    return p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 851
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public synthetic lambda$setToggleState$0$CustomTile$CustomDetailAdapter()V
    .locals 1

    .line 918
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->setToggleState(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v0, :cond_0

    return-void

    .line 906
    :cond_0
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 907
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->access$300(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 909
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->access$400(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setToggleState blocked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 913
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->shouldBeUnlock(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$500(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 915
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->access$600(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 917
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$CustomDetailAdapter$oEx1JRBFVqbcEE5me07NZWI0yA8;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$CustomDetailAdapter$oEx1JRBFVqbcEE5me07NZWI0yA8;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 920
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 926
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$700(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 927
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$700(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 928
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 930
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->access$800(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToggleState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0, p1}, Landroid/service/quicksettings/IQSTileService;->semSetToggleButtonChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 938
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    const/4 p1, 0x0

    const-string/jumbo v0, "toggle"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/qs/external/CustomTile;->access$900(Lcom/android/systemui/qs/external/CustomTile;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
