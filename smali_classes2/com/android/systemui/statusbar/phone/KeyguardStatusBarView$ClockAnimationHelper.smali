.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockAnimationHelper"
.end annotation


# instance fields
.field private mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mScrolledAmount:F

.field private mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 870
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;)V
    .locals 0

    .line 867
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "KeyguardStatusBarView state:"

    .line 912
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Clock TranslationAniamtor: "

    .line 913
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  Clock AlphaAnimator: "

    .line 914
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  Clock ScrolledAmount: "

    .line 915
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method public getClockVisibleWidth()I
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClock;->getTextMeasuredWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateAnimator()V
    .locals 6

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 885
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 889
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 890
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    neg-float v0, v0

    aput v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x0

    aput v5, v4, v0

    const-string v0, "translationX"

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    .line 891
    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    .line 892
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 893
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/policy/QSClock;

    move-result-object v1

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 894
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    .line 898
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateAnimatorAndPosition()V
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->updateAnimator()V

    .line 874
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->updatePosition(F)V

    return-void
.end method

.method public updatePosition(F)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mTranslationAniamtor:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 908
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$ClockAnimationHelper;->mScrolledAmount:F

    return-void
.end method
