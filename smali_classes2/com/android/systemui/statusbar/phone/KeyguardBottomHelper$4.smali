.class Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$4;
.super Ljava/lang/Object;
.source "KeyguardBottomHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAffordanceFalsingFactor()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$4;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLeftPreview()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxTranslationDistance()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 0

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$4;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRightPreview()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public needsAntiFalsing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAnimationToSideEnded()V
    .locals 0

    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 0

    return-void
.end method

.method public onAnimationToSideStarted(ZFFZZ)V
    .locals 0

    return-void
.end method

.method public onIconClicked(Z)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSwipingAborted()V
    .locals 0

    return-void
.end method

.method public onSwipingStarted(Z)V
    .locals 0

    return-void
.end method

.method public startPhoneLaunchAnimationInSecured()V
    .locals 0

    return-void
.end method

.method public userActivity()V
    .locals 0

    return-void
.end method
