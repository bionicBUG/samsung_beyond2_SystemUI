.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorCoverManager"
.end annotation


# instance fields
.field private mClearCoverDefaultSidePadding:I

.field private mNeedToApplyForCoverPaddings:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 563
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mNeedToApplyForCoverPaddings:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;)V
    .locals 0

    .line 562
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    return-void
.end method


# virtual methods
.method public getDefaultSidePadding()I
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mNeedToApplyForCoverPaddings:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mClearCoverDefaultSidePadding:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateCoverMargin(IZ)V
    .locals 2

    .line 571
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mNeedToApplyForCoverPaddings:Z

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    .line 577
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mNeedToApplyForCoverPaddings:Z

    goto :goto_0

    .line 574
    :cond_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mNeedToApplyForCoverPaddings:Z

    .line 580
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mNeedToApplyForCoverPaddings:Z

    if-eq p1, v0, :cond_1

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCoverMargin() prvCovered:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " >>> mNeedToApplyForCoverPaddings:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mNeedToApplyForCoverPaddings:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", getDefaultSidePadding():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->getDefaultSidePadding()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneStatusBarView"

    .line 581
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->getDefaultSidePadding()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)V

    :cond_1
    return-void
.end method

.method public updateResources()V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->clear_cover_status_bar_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$IndicatorCoverManager;->mClearCoverDefaultSidePadding:I

    return-void
.end method
