.class Lcom/android/systemui/statusbar/phone/StatusBar$6;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onActiveStateChanged(IILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$active:Z

.field final synthetic val$code:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;IILjava/lang/String;Z)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$code:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$uid:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$packageName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$code:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$uid:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$packageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$active:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/ForegroundServiceController;->onAppOpChanged(IILjava/lang/String;Z)V

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/NotificationListController;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$code:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$uid:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$packageName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->val$active:Z

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/NotificationListController;->updateNotificationsForAppOp(IILjava/lang/String;Z)V

    return-void
.end method
