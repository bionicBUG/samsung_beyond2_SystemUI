.class public Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;
.super Lcom/android/systemui/qs/panelcolor/PanelColorModel;
.source "PanelColorQSColoringModel.java"


# instance fields
.field public final NotiBg:I

.field public final NotiOpaqueBg:I

.field public final NotiPrimary:I

.field public final NotiText:I

.field public final NsslBg:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 3

    move-object v0, p0

    .line 29
    invoke-direct/range {p0 .. p33}, Lcom/android/systemui/qs/panelcolor/PanelColorModel;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    .line 38
    const-class v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v2, 0x65

    invoke-interface {v1, v2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NsslBg:I

    .line 39
    const-class v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v2, 0x66

    invoke-interface {v1, v2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiPrimary:I

    .line 40
    const-class v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v2, 0x67

    invoke-interface {v1, v2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiText:I

    .line 41
    const-class v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v2, 0x68

    invoke-interface {v1, v2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiBg:I

    .line 42
    const-class v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    const/16 v2, 0x69

    invoke-interface {v1, v2}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/panelcolor/PanelColorQSColoringModel;->NotiOpaqueBg:I

    return-void
.end method
