.class Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;
.super Ljava/lang/Object;
.source "KeyguardBottomHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startHintAnimation(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

.field final synthetic val$otherView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;->val$otherView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;->val$otherView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$AlphaInterpolater;

    move-result-object v5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const-wide/16 v3, 0x226

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method
