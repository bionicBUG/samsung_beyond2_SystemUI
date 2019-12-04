.class Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationIconAreaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field final synthetic val$iv:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->val$iv:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 595
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$2;->val$iv:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)I

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method
