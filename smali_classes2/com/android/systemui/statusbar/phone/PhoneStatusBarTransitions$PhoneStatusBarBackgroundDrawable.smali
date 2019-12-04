.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;
.super Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.source "PhoneStatusBarTransitions.java"

# interfaces
.implements Lcom/android/systemui/qs/panelcolor/PanelColorAssistant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStatusBarBackgroundDrawable"
.end annotation


# instance fields
.field private mBarBackgroundDrawableAlpha:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;Landroid/content/Context;I)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    return-void
.end method


# virtual methods
.method public getBarBackgroundDrawableColoringColor(I)I
    .locals 2

    .line 147
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    .line 148
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isFullyPanelBackgroundOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needToGetQSColoringColor()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions$PhoneStatusBarBackgroundDrawable;->mBarBackgroundDrawableAlpha:F

    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
