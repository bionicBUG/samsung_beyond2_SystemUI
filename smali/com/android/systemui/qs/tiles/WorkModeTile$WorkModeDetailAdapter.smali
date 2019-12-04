.class final Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;
.super Ljava/lang/Object;
.source "WorkModeTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WorkModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkModeDetailAdapter"
.end annotation


# instance fields
.field containerName:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WorkModeTile;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "Work profile"

    .line 227
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->containerName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WorkModeTile;Lcom/android/systemui/qs/tiles/WorkModeTile$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WorkModeTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 243
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$600(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->sec_qs_detail_text:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 244
    sget p2, Lcom/android/systemui/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 245
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$100(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/samsung/android/knox/SemPersonaManager;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$700(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$300(Lcom/android/systemui/qs/tiles/WorkModeTile;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 247
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$100(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$300(Lcom/android/systemui/qs/tiles/WorkModeTile;)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->isProfileNameCustomized(I)Z

    move-result p3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$300(Lcom/android/systemui/qs/tiles/WorkModeTile;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v1

    or-int/2addr p3, v1

    if-eqz p3, :cond_1

    .line 250
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 251
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$800(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$string;->quick_settings_workmode_detail_summary_tablet:I

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p2, v2, v1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 253
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p3}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$900(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object p3

    sget v3, Lcom/android/systemui/R$string;->quick_settings_workmode_detail_summary:I

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p2, v2, v1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 257
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$1000(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$string;->quick_settings_workmode_detail_summary_tablet_work:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 259
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$1100(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$string;->quick_settings_workmode_detail_summary_work:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 262
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x101

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$100(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$100(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$200(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$300(Lcom/android/systemui/qs/tiles/WorkModeTile;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->containerName:Ljava/lang/String;

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$400(Lcom/android/systemui/qs/tiles/WorkModeTile;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->quick_settings_work_mode_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$500(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WorkModeTile;->access$1200(Lcom/android/systemui/qs/tiles/WorkModeTile;)Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/ManagedProfileController;->setWorkModeEnabled(Z)V

    .line 276
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WorkModeTile$WorkModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WorkModeTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->fireToggleStateChanged(Z)V

    return-void
.end method
