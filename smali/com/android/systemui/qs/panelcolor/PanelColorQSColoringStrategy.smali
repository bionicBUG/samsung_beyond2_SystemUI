.class public Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringStrategy;
.super Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;
.source "PanelColorQSColoringStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;-><init>()V

    return-void
.end method

.method private makeQuickStarModel()Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;
    .locals 36

    .line 38
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/4 v1, 0x0

    .line 39
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v29

    move/from16 v3, v29

    const/4 v1, 0x1

    .line 40
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    move v10, v1

    move/from16 v20, v1

    move/from16 v35, v1

    move/from16 v23, v1

    move v4, v1

    move/from16 v30, v1

    move/from16 v31, v1

    const/4 v1, 0x2

    .line 41
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    move/from16 v18, v1

    move/from16 v17, v1

    move v11, v1

    move v15, v1

    const/4 v1, 0x3

    .line 42
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    const/4 v1, 0x4

    .line 43
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    const/4 v1, 0x5

    .line 44
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    const/4 v1, 0x6

    .line 45
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    const/16 v1, 0xb

    .line 47
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    move/from16 v34, v1

    move v14, v1

    move/from16 v25, v1

    move/from16 v27, v1

    const/16 v1, 0xc

    .line 48
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v12

    const/16 v1, 0x15

    .line 49
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    move/from16 v16, v1

    move/from16 v26, v1

    move/from16 v24, v1

    const/16 v1, 0x16

    .line 50
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v13

    const/16 v1, 0x1f

    .line 51
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    move v7, v1

    move v6, v1

    move v5, v1

    const/16 v1, 0x20

    .line 52
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    const/16 v1, 0x29

    .line 53
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    move v9, v1

    move v8, v1

    const/16 v1, 0x2a

    .line 54
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v33

    const/16 v1, 0x33

    .line 55
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v19

    const/16 v1, 0x34

    .line 56
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v32

    const/16 v1, 0x35

    .line 57
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    const/16 v1, 0x36

    .line 58
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v28

    const/16 v1, 0x37

    .line 60
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v21

    const/16 v1, 0x38

    .line 61
    invoke-interface {v0, v1}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v22

    .line 63
    new-instance v0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;

    move-object v2, v0

    invoke-direct/range {v2 .. v35}, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-object v0
.end method


# virtual methods
.method public loadCommonColors(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/panelcolor/PanelColorModel;
    .locals 2

    const-string p1, "[QuickStar]PanelColorQSColoringStrategy"

    const-string v0, "loadCommonColors()"

    .line 19
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-direct {p0}, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringStrategy;->makeQuickStarModel()Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 22
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    iget v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NsslBg:I

    const-string v1, "qs_coloring_nssl_background_color"

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->writeSettingValue(Ljava/lang/String;I)V

    .line 23
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    iget v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiPrimary:I

    const-string v1, "qs_coloring_notification_primary_color"

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->writeSettingValue(Ljava/lang/String;I)V

    .line 24
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    iget v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiText:I

    const-string v1, "qs_coloring_notification_text_color"

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->writeSettingValue(Ljava/lang/String;I)V

    .line 25
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    iget v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiBg:I

    const-string v1, "qs_coloring_notification_background_color"

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->writeSettingValue(Ljava/lang/String;I)V

    .line 26
    const-class p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    iget v0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiOpaqueBg:I

    const-string v1, "qs_coloring_notification_background_opaque_color"

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->writeSettingValue(Ljava/lang/String;I)V

    :cond_0
    return-object p0
.end method

.method public updateCommonColorDraw(Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/qs/panelcolor/PanelColorStrategy;->mColorModel:Lcom/android/systemui/qs/panelcolor/PanelColorModel;

    if-nez p0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const-class p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->updateCommonColorDraw(Landroid/view/ViewGroup;I)V

    :cond_1
    :goto_0
    return-void
.end method
