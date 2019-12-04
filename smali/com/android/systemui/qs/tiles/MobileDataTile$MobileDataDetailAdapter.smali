.class final Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileDataDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Lcom/android/systemui/qs/tiles/MobileDataTile$1;)V
    .locals 0

    .line 692
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method

.method private getSummary(Z)Ljava/lang/String;
    .locals 2

    .line 769
    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_data_detail_summary:I

    .line 770
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_OFF_POPUP:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 772
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_ATT_POPUP:Z

    if-eqz p1, :cond_0

    .line 773
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_att:I

    goto :goto_1

    .line 774
    :cond_0
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_DCM_POPUP:Z

    if-eqz p1, :cond_1

    .line 775
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_dcm:I

    goto :goto_1

    .line 777
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable:I

    goto :goto_1

    .line 779
    :cond_2
    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v1, :cond_8

    if-eqz p1, :cond_5

    .line 781
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz p1, :cond_3

    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_lgt:I

    :goto_0
    move v0, p1

    goto :goto_1

    .line 782
    :cond_3
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_KTT_POPUP:Z

    if-eqz p1, :cond_4

    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor_kt:I

    goto :goto_0

    .line 783
    :cond_4
    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_popup_disable_kor:I

    goto :goto_0

    .line 785
    :cond_5
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_LGT_POPUP:Z

    if-eqz p1, :cond_6

    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor_lgt:I

    goto :goto_0

    .line 786
    :cond_6
    sget-boolean p1, Lcom/android/systemui/Rune;->QPANEL_IS_KTT_POPUP:Z

    if-eqz p1, :cond_7

    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor_kt:I

    goto :goto_0

    .line 787
    :cond_7
    sget p1, Lcom/android/systemui/R$string;->mobile_data_show_popup_enable_kor:I

    goto :goto_0

    .line 790
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 708
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qs_detail_text:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 709
    sget p2, Lcom/android/systemui/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 710
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_data_roaming_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 698
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_mobile_data_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$setToggleState$0$MobileDataTile$MobileDataDetailAdapter()V
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->setToggleState(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 3

    .line 722
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    .line 723
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isMobileDataTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2200(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 725
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    goto/16 :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 732
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 733
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 734
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 736
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_IS_KOREA_POPUP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isMobileDataConnectionPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    .line 739
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2900(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/tiles/-$$Lambda$MobileDataTile$MobileDataDetailAdapter$V8IhyI9_v3vUy2OXi2923Tz354g;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$MobileDataTile$MobileDataDetailAdapter$V8IhyI9_v3vUy2OXi2923Tz354g;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 742
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    .line 744
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_ON_OFF_POPUP_FOR_KOR:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    .line 746
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    xor-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3100(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)V

    .line 747
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    goto :goto_0

    .line 748
    :cond_3
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_MOBILE_DATA_NOT_DISABLE_VOLTE_CALL:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 749
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 750
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3200(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->mobile_data_show_toast_not_disable_during_voltecall:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 751
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 752
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    goto :goto_0

    .line 754
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/settingslib/net/DataUsageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->getSummary(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNetworkRoaming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/mIsVoLteCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toggle"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$3300(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
